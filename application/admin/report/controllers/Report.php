<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends MY_Controller
{
	private $data = array();

	public function  __construct()
	{
		parent::__construct();
		$this->load->model(array("Report_model","client_site/Client_site_model"));
		$this->load->helper(array("cetak_report_helper"));
		// kick if session is expired
		if(empty(get_admin_session())) {
			$this->session->set_flashdata('error_message', alert_success('Session expired'));
			redirect('company');
		}

		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);
		$this->data['html_css'] = '
			<style>
				.modal.modal-wide .modal-dialog {
				  width: 90%;
				}
				.modal-wide .modal-body {
				  overflow-y: auto;
				}

				#exampleModalDownload .modal-body p { margin-bottom: 900px }
			</style>
		';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();

					// datagrid
					var dg = $("#dg")
					dg.datagrid({
					  pagination:true,
					  remoteFilter:true
					});
					dg.datagrid("enableFilter");
					dg.datagrid("removeFilterRule", "VESSEL_NAME");

				});
				
				$(function(){
				  $(\'#dg\').datagrid({
					data: data,
					singleSelect: true,
					onRowContextMenu: function(e,index,row){
					  $(this).datagrid(\'selectRow\',index);
					  e.preventDefault();
					  $(\'#mm\').menu(\'show\', {
						left:e.pageX,
						top:e.pageY
					  });
					}
				  })
				})
			</script>';
	}

	public function index()
	{
        $query_site = $this->Client_site_model->get_item_by_id($this->input->post("site_id"));
        if($query_site->num_rows() > 0) {
			/* clear session before */
			$this->session->unset_userdata('site_id');
			$this->session->unset_userdata('site_name');

        	foreach($query_site->result() as $row) {
        		$this->session->set_userdata('site_id',$row->CLIENT_SITE_ID);
        		$this->session->set_userdata('site_name',$row->CLIENT_SITE_NAME);
        	}
        }

        $this->data['site_id']     = $this->session->userdata("site_id");
        $this->data['site_name']   = $this->session->userdata("site_name");

		$this->load->view('admin/header',$this->data);
		$this->load->view('report',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function list_rest()
	{
		/* get datagrid limit offset */
		$page   = $this->input->post('page');
		$rows   = $this->input->post('rows');
		$offset = $page < 2 ? 1 : $page;
		$offset = ($rows * $offset) - $rows; 
		$filterRules = $this->input->post('filterRules');

		/* get query */
		$total = 0;
		$json_object = new stdClass();
		
		$query_items = @$this->Report_model->get_all_items($offset,$rows,$filterRules);
		$array_list  = array();
		if($query_items->num_rows() > 0) {
			foreach($query_items->result() as $row) {
				$row->KONTRAK = implode(", ",json_decode($row->KONTRAK));
				$row->SPK = implode(", ",json_decode($row->SPK));
				$row->SURVEYOR_IN_CHARGE = implode(", ",json_decode($row->SURVEYOR_IN_CHARGE));
				$row->CTIME  = date('d-m-Y H:i:s',strtotime($row->CTIME));
				$row->FUNGSI = '<a href="'.base_url().'index.php/report/detil/'.$row->FEFID.'" class="btn btn-success btn-xs"><i class="fa fa-eye"></i> Lihat</a> '; 
				$row->FUNGSI .= '<a href="javascript:;" onclick="callModal('.$row->FEFID.')" class="btn btn-success btn-xs"><i class="fa fa-print"></i> Cetak</a>'; 
				$row->PRODUCT_TYPE = ucfirst($row->PRODUCT_TYPE);
				$row->SELECT_CARGO = ucwords(str_replace("_", " ", $row->SELECT_CARGO));
				$array_list[] = $row;
			}
		}
		$json_object->rows = $array_list;
		$json_object->total = $this->Report_model->count_all_items($this->session->userdata("site_id"),$filterRules);

		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
	
	public function detil($id_item)
	{
        $query_site = $this->Client_site_model->get_item_by_id($this->input->post("site_id"));
        if($query_site->num_rows() > 0) {
        	foreach($query_site->result() as $row) {
        		$this->session->set_userdata('site_id',$row->CLIENT_SITE_ID);
        		$this->session->set_userdata('site_name',$row->CLIENT_SITE_NAME);
        	}
        }		
		$intervention=$this->Report_model->get_intervention($id_item);
		if($intervention->num_rows() > 0) {
        	foreach($intervention->result() as $row) {
        		$intervensi=$row->SELECT_INTERVENTION;		
        	}
        }
        //$intervensi = 16;
		switch($intervensi){
			case 14:	//product loading
				$tplreport='report_loading_detil';
				break;
			case 15:   //product discharge
				$tplreport='report_discharge_detil';
				break;
			case 16:   //crud bunker
				$tplreport='report_bunker_detil';
				break;
		}
		$this->data['onclick_report'] = "../cetak/$id_item"; // button report		
        $this->data['site_id']     = $this->session->userdata("site_id");
        $this->data['site_name']   = $this->session->userdata("site_name");
		$this->data['item']  = $this->Report_model->get_item_primary($id_item);
		$this->data['form_layout'] = 'list';
		$this->load->view('admin/header',$this->data);
		$this->load->view($tplreport,$this->data);
		$this->load->view('admin/footer',$this->data);
	}
	
	public function cetak($id_item)
	{
		$query_site = $this->Report_model->get_item_primary($id_item);
        if($query_site->num_rows() > 0) {
        	foreach($query_site->result() as $row) {
        		$kontrak=$row->KONTRAK;
				$area=$row->AREA;
				$vessel=$row->VESSEL;
				$voy=$row->VOY;
				$prodak=$row->PRODUCT;
				
				$lsd=$row->lsd;
				$surveyoric=$row->SURVEYOR_IN_CHARGE;
				$lcd=$row->lcd;
				$blsd=$row->blsd;


				$dva=($row->dva == '01/01/1970' ? '-' : $row->dva);
				$danchor=($row->danchor == '01/01/1970' ? '-' : $row->danchor);
				$danor=($row->danor == '01/01/1970' ? '-' : $row->danor);
				$dacept=($row->dacept == '01/01/1970' ? '-' : $row->dacept);
				$daber=($row->daber == '01/01/1970' ? '-' : $row->daber);
				$dasubord=($row->dasubord == '01/01/1970' ? '-' : $row->dasubord);
				$dkm=($row->dkm == '01/01/1970' ? '-' : $row->dkm);
				$dacomenc=($row->dacomenc == '01/01/1970' ? '-' : $row->dacomenc);
				$dacomplet=($row->dacomplet == '01/01/1970' ? '-' : $row->dacomplet);
				$daconmenced=($row->daconmenced == '01/01/1970' ? '-' : $row->daconmenced);
				$daconpleted=($row->daconpleted == '01/01/1970' ? '-' : $row->daconpleted);
				$dlomenced=($row->dlomenced == '01/01/1970' ? '-' : $row->dlomenced);
				$dlocomplet=($row->dlocomplet == '01/01/1970' ? '-' : $row->dlocomplet);
				$dahoconeted=($row->dahoconeted == '01/01/1970' ? '-' : $row->dahoconeted);
				$dasamcomened=($row->dasamcomened == '01/01/1970' ? '-' : $row->dasamcomened);
				$dasamcomplet=($row->dasamcomplet == '01/01/1970' ? '-' : $row->dasamcomplet);
				$damenced=($row->damenced == '01/01/1970' ? '-' : $row->damenced);
				$damencomplet=($row->damencomplet == '01/01/1970' ? '-' : $row->damencomplet);
				$dadoon=($row->dadoon == '01/01/1970' ? '-' : $row->dadoon);
				$davesa=($row->davesa == '01/01/1970' ? '-' : $row->davesa);
				$dapob=($row->dapob == '01/01/1970' ? '-' : $row->dapob);
				$daweigh=($row->daweigh == '01/01/1970' ? '-' : $row->daweigh);
				$daberth=($row->daberth == '01/01/1970' ? '-' : $row->daberth);
				$daiinpcomenc=($row->daiinpcomenc == '01/01/1970' ? '-' : $row->daiinpcomenc);
				$daiinpcomplet=($row->daiinpcomplet == '01/01/1970' ? '-' : $row->daiinpcomplet);
				$dasbdcomenced=($row->dasbdcomenced == '01/01/1970' ? '-' : $row->dasbdcomenced);
				$dasbdcomplete=($row->dasbdcomplete == '01/01/1970' ? '-' : $row->dasbdcomplete);
				$dadisccomenc=($row->dadisccomenc == '01/01/1970' ? '-' : $row->dadisccomenc);
				$dadiscomplet=($row->dadiscomplet == '01/01/1970' ? '-' : $row->dadiscomplet);
				$dahodis=($row->dahodis == '01/01/1970' ? '-' : $row->dahodis);
				$datankinscomenced=($row->datankinscomenced == '01/01/1970' ? '-' : $row->datankinscomenced);
				$datankinscomplete=($row->datankinscomplete == '01/01/1970' ? '-' : $row->datankinscomplete);
				$dasvylevesel=($row->dasvylevesel == '01/01/1970' ? '-' : $row->dasvylevesel);
				$dateveselsail=($row->dateveselsail == '01/01/1970' ? '-' : $row->dateveselsail);
				$TIME_VESSEL_ARRIVED=$row->TIME_VESSEL_ARRIVED;
				$TIME_ANCHORAGED=$row->TIME_ANCHORAGED;
				$TIME_NOR=$row->TIME_NOR;
				$TIME_ACCEPTED=$row->TIME_ACCEPTED;
				$TIME_BERTHED=$row->TIME_BERTHED;
				$TIME_SURVEYOR_ON_BOARD=$row->TIME_SURVEYOR_ON_BOARD;
				$TIME_KEY_MEETING=$row->TIME_KEY_MEETING;
				$TIME_COMMENCED=$row->TIME_COMMENCED;
				$TIME_COMPLETED=$row->TIME_COMPLETED;
				$TIME_CONNECTED_COMMENCED=$row->TIME_CONNECTED_COMMENCED;
				$TIME_CONNECTED_COMPLETED=$row->TIME_CONNECTED_COMPLETED;
				$TIME_LOADING_COMMENCED=$row->TIME_LOADING_COMMENCED;
				$TIME_LOADING_COMPLETED=$row->TIME_LOADING_COMPLETED;
				$TIME_HOSE_CONNECTED=$row->TIME_HOSE_CONNECTED;
				$TIME_SAMPLING_COMMENCED=$row->TIME_SAMPLING_COMMENCED;
				$TIME_SAMPLING_COMPLETED=$row->TIME_SAMPLING_COMPLETED;
				$TIME_MEASUREMENT_COMMENCED=$row->TIME_MEASUREMENT_COMMENCED;
				$TIME_MEASUREMENT_COMPLETED=$row->TIME_MEASUREMENT_COMPLETED;
				$TIME_DOCUMENTS_ONBOARD=$row->TIME_DOCUMENTS_ONBOARD;
				$TIME_VESSEL_SAILED=$row->TIME_VESSEL_SAILED;
				$remarks=$row->ACTIVITIES_REMARKS;
				$BL_QUANTITY_KLOBS=$row->BL_QUANTITY_KLOBS;
				$BL_QUANTITY_KL15=$row->BL_QUANTITY_KL15;
				$BL_QUANTITY_BBLS=$row->BL_QUANTITY_BBLS;
				$BL_QUANTITY_METRICTON=$row->BL_QUANTITY_METRICTON;
				$BL_QUANTITY_LONGTON=$row->BL_QUANTITY_LONGTON;
				$SL_GSV_KLOBS=$row->SL_GSV_KLOBS;
				$SL_GSV_KL15=$row->SL_GSV_KL15;
				$SL_GSV_BBLS=$row->SL_GSV_BBLS;
				$SL_GSV_METRICTON=$row->SL_GSV_METRICTON;
				$SL_GSV_LONGTON=$row->SL_GSV_LONGTON;
				$OBQ_QUANTITY_KLOBS=$row->OBQ_QUANTITY_KLOBS;
				$OBQ_QUANTITY_KL15=$row->OBQ_QUANTITY_KL15;
				$OBQ_QUANTITY_BBLS=$row->OBQ_QUANTITY_BBLS;
				$OBQ_QUANTITY_METRICTON=$row->OBQ_QUANTITY_METRICTON;
				$OBQ_QUANTITY_LONGTON=$row->OBQ_QUANTITY_LONGTON;
				$FWAL_KLOBS=$row->FWAL_KLOBS;
				$FWAL_KL15=$row->FWAL_KL15;
				$FWAL_BBLS=$row->FWAL_BBLS;
				$FWAL_METRICTON=$row->FWAL_METRICTON;
				$FWAL_LONGTON=$row->FWAL_LONGTON;
				$VEF_LOADING_BBLS=$row->VEF_LOADING_BBLS;
				$BL_15_DERAJAT_CELCIUS=$row->BL_15_DERAJAT_CELCIUS;
				$RN_NOTICE_ISSUE=$row->RN_NOTICE_ISSUE;
				$RN_LETTER_ISSUE=$row->RN_LETTER_ISSUE;
				$RN_STATEMENT_ISSUE=$row->RN_STATEMENT_ISSUE;
				$SAMPLE_SOURCE=$row->SAMPLE_SOURCE;
				$SC_ON_ARRIVAL_DRAFT_FWD=$row->SC_ON_ARRIVAL_DRAFT_FWD;
				$SC_ON_ARRIVAL_DRAFT_AFT=$row->SC_ON_ARRIVAL_DRAFT_AFT;
				$SC_ON_DEPARTURE_DRAFT_FWD=$row->SC_ON_DEPARTURE_DRAFT_FWD;
				$SC_ON_DEPARTURE_DRAFT_AFT=$row->SC_ON_DEPARTURE_DRAFT_AFT;
				$BO_MFO_ON_ARRIVAL=$row->BO_MFO_ON_ARRIVAL;
				$BO_MDO_ON_ARRIVAL=$row->BO_MDO_ON_ARRIVAL;
				$BO_MFO_ON_DEPARTURE=$row->BO_MFO_ON_DEPARTURE;
				$BO_MDO_ON_DEPARTURE=$row->BO_MDO_ON_DEPARTURE;

				$TIME_POB=$row->TIME_POB;
				$TIME_A_AWEIGH=$row->TIME_A_AWEIGH;
				$TIME_BERTHING=$row->TIME_BERTHING;
				$TIME_INPECTION_COMMENCED=$row->TIME_INPECTION_COMMENCED;
				$TIME_INSPECTION_COMPLETED=$row->TIME_INSPECTION_COMPLETED;
				$TIME_SBD_COMMENCED=$row->TIME_SBD_COMMENCED;
				$TIME_SBD_COMPLETED=$row->TIME_SBD_COMPLETED;
				$TIME_DISCHARGE_COMMENCED=$row->TIME_DISCHARGE_COMMENCED;
				$TIME_DISCHARGE_COMPLETED=$row->TIME_DISCHARGE_COMPLETED;
				$TIME_HOSE_DISCONNECTED=$row->TIME_HOSE_DISCONNECTED;
				$TIME_TANKS_INS_COMMENCED=$row->TIME_TANKS_INS_COMMENCED;
				$TIME_TANKS_INS_COMPLETED=$row->TIME_TANKS_INS_COMPLETED;
				$TIME_SVY_LEFT_VESSEL=$row->TIME_SVY_LEFT_VESSEL;
				$TIME_VESSEL_SAIL=$row->TIME_VESSEL_SAIL;

				$BL_SFAL_KLOBS=$row->BL_SFAL_KLOBS;
				$BL_SFAL_KL15=$row->BL_SFAL_KL15;
				$BL_SFAL_BBLS=$row->BL_SFAL_BBLS;
				$BL_SFAL_METRICTON=$row->BL_SFAL_METRICTON;
				$BL_SFAL_LONGTON=$row->BL_SFAL_LONGTON;
				$SF_SFAL_KLOBS=$row->SF_SFAL_KLOBS;
				$SF_SFAL_KL15=$row->SF_SFAL_KL15;
				$SF_SFAL_BBLS=$row->SF_SFAL_BBLS;
				$SF_SFAL_METRICTON=$row->SF_SFAL_METRICTON;
				$SF_SFAL_LONGTON=$row->SF_SFAL_LONGTON;
				$SFBD_TOV_KLOBS=$row->SFBD_TOV_KLOBS;
				$SFBD_TOV_KL15=$row->SFBD_TOV_KL15;
				$SFBD_TOV_BBLS=$row->SFBD_TOV_BBLS;
				$SFBD_TOV_METRICTON=$row->SFBD_TOV_METRICTON;
				$SFBD_TOV_LONGTON=$row->SFBD_TOV_LONGTON;
				$SFBD_GSV_KLOBS=$row->SFBD_GSV_KLOBS;
				$SFBD_GSV_KL15=$row->SFBD_GSV_KL15;
				$SFBD_GSV_BBLS=$row->SFBD_GSV_BBLS;
				$SFBD_GSV_METRICTON=$row->SFBD_GSV_METRICTON;
				$SFBD_GSV_LONGTON=$row->SFBD_GSV_LONGTON;
				$SFBD_GSV_KLOBS=$row->SFBD_GSV_KLOBS;
				$SFBD_GSV_KL15=$row->SFBD_GSV_KL15;
				$SFBD_GSV_BBLS=$row->SFBD_GSV_BBLS;
				$SFBD_GSV_METRICTON=$row->SFBD_GSV_METRICTON;
				$SFBD_GSV_LONGTON=$row->SFBD_GSV_LONGTON;
				$SFBD_GSV_KLOBS=$row->SFBD_GSV_KLOBS;
				$SFBD_GSV_KL15=$row->SFBD_GSV_KL15;
				$SFBD_GSV_BBLS=$row->SFBD_GSV_BBLS;
				$SFBD_GSV_METRICTON=$row->SFBD_GSV_METRICTON;
				$SFBD_GSV_LONGTON=$row->SFBD_GSV_LONGTON;
				$ROBQ_KLOBS=$row->ROBQ_KLOBS;
				$ROBQ_KL15=$row->ROBQ_KL15;
				$ROBQ_BBLS=$row->ROBQ_BBLS;
				$ROBQ_METRICTON=$row->ROBQ_METRICTON;
				$ROBQ_LONGTON=$row->ROBQ_LONGTON;


				$SC=$row->SC;
				}
        }
	
	$arr_prod=json_decode($prodak);
	if (is_array($arr_prod) || is_object($arr_prod))
	{
	$product='';
	$i=1;
	foreach($arr_prod as $key => $value){
		 $product.= $i.'. '.$value.'<br>' ;		
		$i++;
		}
	} else {
		$product= $prodak;
	}
	
	$arr_survey=json_decode($surveyoric);
	if (is_array($arr_survey) || is_object($arr_survey))
	{
	$survey='';
	$i=1;
	foreach($arr_survey as $key => $value){
		 $survey.= $i.'. '.$value.'<br>' ;
		$i++;		
		}
	} else {
		$survey= $surveyoric;
	}
	



	// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', 'B', 20);

// add a page
$pdf->AddPage();

$pdf->SetFont('helvetica', '', 8);

$intervention=$this->Report_model->get_intervention($id_item);
		if($intervention->num_rows() > 0) {
        	foreach($intervention->result() as $row) {
        		$intervensi=$row->SELECT_INTERVENTION;		
        	}
        }
		switch($intervensi){
			case 14:
				$tbl = <<<EOD
<table border="0">
    <tr>
    <td colspan="7"><strong>LOADING SUMMARY</strong></td>
  </tr>
 
  <tr>
    <td colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>Referensi</td>
    <td>:</td>
    <td colspan="5">$kontrak</td>
  </tr>
  <tr>
    <td>Principal</td>
    <td>:</td>
    <td colspan="5">tester saja</td>
  </tr>
  <tr>
    <td>Vessel</td>
    <td>:</td>
    <td colspan="5">$vessel</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td colspan="5">$area</td>
  </tr>
  <tr>
    <td valign="top">Product</td>
    <td valign="top">:</td>
    <td colspan="2" align="left" valign="top">$product</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Loading Date</td>
    <td>:</td>
    <td>$lsd</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading No</td>
    <td>:</td>
    <td>325</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading Date</td>
    <td>:</td>
    <td>13/12/2017</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Surveyor in charge</td>
    <td valign="top">:</td>
    <td valign="top" colspan="5">$survey</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><strong>II. DISCHARGE MONITORING</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>A. TIME  LOG</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td><strong>Date</strong></td>
    <td></td>
    <td><strong>Time</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td>Vessel Arrive</td>
  <td>&nbsp;</td>
  <td>$dva</td>  <td>&nbsp;</td>
  <td>$TIME_VESSEL_ARRIVED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Vessel Anchoraged</td>
  <td>&nbsp;</td>
  <td>$danchor</td>  <td>&nbsp;</td>
  <td>$TIME_ANCHORAGED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Notice of Readiness Tendered</td>
  <td>&nbsp;</td>
  <td>$danor</td>  <td>&nbsp;</td>
  <td>$TIME_NOR</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Notice of Readiness Accepted</td>
  <td>&nbsp;</td>
  <td>$dacept</td>  <td>&nbsp;</td>
  <td>$TIME_ACCEPTED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Vessel Berthed</td>
  <td>&nbsp;</td>
  <td>$daber</td>  <td>&nbsp;</td>
  <td>$TIME_BERTHED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Surveyor On Board</td>
  <td>&nbsp;</td>
  <td>$dasubord</td>  <td>&nbsp;</td>
  <td>$TIME_SURVEYOR_ON_BOARD</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Key Meeting</td>
  <td>&nbsp;</td>
  <td>$dkm</td>  <td>&nbsp;</td>
  <td>$TIME_KEY_MEETING</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Tanks Inspection Commenced</td>
  <td>&nbsp;</td>
  <td>$dacomenc</td>  <td>&nbsp;</td>
  <td>$TIME_COMMENCED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Tanks Inspection Completed</td>
  <td>&nbsp;</td>
  <td>$dacomplet</td>  <td>&nbsp;</td>
  <td>$TIME_COMPLETED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Hose Connected Commenced</td>
  <td>&nbsp;</td>
  <td>$daconmenced</td>  <td>&nbsp;</td>
  <td>$TIME_CONNECTED_COMMENCED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Hose Connected Completed</td>
  <td>&nbsp;</td>
  <td>$daconpleted</td>  <td>&nbsp;</td>
  <td>$TIME_CONNECTED_COMPLETED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Loading Commenced</td>
  <td>&nbsp;</td>
  <td>$dlomenced</td>  <td>&nbsp;</td>
  <td>$TIME_LOADING_COMMENCED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Loading Completed</td>
  <td>&nbsp;</td>
  <td>$dlocomplet</td>  <td>&nbsp;</td>
  <td>$TIME_LOADING_COMPLETED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Hose Disconnected</td>
  <td>&nbsp;</td>
  <td>$dahoconeted</td>  <td>&nbsp;</td>
  <td>$TIME_HOSE_CONNECTED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Sampling Commenced</td>
  <td>&nbsp;</td>
  <td>$dasamcomened</td>  <td>&nbsp;</td>
  <td>$TIME_SAMPLING_COMMENCED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Sampling Completed</td>
  <td>&nbsp;</td>
  <td>$dasamcomplet</td>  <td>&nbsp;</td>
  <td>$TIME_SAMPLING_COMPLETED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Cargo Measurement Commenced</td>
  <td>&nbsp;</td>
  <td>$damenced</td>  <td>&nbsp;</td>
  <td>$TIME_MEASUREMENT_COMMENCED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Cargo Measurement Completed</td>
  <td>&nbsp;</td>
  <td>$damencomplet</td>  <td>&nbsp;</td>
  <td>$TIME_MEASUREMENT_COMPLETED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Document OnBoard</td>
  <td>&nbsp;</td>
  <td>$dadoon</td>  <td>&nbsp;</td>
  <td>$TIME_DOCUMENTS_ONBOARD</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Vessel Sailed</td>
  <td>&nbsp;</td>
  <td>$davesa</td>  <td>&nbsp;</td>
  <td>$TIME_VESSEL_SAILED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
  <tr>
    <td>Remarks</td>
    <td>:</td>
    <td colspan="5">$remarks</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>B. QUANTITY</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center">K/L Obsv.</td>
    <td align="center">K/L @15 oC</td>
    <td align="center">BBls @60 oF</td>
    <td align="center">Metric Ton</td>
    <td align="center">Long Ton</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading</td>
    <td>&nbsp;</td>
    <td align="center">$BL_QUANTITY_KLOBS</td>
    <td align="center">$BL_QUANTITY_KL15</td>
    <td align="center">$BL_QUANTITY_BBLS</td>
    <td align="center">$BL_QUANTITY_METRICTON</td>
    <td align="center">$BL_QUANTITY_LONGTON</td>
  </tr>
  <tr>
    <td>Vessel Loaded(GSV)</td>
    <td>&nbsp;</td>
    <td align="center">$SL_GSV_KLOBS</td>
    <td align="center">$SL_GSV_KL15</td>
    <td align="center">$SL_GSV_BBLS</td>
    <td align="center">$SL_GSV_METRICTON</td>
    <td align="center">$SL_GSV_LONGTON</td>
  </tr>
  <tr>
    <td>Differences(4Bform)</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>% tase</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>OBQ</td>
    <td>&nbsp;</td>
    <td align="center">$OBQ_QUANTITY_KLOBS</td>
    <td align="center">$OBQ_QUANTITY_KL15</td>
    <td align="center">$OBQ_QUANTITY_BBLS</td>
    <td align="center">$OBQ_QUANTITY_METRICTON</td>
    <td align="center">$OBQ_QUANTITY_LONGTON</td>
  </tr>
  <tr>
    <td>Free  Water</td>
    <td>&nbsp;</td>
    <td align="center">$FWAL_KLOBS</td>
    <td align="center">$FWAL_KL15</td>
    <td align="center">$FWAL_BBLS</td>
    <td align="center">$FWAL_METRICTON</td>
    <td align="center">$FWAL_LONGTON</td>
  </tr>
  <tr>
    <td>VEF</td>
    <td>&nbsp;</td>
    <td align="center">$VEF_LOADING_BBLS</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Density@15°C</td>
    <td>&nbsp;</td>
    <td align="center">$BL_15_DERAJAT_CELCIUS</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>API  60°F</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>S+W %  VOL</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Nomination Ship&rsquo;s Tanks</td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Non Nom Ship&rsquo;s Tanks</td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>NOAD/LOP/SOF Issued</td>
    <td>:</td>
	<td align="center">$RN_NOTICE_ISSUE</td>
    <td align="center">$RN_LETTER_ISSUE</td>
    <td align="center">$RN_STATEMENT_ISSUE</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sample Source for Analysis</td>
    <td>:</td>
    <td colspan="5">$SAMPLE_SOURCE</td>
    </tr>
  <tr>
    <td>Draft Arrival</td>
    <td>:</td>
    <td colspan="2">Fwd&nbsp;$SC_ON_ARRIVAL_DRAFT_FWD&nbsp;M</td>
    <td colspan="2">Aft&nbsp;$SC_ON_ARRIVAL_DRAFT_AFT&nbsp;M</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>Draft Departure</td>
    <td>:</td>
    <td colspan="2">Fwd&nbsp;$SC_ON_DEPARTURE_DRAFT_FWD&nbsp;M</td>
    <td colspan="2">Aft&nbsp;$SC_ON_DEPARTURE_DRAFT_AFT&nbsp;M</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>Bunker  Condition</td>
    <td>:</td>
    <td>Arrival </td>
    <td colspan="2">MFO&nbsp;&nbsp;&nbsp;$BO_MFO_ON_ARRIVAL</td>
    <td colspan="2">MDO&nbsp;&nbsp;&nbsp;$BO_MDO_ON_ARRIVAL</td>
    </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Departure</td>
    <td colspan="2">MFO&nbsp;&nbsp;&nbsp;$BO_MFO_ON_DEPARTURE</td>
    <td colspan="2">MDO&nbsp;&nbsp;&nbsp;$BO_MDO_ON_DEPARTURE</td>
    </tr>
   <tr>
    <td>Sea  Condition</td>
    <td>:</td>
    <td colspan="5">$SC</td>
    </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
EOD;
				break;
			case 15:
	$tbl = <<<EOD
<table border="0">
    <tr>
    <td colspan="7"><strong>DISCHARGE SUMMARY</strong></td>
  </tr>
 
  <tr>
    <td colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>Referensi</td>
    <td>:</td>
    <td colspan="5">$kontrak</td>
  </tr>
  <tr>
    <td>Principal</td>
    <td>:</td>
    <td colspan="5">tester saja</td>
  </tr>
  <tr>
    <td>Vessel</td>
    <td>:</td>
    <td colspan="5">$voy</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td colspan="5">$area</td>
  </tr>
  <tr>
    <td valign="top">Product</td>
    <td valign="top">:</td>
    <td colspan="2" align="left" valign="top">$product</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Loading Date</td>
    <td>:</td>
    <td>$lsd</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Discharge Date</td>
    <td>:</td>
    <td>$lcd</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading No</td>
    <td>:</td>
    <td>325</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading Date</td>
    <td>:</td>
    <td>13/12/2017</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Surveyor in charge</td>
    <td valign="top">:</td>
    <td valign="top" colspan="5">$survey</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><strong>II. DISCHARGE MONITORING</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>A. TIME  LOG</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td><strong>Date</strong></td>
    <td></td>
    <td><strong>Time</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td>Vessel Arrive ds</td>
  <td>&nbsp;</td>
  <td>$dva</td>  <td>&nbsp;</td>
  <td>$TIME_VESSEL_ARRIVED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Vessel Anchoraged</td>
  <td>&nbsp;</td>
  <td>$danchor</td>  <td>&nbsp;</td>
  <td>$TIME_ANCHORAGED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Notice of Readiness Tendered</td>
  <td>&nbsp;</td>
  <td>$danor</td>  <td>&nbsp;</td>
  <td>$TIME_NOR</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Notice of Readiness Accepted</td>
  <td>&nbsp;</td>
  <td>$dacept</td>  <td>&nbsp;</td>
  <td>$TIME_ACCEPTED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
  <td>Vessel Berthed</td>
  <td>&nbsp;</td>
  <td>$daber</td>  <td>&nbsp;</td>
  <td>$TIME_BERTHED</td>  <td>&nbsp;</td>
  <td>&nbsp;</td>
 </tr>
 <tr>
<td>Pilot on Board for Berthing</td>
    <td>&nbsp;</td>
    <td>$dapob</td>
    <td>&nbsp;</td>
    <td>$TIME_POB</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Anchors Aweigh</td>
    <td>&nbsp;</td>
    <td>$daweigh</td>
    <td>&nbsp;</td>
    <td>$TIME_A_AWEIGH</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Vessel Berthed</td>
    <td>&nbsp;</td>
    <td>$daberth</td>
    <td>&nbsp;</td>
    <td>$TIME_BERTHING</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Surveyor on Board</td>
    <td>&nbsp;</td>
    <td>$dasubord</td>
    <td>&nbsp;</td>
    <td>$TIME_SURVEYOR_ON_BOARD</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Key Meeting</td>
    <td>&nbsp;</td>
    <td>$dkm</td>
    <td>&nbsp;</td>
    <td>$TIME_KEY_MEETING</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Tanks Inspection Calc. Commenced</td>
    <td>&nbsp;</td>
    <td>$daiinpcomenc</td>
    <td>&nbsp;</td>
    <td>$TIME_INPECTION_COMMENCED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Tanks Inspection Calc. Completed</td>
    <td>&nbsp;</td>
    <td>$daiinpcomplet</td>
    <td>&nbsp;</td>
    <td>$TIME_INSPECTION_COMPLETED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sampling  Before Discharge Commenced</td>
    <td>&nbsp;</td>
    <td>$dasbdcomenced</td>
    <td>&nbsp;</td>
    <td>$TIME_SBD_COMMENCED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sampling  Before Discharge Completed</td>
    <td>&nbsp;</td>
    <td>$dasbdcomplete</td>
    <td>&nbsp;</td>
    <td>$TIME_SBD_COMPLETED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Hose  Connected</td>
    <td>&nbsp;</td>
    <td>$dahoconeted</td>
    <td>&nbsp;</td>
    <td>$TIME_HOSE_CONNECTED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Discharge  Commenced</td>
    <td>&nbsp;</td>
    <td>$dadisccomenc</td>
    <td>&nbsp;</td>
    <td>$TIME_DISCHARGE_COMMENCED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Discharge  Completed</td>
    <td>&nbsp;</td>
    <td>$dadiscomplet</td>
    <td>&nbsp;</td>
    <td>$TIME_DISCHARGE_COMPLETED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Hose  Disconnected</td>
    <td>&nbsp;</td>
    <td>$dahodis</td>
    <td>&nbsp;</td>
    <td>$TIME_HOSE_DISCONNECTED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Tanks  Inspection Commenced</td>
    <td>&nbsp;</td>
    <td>$datankinscomenced</td>
    <td>&nbsp;</td>
    <td>$TIME_TANKS_INS_COMMENCED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr><tr>
    <td>Tanks  Inspection Completed</td>
    <td>&nbsp;</td>
    <td>$datankinscomenced</td>
    <td>&nbsp;</td>
    <td>$TIME_TANKS_INS_COMPLETED</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Documents  OnBoard</td>
    <td>&nbsp;</td>
    <td>$dadoon</td>
    <td>&nbsp;</td>
    <td>$TIME_DOCUMENTS_ONBOARD</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Surveyour  Left Vessel</td>
    <td>&nbsp;</td>
    <td>$dasvylevesel</td>
    <td>&nbsp;</td>
    <td>$TIME_SVY_LEFT_VESSEL</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Vessel  Sail</td>
    <td>&nbsp;</td>
    <td>$dateveselsail</td>
    <td>&nbsp;</td>
    <td>$TIME_VESSEL_SAIL</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Remarks</td>
    <td>:</td>
    <td colspan="5">$remarks</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>B. QUANTITY</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center">K/L Obsv.</td>
    <td align="center">K/L @15 oC</td>
    <td align="center">BBls @60 oF</td>
    <td align="center">Metric Ton</td>
    <td align="center">Long Ton</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<tr>
    <td>Bill of Lading</td>
    <td>&nbsp;</td>
    <td align="center">$BL_QUANTITY_KLOBS</td>
    <td align="center">$BL_QUANTITY_KL15</td>
    <td align="center">$BL_QUANTITY_BBLS</td>
    <td align="center">$BL_QUANTITY_METRICTON</td>
    <td align="center">$BL_QUANTITY_LONGTON</td>
  </tr>
  <tr>
    <td>Ship Figure (AL)</td>
    <td>&nbsp;</td>
    <td align="center">$BL_SFAL_KLOBS</td>
    <td align="center">$BL_SFAL_KL15</td>
    <td align="center">$BL_SFAL_BBLS</td>
    <td align="center">$BL_SFAL_METRICTON</td>
    <td align="center">$BL_SFAL_LONGTON</td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>% tase</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>In Transit</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Ship Figure (AL)</td>
    <td>&nbsp;</td>
    <td align="center">$SF_SFAL_KLOBS</td>
    <td align="center">$SF_SFAL_KL15</td>
    <td align="center">$SF_SFAL_BBLS</td>
    <td align="center">$SF_SFAL_METRICTON</td>
    <td align="center">$SF_SFAL_LONGTON</td>
  </tr>
  <tr>
    <td>Ship Figure (BD)</td>
    <td>&nbsp;</td>
    <td align="center">$SFBD_TOV_KLOBS</td>
    <td align="center">$SFBD_TOV_KL15</td>
    <td align="center">$SFBD_TOV_BBLS</td>
    <td align="center">$SFBD_TOV_METRICTON</td>
    <td align="center">$SFBD_TOV_LONGTON</td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>% tase</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Discharge Port</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Ship Figure (BD)</td>
    <td>&nbsp;</td>
    <td align="center">$SFBD_GSV_KLOBS</td>
    <td align="center">$SFBD_GSV_KL15</td>
    <td align="center">$SFBD_GSV_BBLS</td>
    <td align="center">$SFBD_GSV_METRICTON</td>
    <td align="center">$SFBD_GSV_LONGTON</td>
  </tr>
  <tr>
    <td>Shore Received</td>
    <td>&nbsp;</td>
    <td align="center">$SFBD_GSV_KLOBS</td>
    <td align="center">$SFBD_GSV_KL15</td>
    <td align="center">$SFBD_GSV_BBLS</td>
    <td align="center">$SFBD_GSV_METRICTON</td>
    <td align="center">$SFBD_GSV_LONGTON</td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>% tase</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Outturn</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading</td>
    <td>&nbsp;</td>
    <td align="center">$SFBD_GSV_KLOBS</td>
    <td align="center">$SFBD_GSV_KL15</td>
    <td align="center">$SFBD_GSV_BBLS</td>
    <td align="center">$SFBD_GSV_METRICTON</td>
    <td align="center">$SFBD_GSV_LONGTON</td>
  </tr>
  <tr>
    <td>Shore Received</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>% tase</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>ROB</td>
    <td>&nbsp;</td>
    <td align="center">$ROBQ_KLOBS</td>
    <td align="center">$ROBQ_KL15</td>
    <td align="center">$ROBQ_BBLS</td>
    <td align="center">$ROBQ_METRICTON</td>
    <td align="center">$ROBQ_LONGTON</td>
  </tr>
  <tr>
    <td>Free Water</td>
    <td>&nbsp;</td>
    <td align="center">$FWAL_KLOBS</td>
    <td align="center">$FWAL_KL15</td>
    <td align="center">$FWAL_BBLS</td>
    <td align="center">$FWAL_METRICTON</td>
    <td align="center">$FWAL_LONGTON</td>
  </tr>
  <tr>
    <td>Density@15°C</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>API 60°F</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>S+W % VOL</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Nomination Ship&rsquo;s Tanks</td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Non Nom Ship&rsquo;s Tanks</td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>NOAD/LOP/SOF Issued</td>
    <td>:</td>
	<td align="center">$RN_NOTICE_ISSUE</td>
    <td align="center">$RN_LETTER_ISSUE</td>
    <td align="center">$RN_STATEMENT_ISSUE</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sample Source for Analysis</td>
    <td>:</td>
    <td colspan="5">$SAMPLE_SOURCE</td>
    </tr>
  <tr>
    <td>Draft Arrival</td>
    <td>:</td>
    <td colspan="2">Fwd&nbsp;$SC_ON_ARRIVAL_DRAFT_FWD&nbsp;M</td>
    <td colspan="2">Aft&nbsp;$SC_ON_ARRIVAL_DRAFT_AFT&nbsp;M</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>Draft Departure</td>
    <td>:</td>
    <td colspan="2">Fwd&nbsp;$SC_ON_DEPARTURE_DRAFT_FWD&nbsp;M</td>
    <td colspan="2">Aft&nbsp;$SC_ON_DEPARTURE_DRAFT_AFT&nbsp;M</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>Bunker  Condition</td>
    <td>:</td>
    <td>Arrival </td>
    <td colspan="2">MFO&nbsp;&nbsp;&nbsp;$BO_MFO_ON_ARRIVAL</td>
    <td colspan="2">MDO&nbsp;&nbsp;&nbsp;$BO_MDO_ON_ARRIVAL</td>
    </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Departure</td>
    <td colspan="2">MFO&nbsp;&nbsp;&nbsp;$BO_MFO_ON_DEPARTURE</td>
    <td colspan="2">MDO&nbsp;&nbsp;&nbsp;$BO_MDO_ON_DEPARTURE</td>
    </tr>
   <tr>
    <td>Sea  Condition</td>
    <td>:</td>
    <td colspan="5">$SC</td>
    </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
EOD;
				break;
		}

// Table with rowspans and THEAD



$pdf->writeHTML($tbl, true, false, false, false, '');

// -----------------------------------------------------------------------------


//Close and output PDF document
$pdf->Output('CETAK_'.date('d_m_Y_h_i', time()).'.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
	}

public function downloadexcel()  {
        //$subscribers = $this->phpexcel_model->get_users();
        //$query_items = $this->Report_model->get_all_items_to_excell($this->session->userdata("site_id"));
		$array_get = array();
		$intervention_name = $this->input->get("INTERVENTION_NAME");
		$product_type      = $this->input->get("PRODUCT_TYPE");
		$select_cargo      = $this->input->get("SELECT_CARGO");
		$kontrak           = $this->input->get("KONTRAK");
		$spk               = $this->input->get("SPK");
		$ctime             = $this->input->get("CTIME");

		if($intervention_name != "") {
			$o = new stdClass();
			$o->field = "INTERVENTION_NAME";
			$o->value = $intervention_name;
			$array_get[] = $o;
		}

		if($product_type != "") {
			$o = new stdClass();
			$o->field = "PRODUCT_TYPE";
			$o->value = $product_type;
			$array_get[] = $o;
		}

		if($select_cargo != "") {
			$o = new stdClass();
			$o->field = "SELECT_CARGO";
			$o->value = $select_cargo;
			$array_get[] = $o;
		}

		if($kontrak != "") {
			$o = new stdClass();
			$o->field = "KONTRAK";
			$o->value = $kontrak;
			$array_get[] = $o;
		}

		if($spk != "") {
			$o = new stdClass();
			$o->field = "SPK";
			$o->value = $spk;
			$array_get[] = $o;
		}

		if($ctime != "") {
			$o = new stdClass();
			$o->field = "CTIME";
			$o->value = $ctime;
			$array_get[] = $o;
		}

        $query_items = $this->Report_model->get_all_items_to_excell($this->session->userdata("site_id"),$array_get);

        require_once APPPATH . '/third_party/Phpexcel/Bootstrap.php';
        // Create new Spreadsheet object
        $spreadsheet = new \PhpOffice\PhpSpreadsheet\Spreadsheet();

// Set document properties
        $spreadsheet->getProperties()->setCreator('Sucofindo')
                ->setLastModifiedBy('Report Sucofindo')
                ->setTitle('Report Excell')
                ->setSubject('Data PhpExcel')
                ->setDescription('Data Hasil Cetak Excell');

        // add style to the header
        $styleArray = array(
                'font' => array(
                        'bold' => true,
                ),
                'alignment' => array(
                        'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                        'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                ),
                'borders' => array(
                        'top' => array(
                                'style' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        ),
                ),
                'fill' => array(
                        'type' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_GRADIENT_LINEAR,
                        'rotation' => 90,
                        'startcolor' => array(
                                'argb' => 'FFA0A0A0',
                        ),
                        'endcolor' => array(
                                'argb' => 'FFFFFFFF',
                        ),
                ),
        );
        $spreadsheet->getActiveSheet()->getStyle('A1:JP1')->applyFromArray($styleArray);


        // auto fit column to content

        foreach(range('A','JP') as $columnID) {
            $spreadsheet->getActiveSheet()->getColumnDimension($columnID)
                    ->setAutoSize(true);
        }
        // set the names of header cells
        $k=1;
        $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue("A$k",'NO')
                ->setCellValue("B$k",'SC')
                ->setCellValue("C$k",'IWO')
                ->setCellValue("D$k",'SPK')
                ->setCellValue("E$k",'VOY')
                ->setCellValue("F$k",'AREA')
                ->setCellValue("G$k",'SUPPLIER')
                ->setCellValue("H$k",'BUYER')
                ->setCellValue("I$k",'SELLER')
                ->setCellValue("J$k",'TRADER')
                ->setCellValue("K$k",'KONTRAK')
                ->setCellValue("L$k",'PRODUCT')
                ->setCellValue("M$k",'DATE_NOR')
                ->setCellValue("N$k",'TIME_NOR')
                ->setCellValue("O$k",'FWAL_BBLS')
                ->setCellValue("P$k",'FWAL_KL15')
                ->setCellValue("Q$k",'FILE_ORDER')
                ->setCellValue("R$k",'FWAL_KLOBS')
                ->setCellValue("S$k",'REMARKS_NOR')
                ->setCellValue("T$k",'SELECT_PORT')
                ->setCellValue("U$k",'SHARING_FEE')
                ->setCellValue("V$k",'SL_GSV_BBLS')
                ->setCellValue("W$k",'SL_GSV_KL15')
                ->setCellValue("X$k",'DATE_BERTHED')
                ->setCellValue("Y$k",'FWAL_LONGTON')
                ->setCellValue("Z$k",'PRODUCT_TYPE')
                ->setCellValue("AA$k",'SELECT_CARGO')
                ->setCellValue("AB$k",'SL_GSV_KLOBS')
                ->setCellValue("AC$k",'TIME_BERTHED')
                ->setCellValue("AD$k",'BL_START_DATE')
                ->setCellValue("AE$k",'BL_START_TIME')
                ->setCellValue("AF$k",'DATE_ACCEPTED')
                ->setCellValue("AG$k",'DATE_CONTRACT')
                ->setCellValue("AH$k",'PORT_TERMINAL')
                ->setCellValue("AI$k",'SAMPLE_SOURCE')
                ->setCellValue("AJ$k",'SELECT_CLIENT')
                ->setCellValue("AK$k",'SFAL_TOV_BBLS')
                ->setCellValue("AL$k",'SFAL_TOV_KL15')
                ->setCellValue("AM$k",'ST_NOMINATION')
                ->setCellValue("AN$k",'TIME_ACCEPTED')
                ->setCellValue("AO$k",'DATE_COMMENCED')
                ->setCellValue("AP$k",'DATE_COMPLETED')
                ->setCellValue("AQ$k",'FWAL_METRICTON')
                ->setCellValue("AR$k",'SELECT_PRODUCT')
                ->setCellValue("AS$k",'SFAL_TOV_KLOBS')
                ->setCellValue("AT$k",'SL_GSV_LONGTON')
                ->setCellValue("AU$k",'TIME_COMMENCED')
                ->setCellValue("AV$k",'TIME_COMPLETED')
                ->setCellValue("AW$k",'DATE_ANCHORAGED')
                ->setCellValue("AX$k",'REMARKS_BERTHED')
                ->setCellValue("AY$k",'RN_LETTER_ISSUE')
                ->setCellValue("AZ$k",'RN_NOTICE_ISSUE')
                ->setCellValue("BA$k",'TIME_ANCHORAGED')
                ->setCellValue("BB$k",'BL_QUANTITY_BBLS')
                ->setCellValue("BC$k",'BL_QUANTITY_KL15')
                ->setCellValue("BD$k",'DATE_KEY_MEETING')
                ->setCellValue("BE$k",'DATE_OF_ANALYSIS')
                ->setCellValue("BF$k",'REMARKS_ACCEPTED')
                ->setCellValue("BG$k",'SF_QUANTITY_BBLS')
                ->setCellValue("BH$k",'SF_QUANTITY_KL15')
                ->setCellValue("BI$k",'SFAL_TOV_LONGTON')
                ->setCellValue("BJ$k",'SL_GSV_METRICTON')
                ->setCellValue("BK$k",'TIME_KEY_MEETING')
                ->setCellValue("BL$k",'VEF_LOADING_BBLS')
                ->setCellValue("BM$k",'BL_QUANTITY_KLOBS')
                ->setCellValue("BN$k",'BO_MDO_ON_ARRIVAL')
                ->setCellValue("BO$k",'BO_MFO_ON_ARRIVAL')
                ->setCellValue("BP$k",'OBQ_QUANTITY_BBLS')
                ->setCellValue("BQ$k",'OBQ_QUANTITY_KL15')
                ->setCellValue("BR$k",'REMARKS_COMMENCED')
                ->setCellValue("BS$k",'REMARKS_COMPLETED')
                ->setCellValue("BT$k",'SF_QUANTITY_KLOBS')
                ->setCellValue("BU$k",'SL_VS_BOL_R1_BBLS')
                ->setCellValue("BV$k",'SL_VS_BOL_R1_KL15')
                ->setCellValue("BW$k",'ACTIVITIES_REMARKS')
                ->setCellValue("BX$k",'DATE_LOISPKPOWONOA')
                ->setCellValue("BY$k",'DATE_VESSEL_SAILED')
                ->setCellValue("BZ$k",'LOADING_START_DATE')
                ->setCellValue("CA$k",'LOADING_START_TIME')
                ->setCellValue("CB$k",'OBQ_QUANTITY_KLOBS')
                ->setCellValue("CC$k",'REMARKS_ANCHORAGED')
                ->setCellValue("CD$k",'RN_STATEMENT_ISSUE')
                ->setCellValue("CE$k",'SFAL_TOV_METRICTON')
                ->setCellValue("CF$k",'SL_VS_BOL_R1_KLOBS')
                ->setCellValue("CG$k",'TIME_VESSEL_SAILED')
                ->setCellValue("CH$k",'BL_QUANTITY_LONGTON')
                ->setCellValue("CI$k",'BO_MDO_ON_DEPARTURE')
                ->setCellValue("CJ$k",'BO_MFO_ON_DEPARTURE')
                ->setCellValue("CK$k",'CLIENT_SITE_ID_FORM')
                ->setCellValue("CL$k",'DATE_HOSE_CONNECTED')
                ->setCellValue("CM$k",'DATE_VESSEL_ARRIVED')
                ->setCellValue("CN$k",'REMARKS_KEY_MEETING')
                ->setCellValue("CO$k",'SELECT_INTERVENTION')
                ->setCellValue("CP$k",'SF_QUANTITY_LONGTON')
                ->setCellValue("CQ$k",'TIME_HOSE_CONNECTED')
                ->setCellValue("CR$k",'TIME_VESSEL_ARRIVED')
                ->setCellValue("CS$k",'DISCHARGE_START_DATE')
                ->setCellValue("CT$k",'DISCHARGE_START_TIME')
                ->setCellValue("CU$k",'OBQ_QUANTITY_LONGTON')
                ->setCellValue("CV$k",'SL_APPLIED_VEFL_BBLS')
                ->setCellValue("CW$k",'SL_VS_BOL_R1_LONGTON')
                ->setCellValue("CX$k",'BL_15_DERAJAT_CELCIUS')
                ->setCellValue("CY$k",'BL_QUANTITY_METRICTON')
                ->setCellValue("CZ$k",'LOADING_COMPLETE_DATE')
                ->setCellValue("DA$k",'LOADING_COMPLETE_TIME')
                ->setCellValue("DB$k",'REMARKS_VESSEL_SAILED')
                ->setCellValue("DC$k",'DATE_DOCUMENTS_ONBOARD')
                ->setCellValue("DD$k",'DATE_LOADING_COMMENCED')
                ->setCellValue("DE$k",'DATE_LOADING_COMPLETED')
                ->setCellValue("DF$k",'DATE_SURVEYOR_ON_BOARD')
                ->setCellValue("DG$k",'OBQ_QUANTITY_METRICTON')
                ->setCellValue("DH$k",'REMARKS_HOSE_CONNECTED')
                ->setCellValue("DI$k",'REMARKS_VESSEL_ARRIVED')
                ->setCellValue("DJ$k",'SF_QUANTITY_METRICTON')
                ->setCellValue("DK$k",'SL_VS_BOL_R1_METRICTON')
                ->setCellValue("DL$k",'TIME_DOCUMENTS_ONBOARD')
                ->setCellValue("DM$k",'TIME_LOADING_COMMENCED')
                ->setCellValue("DN$k",'TIME_LOADING_COMPLETED')
                ->setCellValue("DO$k",'TIME_SURVEYOR_ON_BOARD')
                ->setCellValue("DP$k",'DATE_SAMPLING_COMMENCED')
                ->setCellValue("DQ$k",'DATE_SAMPLING_COMPLETED')
                ->setCellValue("DR$k",'DISCHARGE_COMPLETE_DATE')
                ->setCellValue("DS$k",'DISCHARGE_COMPLETE_TIME')
                ->setCellValue("DT$k",'SC_ON_ARRIVAL_DRAFT_AFT')
                ->setCellValue("DU$k",'SC_ON_ARRIVAL_DRAFT_FWD')
                ->setCellValue("DV$k",'TIME_SAMPLING_COMMENCED')
                ->setCellValue("DW$k",'TIME_SAMPLING_COMPLETED')
                ->setCellValue("DX$k",'DATE_CONNECTED_COMMENCED')
                ->setCellValue("DY$k",'DATE_CONNECTED_COMPLETED')
                ->setCellValue("DZ$k",'SC_ON_ARRIVAL_DRAFT_LIST')
                ->setCellValue("EA$k",'TIME_CONNECTED_COMMENCED')
                ->setCellValue("EB$k",'TIME_CONNECTED_COMPLETED')
                ->setCellValue("EC$k",'REMARKS_DOCUMENTS_ONBOARD')
                ->setCellValue("ED$k",'REMARKS_LOADING_COMMENCED')
                ->setCellValue("EE$k",'REMARKS_LOADING_COMPLETED')
                ->setCellValue("EF$k",'REMARKS_SURVEYOR_ON_BOARD')
                ->setCellValue("EG$k",'SC_ON_DEPARTURE_DRAFT_AFT')
                ->setCellValue("EH$k",'SC_ON_DEPARTURE_DRAFT_FWD')
                ->setCellValue("EI$k",'DATE_MEASUREMENT_COMMENCED')
                ->setCellValue("EJ$k",'DATE_MEASUREMENT_COMPLETED')
                ->setCellValue("EK$k",'REMARKS_SAMPLING_COMMENCED')
                ->setCellValue("EL$k",'REMARKS_SAMPLING_COMPLETED')
                ->setCellValue("EM$k",'SC_ON_DEPARTURE_DRAFT_LIST')
                ->setCellValue("EN$k",'SL_VEF_APPLIED_VS_BOL_BBLS')
                ->setCellValue("EO$k",'SL_VEF_APPLIED_VS_BOL_KL15')
                ->setCellValue("EP$k",'TIME_MEASUREMENT_COMMENCED')
                ->setCellValue("EQ$k",'TIME_MEASUREMENT_COMPLETED')
                ->setCellValue("ER$k",'REMARKS_CONNECTED_COMMENCED')
                ->setCellValue("ES$k",'REMARKS_CONNECTED_COMPLETED')
                ->setCellValue("ET$k",'SL_VEF_APPLIED_VS_BOL_KLOBS')
                ->setCellValue("EU$k",'REMARKS_MEASUREMENT_COMMENCED')
                ->setCellValue("EV$k",'REMARKS_MEASUREMENT_COMPLETED')
                ->setCellValue("EW$k",'SL_VEF_APPLIED_VS_BOL_LONGTON')
                ->setCellValue("EX$k",'SL_VEF_APPLIED_VS_BOL_METRICTON')
                ->setCellValue("EY$k",'IS_DELETE')
                ->setCellValue("EZ$k",'CREATE_TIME')
                ->setCellValue("FA$k",'CREATE_USER')
                ->setCellValue("FB$k",'MODIFY_TIME')
                ->setCellValue("FC$k",'MODIFY_USER')
                ->setCellValue("FD$k",'DELETE_TIME')
                ->setCellValue("FE$k",'CLIENT_SITE_ID')
                ->setCellValue("FF$k",'SF_GSV_KLOBS')
                ->setCellValue("FG$k",'SF_NSV_KLOBS')
                ->setCellValue("FH$k",'SF_FREE_WATER_AL_BBLS')
                ->setCellValue("FI$k",'SF_FREE_WATER_AL_KL15')
                ->setCellValue("FJ$k",'SF_SFAL_TOV_METRICTON')
                ->setCellValue("FK$k",'SL_APPLIED_VEFL_KLOBS')
                ->setCellValue("FL$k",'DATE_HOSE_DISCONNECTED')
                ->setCellValue("FM$k",'SF_FREE_WATER_AL_KLOBS')
                ->setCellValue("FN$k",'DATE_DISCHARGE_COMPLETED')
                ->setCellValue("FO$k",'DATE_INPECTION_COMMENCED')
                ->setCellValue("FP$k",'SF_FREE_WATER_AL_LONGTON')
                ->setCellValue("FQ$k",'TIME_DISCHARGE_COMMENCED')
                ->setCellValue("FR$k",'TIME_DISCHARGE_COMPLETED')
                ->setCellValue("FS$k",'TIME_INPECTION_COMMENCED')
                ->setCellValue("FT$k",'DATE_INSPECTION_COMPLETED')
                ->setCellValue("FU$k",'REMARKS_HOSE_DISCONNECTED')
                ->setCellValue("FV$k",'SL_APPLIED_VEFL_METRICTON')
                ->setCellValue("FW$k",'TIME_INSPECTION_COMPLETED')
                ->setCellValue("FX$k",'SF_FREE_WATER_AL_METRICTON')
                ->setCellValue("FY$k",'REMARKS_DISCHARGE_COMMENCED')
                ->setCellValue("FZ$k",'REMARKS_DISCHARGE_COMPLETED')
                ->setCellValue("GA$k",'REMARKS_INPECTION_COMMENCED')
                ->setCellValue("GB$k",'REMARKS_INSPECTION_COMPLETED')
                ->setCellValue("GC$k",'DATE_HOSE_CONNECTED_COMMENCED')
                ->setCellValue("GD$k",'DATE_HOSE_CONNECTED_COMPLETED')
                ->setCellValue("GE$k",'SL_VEF_APPLIED_VS_BOL_R1_BBLS')
                ->setCellValue("GF$k",'SL_VEF_APPLIED_VS_BOL_R1_KL15')
                ->setCellValue("GG$k",'TIME_HOSE_CONNECTED_COMMENCED')
                ->setCellValue("GH$k",'TIME_HOSE_CONNECTED_COMPLETED')
                ->setCellValue("GI$k",'SL_VEF_APPLIED_VS_BOL_R1_KLOBS')
                ->setCellValue("GJ$k",'SF_SHORE_TANKS_NOMINATION_KLOBS')
                ->setCellValue("GK$k",'DATE_CARGO_MEASUREMENT_COMMENCED')
                ->setCellValue("GL$k",'DATE_CARGO_MEASUREMENT_COMPLETED')
                ->setCellValue("GM$k",'REMARKS_HOSE_CONNECTED_COMMENCED')
                ->setCellValue("GN$k",'REMARKS_HOSE_CONNECTED_COMPLETED')
                ->setCellValue("GO$k",'SL_VEF_APPLIED_VS_BOL_R1_LONGTON')
                ->setCellValue("GP$k",'TIME_CARGO_MEASUREMENT_COMMENCED')
                ->setCellValue("GQ$k",'TIME_CARGO_MEASUREMENT_COMPLETED')
                ->setCellValue("GR$k",'SL_VEF_APPLIED_VS_BOL_R1_METRICTON')
                ->setCellValue("GS$k",'REMARKS_CARGO_MEASUREMENT_COMMENCED')
                ->setCellValue("GT$k",'REMARKS_CARGO_MEASUREMENT_COMPLETED')
                ->setCellValue("GU$k",'BL_FLOW_METER')
                ->setCellValue("GV$k",'BL_SHORE_TANK')
                ->setCellValue("GW$k",'BL_SHIP_TANK')
                ->setCellValue("GX$k",'FSOQ')
                ->setCellValue("GY$k",'SURVEYOR_IN_CHARGE')
                ->setCellValue("GZ$k",'RN_NOTICE_ISSUE_DESCRIPTION')
                ->setCellValue("HA$k",'RN_LETTER_ISSUE_DESCRIPTION')
                ->setCellValue("HB$k",'RN_STATEMENT_ISSUE_DESCRIPTION')
                ->setCellValue("HC$k",'DATE_A_AWEIGH')
                ->setCellValue("HD$k",'TIME_A_AWEIGH')
                ->setCellValue("HE$k",'DATE_POB')
                ->setCellValue("HF$k",'TIME_POB')
                ->setCellValue("HG$k",'DATE_BERTHING')
                ->setCellValue("HH$k",'TIME_BERTHING')
                ->setCellValue("HI$k",'DATE_SBD_COMMENCED')
                ->setCellValue("HJ$k",'DATE_SBD_COMPLETED')
                ->setCellValue("HK$k",'TIME_SBD_COMMENCED')
                ->setCellValue("HL$k",'TIME_SBD_COMPLETED')
                ->setCellValue("HM$k",'DATE_DISCHARGE_COMMENCED')
                ->setCellValue("HN$k",'DATE_TANKS_INS_COMMENCED')
                ->setCellValue("HO$k",'TIME_TANKS_INS_COMMENCED')
                ->setCellValue("HP$k",'DATE_TANKS_INS_COMPLETED')
                ->setCellValue("HQ$k",'TIME_TANKS_INS_COMPLETED')
                ->setCellValue("HR$k",'DATE_SVY_LEFT_VESSEL')
                ->setCellValue("HS$k",'TIME_SVY_LEFT_VESSEL')
                ->setCellValue("HT$k",'DATE_VESSEL_SAIL')
                ->setCellValue("HU$k",'TIME_VESSEL_SAIL')
                ->setCellValue("HV$k",'TIME_HOSE_DISCONNECTED')
                ->setCellValue("HW$k",'BL_SFAL_KLOBS')
                ->setCellValue("HX$k",'BL_SFAL_KL15')
                ->setCellValue("HY$k",'BL_SFAL_BBLS')
                ->setCellValue("HZ$k",'BL_SFAL_METRICTON')
                ->setCellValue("IA$k",'BL_SFAL_LONGTON')
                ->setCellValue("IB$k",'SF_SFAL_KLOBS')
                ->setCellValue("IC$k",'SF_SFAL_KL15')
                ->setCellValue("ID$k",'SF_SFAL_BBLS')
                ->setCellValue("IE$k",'SF_SFAL_METRICTON')
                ->setCellValue("IF$k",'SF_SFAL_LONGTON')
                ->setCellValue("IG$k",'SFBD_TOV_KLOBS')
                ->setCellValue("IH$k",'SFBD_TOV_KL15')

                ->setCellValue("II$k",'SFBD_TOV_BBLS')
                ->setCellValue("IJ$k",'SFBD_TOV_METRICTON')
                ->setCellValue("IK$k",'SFBD_TOV_LONGTON')
                ->setCellValue("IL$k",'SFBD_GSV_KLOBS')
                ->setCellValue("IM$k",'SFBD_GSV_KL15')
                ->setCellValue("IN$k",'SFBD_GSV_BBLS')
                ->setCellValue("IO$k",'SFBD_GSV_METRICTON')
                ->setCellValue("IP$k",'SFBD_GSV_LONGTON')
                ->setCellValue("IQ$k",'ROBQ_KLOBS')
                ->setCellValue("IR$k",'ROBQ_KL15')
                ->setCellValue("IS$k",'ROBQ_BBLS')
                ->setCellValue("IT$k",'ROBQ_METRICTON')
                ->setCellValue("IU$k",'ROBQ_LONGTON')

                ->setCellValue("IV$k",'VESSEL')

                ->setCellValue("IW$k",'SLVS_BOL_R1_KLOBS')
                ->setCellValue("IX$k",'SLVS_BOL_R1_KL15')
                ->setCellValue("IY$k",'SLVS_BOL_R1_BBLS')
                ->setCellValue("IZ$k",'SLVS_BOL_R1_LONGTON')
                ->setCellValue("JA$k",'SLVS_BOL_R1_METRICTON')

                ->setCellValue("JB$k",'SFAL_VS_SFBD_R2_KLOBS')
                ->setCellValue("JC$k",'SFAL_VS_SFBD_R2_KL15')
                ->setCellValue("JD$k",'SFAL_VS_SFBD_R2_BBLS')
                ->setCellValue("JE$k",'SFAL_VS_SFBD_R2_LONGTON')
                ->setCellValue("JF$k",'SFAL_VS_SFBD_R2_METRICTON')

                ->setCellValue("JG$k",'SFBD_VS_SR_R3_KLOBS')
                ->setCellValue("JH$k",'SFBD_VS_SR_R3_KL15')
                ->setCellValue("JI$k",'SFBD_VS_SR_R3_BBLS')
                ->setCellValue("JJ$k",'SFBD_VS_SR_R3_LONGTON')
                ->setCellValue("JK$k",'SFBD_VS_SR_R3_METRICTON')

                ->setCellValue("JL$k",'SR_VS_BOL_R4_KLOBS')
                ->setCellValue("JM$k",'SR_VS_BOL_R4_KL15')
                ->setCellValue("JN$k",'SR_VS_BOL_R4_BBLS')
                ->setCellValue("JO$k",'SR_VS_BOL_R4_LONGTON')
                ->setCellValue("JP$k",'SR_VS_BOL_R4_METRICTON');

        // Add some data
        $x  = 2;
        $no = 0;
        foreach($query_items as $sub){
        	$no++;
        	if(is_array(json_decode($sub['SURVEYOR_IN_CHARGE']))) $sub['SURVEYOR_IN_CHARGE'] = @implode(",",json_decode($sub['SURVEYOR_IN_CHARGE']));
        	if(is_array(json_decode($sub['SUPPLIER']))) $sub['SUPPLIER'] = @implode(",",json_decode($sub['SUPPLIER']));
        	if(is_array(json_decode($sub['BUYER']))) $sub['BUYER'] = @implode(",",json_decode($sub['BUYER']));
        	if(is_array(json_decode($sub['SELLER']))) $sub['SELLER'] = @implode(",",json_decode($sub['SELLER']));
        	if(is_array(json_decode($sub['TRADER']))) $sub['TRADER'] = @implode(",",json_decode($sub['TRADER']));
        	if(is_array(json_decode($sub['SHARING_FEE']))) $sub['SHARING_FEE'] = @implode(",",json_decode($sub['SHARING_FEE']));
        	if(is_array(json_decode($sub['PORT_TERMINAL']))) $sub['PORT_TERMINAL'] = @implode(",",json_decode($sub['PORT_TERMINAL']));
        	if($sub['DATE_NOR']      == '1970-01-01') $sub['DATE_NOR'] = '';
        	if($sub['DATE_BERTHED']  == '1970-01-01') $sub['DATE_BERTHED'] = '';
        	if($sub['BL_START_DATE'] == '1970-01-01') $sub['BL_START_DATE'] = '';
        	if($sub['DATE_ACCEPTED'] == '1970-01-01') $sub['DATE_ACCEPTED'] = '';
        	if($sub['DATE_CONTRACT'] == '1970-01-01') $sub['DATE_CONTRACT'] = '';
        	if($sub['DATE_COMMENCED'] == '1970-01-01') $sub['DATE_COMMENCED'] = '';
        	if($sub['DATE_COMPLETED'] == '1970-01-01') $sub['DATE_COMPLETED'] = '';	
        	if($sub['DATE_ANCHORAGED'] == '1970-01-01') $sub['DATE_ANCHORAGED'] = '';	
        	if($sub['DATE_KEY_MEETING'] == '1970-01-01') $sub['DATE_KEY_MEETING'] = '';	
        	if($sub['DATE_OF_ANALYSIS'] == '1970-01-01') $sub['DATE_OF_ANALYSIS'] = '';	
        	if($sub['DATE_VESSEL_ARRIVED'] == '1970-01-01') $sub['DATE_VESSEL_ARRIVED'] = '';	
        	if($sub['DISCHARGE_START_DATE'] == '1970-01-01') $sub['DISCHARGE_START_DATE'] = '';	
        	if($sub['LOADING_COMPLETE_DATE'] == '1970-01-01') $sub['LOADING_COMPLETE_DATE'] = '';	
        	if($sub['DATE_DOCUMENTS_ONBOARD'] == '1970-01-01') $sub['DATE_DOCUMENTS_ONBOARD'] = '';	
        	if($sub['DATE_LOADING_COMMENCED'] == '1970-01-01') $sub['DATE_LOADING_COMMENCED'] = '';	
        	if($sub['DATE_LOADING_COMPLETED'] == '1970-01-01') $sub['DATE_LOADING_COMPLETED'] = '';	
        	if($sub['DATE_SURVEYOR_ON_BOARD'] == '1970-01-01') $sub['DATE_SURVEYOR_ON_BOARD'] = '';	
        	if($sub['DATE_SAMPLING_COMMENCED'] == '1970-01-01') $sub['DATE_SAMPLING_COMMENCED'] = '';	
        	if($sub['DATE_SAMPLING_COMPLETED'] == '1970-01-01') $sub['DATE_SAMPLING_COMPLETED'] = '';	
        	if($sub['DISCHARGE_COMPLETE_DATE'] == '1970-01-01') $sub['DISCHARGE_COMPLETE_DATE'] = '';	
        	if($sub['DATE_CONNECTED_COMMENCED'] == '1970-01-01') $sub['DATE_CONNECTED_COMMENCED'] = '';	
        	if($sub['DATE_CONNECTED_COMPLETED'] == '1970-01-01') $sub['DATE_CONNECTED_COMPLETED'] = '';	
        	if($sub['DATE_MEASUREMENT_COMMENCED'] == '1970-01-01') $sub['DATE_MEASUREMENT_COMMENCED'] = '';	
        	if($sub['DATE_MEASUREMENT_COMPLETED'] == '1970-01-01') $sub['DATE_MEASUREMENT_COMPLETED'] = '';	
        	if($sub['DATE_HOSE_DISCONNECTED'] == '1970-01-01') $sub['DATE_HOSE_DISCONNECTED'] = '';	
        	if($sub['DATE_DISCHARGE_COMPLETED'] == '1970-01-01') $sub['DATE_DISCHARGE_COMPLETED'] = '';	
        	if($sub['DATE_INPECTION_COMMENCED'] == '1970-01-01') $sub['DATE_INPECTION_COMMENCED'] = '';	
        	if($sub['DATE_INSPECTION_COMPLETED'] == '1970-01-01') $sub['DATE_INSPECTION_COMPLETED'] = '';	
        	if($sub['DATE_HOSE_CONNECTED_COMMENCED'] == '1970-01-01') $sub['DATE_HOSE_CONNECTED_COMMENCED'] = '';	
        	if($sub['DATE_HOSE_CONNECTED_COMPLETED'] == '1970-01-01') $sub['DATE_HOSE_CONNECTED_COMPLETED'] = '';	
        	if($sub['DATE_CARGO_MEASUREMENT_COMMENCED'] == '1970-01-01') $sub['DATE_CARGO_MEASUREMENT_COMMENCED'] = '';	
        	if($sub['DATE_CARGO_MEASUREMENT_COMPLETED'] == '1970-01-01') $sub['DATE_CARGO_MEASUREMENT_COMPLETED'] = '';	
        	if($sub['DATE_LOISPKPOWONOA'] == '1970-01-01') $sub['DATE_LOISPKPOWONOA'] = '';	
        	if($sub['DATE_VESSEL_SAILED'] == '1970-01-01') $sub['DATE_VESSEL_SAILED'] = '';	
        	if($sub['LOADING_START_DATE'] == '1970-01-01') $sub['LOADING_START_DATE'] = '';	

        	$sub['BUYER']    = str_replace('"',"", $sub['BUYER']);
        	$sub['SELLER']   = str_replace('"',"", $sub['SELLER']);
        	$sub['TRADER']   = str_replace('"',"", $sub['TRADER']);
        	$sub['SUPPLIER'] = str_replace('"',"", $sub['SUPPLIER']);
        	$sub['PRODUCT']  = str_replace('"',"", $sub['PRODUCT']);
        	$sub['SHARING_FEE'] = str_replace('"',"", $sub['SHARING_FEE']);
        	$sub['PORT_TERMINAL'] = str_replace('"',"", $sub['PORT_TERMINAL']);

            $spreadsheet->setActiveSheetIndex(0)
                    ->setCellValue("A$x",$no)
                    ->setCellValue("B$x",$sub['SC'])
                    ->setCellValue("C$x",$sub['IWO'])
                    ->setCellValue("D$x",$sub['SPK'])
                    ->setCellValue("E$x",$sub['VOY'])
                    ->setCellValue("F$x",$sub['AREA'])
                    ->setCellValue("G$x",$sub['SUPPLIER'])
                    ->setCellValue("H$x",$sub['BUYER'])
                    ->setCellValue("I$x",$sub['SELLER'])
                    ->setCellValue("J$x",$sub['TRADER'])
                    ->setCellValue("K$x",$sub['KONTRAK'])
                    ->setCellValue("L$x",$sub['PRODUCT'])
                    ->setCellValue("M$x",$sub['DATE_NOR'])
                    ->setCellValue("N$x",$sub['TIME_NOR'])
                    ->setCellValue("O$x",$sub['FWAL_BBLS'])
                    ->setCellValue("P$x",$sub['FWAL_KL15'])
                    ->setCellValue("Q$x",$sub['FILE_ORDER'])
                    ->setCellValue("R$x",$sub['FWAL_KLOBS'])
                    ->setCellValue("S$x",$sub['REMARKS_NOR'])
                    ->setCellValue("T$x",$sub['SELECT_PORT'])
                    ->setCellValue("U$x",$sub['SHARING_FEE'])
                    ->setCellValue("V$x",$sub['SL_GSV_BBLS'])
                    ->setCellValue("W$x",$sub['SL_GSV_KL15'])
                    ->setCellValue("X$x",$sub['DATE_BERTHED'])
                    ->setCellValue("Y$x",$sub['FWAL_LONGTON'])
                    ->setCellValue("Z$x",$sub['PRODUCT_TYPE'])
                    ->setCellValue("AA$x",$sub['SELECT_CARGO'])
                    ->setCellValue("AB$x",$sub['SL_GSV_KLOBS'])
                    ->setCellValue("AC$x",$sub['TIME_BERTHED'])
                    ->setCellValue("AD$x",$sub['BL_START_DATE'])
                    ->setCellValue("AE$x",$sub['BL_START_TIME'])
                    ->setCellValue("AF$x",$sub['DATE_ACCEPTED'])
                    ->setCellValue("AG$x",$sub['DATE_CONTRACT'])
                    ->setCellValue("AH$x",$sub['PORT_TERMINAL'])
                    ->setCellValue("AI$x",$sub['SAMPLE_SOURCE'])
                    ->setCellValue("AJ$x",$sub['SELECT_CLIENT'])
                    ->setCellValue("AK$x",$sub['SFAL_TOV_BBLS'])
                    ->setCellValue("AL$x",$sub['SFAL_TOV_KL15'])
                    ->setCellValue("AM$x",$sub['ST_NOMINATION'])
                    ->setCellValue("AN$x",$sub['TIME_ACCEPTED'])
                    ->setCellValue("AO$x",$sub['DATE_COMMENCED'])
                    ->setCellValue("AP$x",$sub['DATE_COMPLETED'])
                    ->setCellValue("AQ$x",$sub['FWAL_METRICTON'])
                    ->setCellValue("AR$x",$sub['SELECT_PRODUCT'])
                    ->setCellValue("AS$x",$sub['SFAL_TOV_KLOBS'])
                    ->setCellValue("AT$x",$sub['SL_GSV_LONGTON'])
                    ->setCellValue("AU$x",$sub['TIME_COMMENCED'])
                    ->setCellValue("AV$x",$sub['TIME_COMPLETED'])
                    ->setCellValue("AW$x",$sub['DATE_ANCHORAGED'])
                    ->setCellValue("AX$x",$sub['REMARKS_BERTHED'])
                    ->setCellValue("AY$x",$sub['RN_LETTER_ISSUE'])
                    ->setCellValue("AZ$x",$sub['RN_NOTICE_ISSUE'])
                    ->setCellValue("BA$x",$sub['TIME_ANCHORAGED'])
                    ->setCellValue("BB$x",$sub['BL_QUANTITY_BBLS'])
                    ->setCellValue("BC$x",$sub['BL_QUANTITY_KL15'])
                    ->setCellValue("BD$x",$sub['DATE_KEY_MEETING'])
                    ->setCellValue("BE$x",$sub['DATE_OF_ANALYSIS'])
                    ->setCellValue("BF$x",$sub['REMARKS_ACCEPTED'])
                    ->setCellValue("BG$x",$sub['SF_QUANTITY_BBLS'])
                    ->setCellValue("BH$x",$sub['SF_QUANTITY_KL15'])
                    ->setCellValue("BI$x",$sub['SFAL_TOV_LONGTON'])
                    ->setCellValue("BJ$x",$sub['SL_GSV_METRICTON'])
                    ->setCellValue("BK$x",$sub['TIME_KEY_MEETING'])
                    ->setCellValue("BL$x",$sub['VEF_LOADING_BBLS'])
                    ->setCellValue("BM$x",$sub['BL_QUANTITY_KLOBS'])
                    ->setCellValue("BN$x",$sub['BO_MDO_ON_ARRIVAL'])
                    ->setCellValue("BO$x",$sub['BO_MFO_ON_ARRIVAL'])
                    ->setCellValue("BP$x",$sub['OBQ_QUANTITY_BBLS'])
                    ->setCellValue("BQ$x",$sub['OBQ_QUANTITY_KL15'])
                    ->setCellValue("BR$x",$sub['REMARKS_COMMENCED'])
                    ->setCellValue("BS$x",$sub['REMARKS_COMPLETED'])
                    ->setCellValue("BT$x",$sub['SF_QUANTITY_KLOBS'])
                    ->setCellValue("BU$x",$sub['SL_VS_BOL_R1_BBLS'])
                    ->setCellValue("BV$x",$sub['SL_VS_BOL_R1_KL15'])
                    ->setCellValue("BW$x",$sub['ACTIVITIES_REMARKS'])
                    ->setCellValue("BX$x",$sub['DATE_LOISPKPOWONOA'])
                    ->setCellValue("BY$x",$sub['DATE_VESSEL_SAILED'])
                    ->setCellValue("BZ$x",$sub['LOADING_START_DATE'])
                    ->setCellValue("CA$x",$sub['LOADING_START_TIME'])
                    ->setCellValue("CB$x",$sub['OBQ_QUANTITY_KLOBS'])
                    ->setCellValue("CC$x",$sub['REMARKS_ANCHORAGED'])
                    ->setCellValue("CD$x",$sub['RN_STATEMENT_ISSUE'])
                    ->setCellValue("CE$x",$sub['SFAL_TOV_METRICTON'])
                    ->setCellValue("CF$x",$sub['SL_VS_BOL_R1_KLOBS'])
                    ->setCellValue("CG$x",$sub['TIME_VESSEL_SAILED'])
                    ->setCellValue("CH$x",$sub['BL_QUANTITY_LONGTON'])
                    ->setCellValue("CI$x",$sub['BO_MDO_ON_DEPARTURE'])
                    ->setCellValue("CJ$x",$sub['BO_MFO_ON_DEPARTURE'])
                    ->setCellValue("CK$x",$sub['CLIENT_SITE_ID_FORM'])
                    ->setCellValue("CL$x",$sub['DATE_HOSE_CONNECTED'])
                    ->setCellValue("CM$x",$sub['DATE_VESSEL_ARRIVED'])
                    ->setCellValue("CN$x",$sub['REMARKS_KEY_MEETING'])
                    ->setCellValue("CO$x",$sub['SELECT_INTERVENTION'])
                    ->setCellValue("CP$x",$sub['SF_QUANTITY_LONGTON'])
                    ->setCellValue("CQ$x",$sub['TIME_HOSE_CONNECTED'])
                    ->setCellValue("CR$x",$sub['TIME_VESSEL_ARRIVED'])
                    ->setCellValue("CS$x",$sub['DISCHARGE_START_DATE'])
                    ->setCellValue("CT$x",$sub['DISCHARGE_START_TIME'])
                    ->setCellValue("CU$x",$sub['OBQ_QUANTITY_LONGTON'])
                    ->setCellValue("CV$x",$sub['SL_APPLIED_VEFL_BBLS'])
                    ->setCellValue("CW$x",$sub['SL_VS_BOL_R1_LONGTON'])
                    ->setCellValue("CX$x",$sub['BL_15_DERAJAT_CELCIUS'])
                    ->setCellValue("CY$x",$sub['BL_QUANTITY_METRICTON'])
                    ->setCellValue("CZ$x",$sub['LOADING_COMPLETE_DATE'])
                    ->setCellValue("DA$x",$sub['LOADING_COMPLETE_TIME'])
                    ->setCellValue("DB$x",$sub['REMARKS_VESSEL_SAILED'])
                    ->setCellValue("DC$x",$sub['DATE_DOCUMENTS_ONBOARD'])
                    ->setCellValue("DD$x",$sub['DATE_LOADING_COMMENCED'])
                    ->setCellValue("DE$x",$sub['DATE_LOADING_COMPLETED'])
                    ->setCellValue("DF$x",$sub['DATE_SURVEYOR_ON_BOARD'])
                    ->setCellValue("DG$x",$sub['OBQ_QUANTITY_METRICTON'])
                    ->setCellValue("DH$x",$sub['REMARKS_HOSE_CONNECTED'])
                    ->setCellValue("DI$x",$sub['REMARKS_VESSEL_ARRIVED'])
                    ->setCellValue("DJ$x",$sub['SF_QUANTITY_METRICTON'])
                    ->setCellValue("DK$x",$sub['SL_VS_BOL_R1_METRICTON'])
                    ->setCellValue("DL$x",$sub['TIME_DOCUMENTS_ONBOARD'])
                    ->setCellValue("DM$x",$sub['TIME_LOADING_COMMENCED'])
                    ->setCellValue("DN$x",$sub['TIME_LOADING_COMPLETED'])
                    ->setCellValue("DO$x",$sub['TIME_SURVEYOR_ON_BOARD'])
                    ->setCellValue("DP$x",$sub['DATE_SAMPLING_COMMENCED'])
                    ->setCellValue("DQ$x",$sub['DATE_SAMPLING_COMPLETED'])
                    ->setCellValue("DR$x",$sub['DISCHARGE_COMPLETE_DATE'])
                    ->setCellValue("DS$x",$sub['DISCHARGE_COMPLETE_TIME'])
                    ->setCellValue("DT$x",$sub['SC_ON_ARRIVAL_DRAFT_AFT'])
                    ->setCellValue("DU$x",$sub['SC_ON_ARRIVAL_DRAFT_FWD'])
                    ->setCellValue("DV$x",$sub['TIME_SAMPLING_COMMENCED'])
                    ->setCellValue("DW$x",$sub['TIME_SAMPLING_COMPLETED'])
                    ->setCellValue("DX$x",$sub['DATE_CONNECTED_COMMENCED'])
                    ->setCellValue("DY$x",$sub['DATE_CONNECTED_COMPLETED'])
                    ->setCellValue("DZ$x",$sub['SC_ON_ARRIVAL_DRAFT_LIST'])
                    ->setCellValue("EA$x",$sub['TIME_CONNECTED_COMMENCED'])
                    ->setCellValue("EB$x",$sub['TIME_CONNECTED_COMPLETED'])
                    ->setCellValue("EC$x",$sub['REMARKS_DOCUMENTS_ONBOARD'])
                    ->setCellValue("ED$x",$sub['REMARKS_LOADING_COMMENCED'])
                    ->setCellValue("EE$x",$sub['REMARKS_LOADING_COMPLETED'])
                    ->setCellValue("EF$x",$sub['REMARKS_SURVEYOR_ON_BOARD'])
                    ->setCellValue("EG$x",$sub['SC_ON_DEPARTURE_DRAFT_AFT'])
                    ->setCellValue("EH$x",$sub['SC_ON_DEPARTURE_DRAFT_FWD'])
                    ->setCellValue("EI$x",$sub['DATE_MEASUREMENT_COMMENCED'])
                    ->setCellValue("EJ$x",$sub['DATE_MEASUREMENT_COMPLETED'])
                    ->setCellValue("EK$x",$sub['REMARKS_SAMPLING_COMMENCED'])
                    ->setCellValue("EL$x",$sub['REMARKS_SAMPLING_COMPLETED'])
                    ->setCellValue("EM$x",$sub['SC_ON_DEPARTURE_DRAFT_LIST'])
                    ->setCellValue("EN$x",$sub['SL_VEF_APPLIED_VS_BOL_BBLS'])
                    ->setCellValue("EO$x",$sub['SL_VEF_APPLIED_VS_BOL_KL15'])
                    ->setCellValue("EP$x",$sub['TIME_MEASUREMENT_COMMENCED'])
                    ->setCellValue("EQ$x",$sub['TIME_MEASUREMENT_COMPLETED'])
                    ->setCellValue("ER$x",$sub['REMARKS_CONNECTED_COMMENCED'])
                    ->setCellValue("ES$x",$sub['REMARKS_CONNECTED_COMPLETED'])
                    ->setCellValue("ET$x",$sub['SL_VEF_APPLIED_VS_BOL_KLOBS'])
                    ->setCellValue("EU$x",$sub['REMARKS_MEASUREMENT_COMMENCED'])
                    ->setCellValue("EV$x",$sub['REMARKS_MEASUREMENT_COMPLETED'])
                    ->setCellValue("EW$x",$sub['SL_VEF_APPLIED_VS_BOL_LONGTON'])
                    ->setCellValue("EX$x",$sub['SL_VEF_APPLIED_VS_BOL_METRICTON'])
                    ->setCellValue("EY$x",$sub['IS_DELETE'])
                    ->setCellValue("EZ$x",$sub['CREATE_TIME'])
                    ->setCellValue("FA$x",$sub['CREATE_USER'])
                    ->setCellValue("FB$x",$sub['MODIFY_TIME'])
                    ->setCellValue("FC$x",$sub['MODIFY_USER'])
                    ->setCellValue("FD$x",$sub['DELETE_TIME'])
                    ->setCellValue("FE$x",$sub['CLIENT_SITE_ID'])
                    ->setCellValue("FF$x",$sub['SF_GSV_KLOBS'])
                    ->setCellValue("FG$x",$sub['SF_NSV_KLOBS'])
                    ->setCellValue("FH$x",$sub['SF_FREE_WATER_AL_BBLS'])
                    ->setCellValue("FI$x",$sub['SF_FREE_WATER_AL_KL15'])
                    ->setCellValue("FJ$x",$sub['SF_SFAL_TOV_METRICTON'])
                    ->setCellValue("FK$x",$sub['SL_APPLIED_VEFL_KLOBS'])
                    ->setCellValue("FL$x",$sub['DATE_HOSE_DISCONNECTED'])
                    ->setCellValue("FM$x",$sub['SF_FREE_WATER_AL_KLOBS'])
                    ->setCellValue("FN$x",$sub['DATE_DISCHARGE_COMPLETED'])
                    ->setCellValue("FO$x",$sub['DATE_INPECTION_COMMENCED'])
                    ->setCellValue("FP$x",$sub['SF_FREE_WATER_AL_LONGTON'])
                    ->setCellValue("FQ$x",$sub['TIME_DISCHARGE_COMMENCED'])
                    ->setCellValue("FR$x",$sub['TIME_DISCHARGE_COMPLETED'])
                    ->setCellValue("FS$x",$sub['TIME_INPECTION_COMMENCED'])
                    ->setCellValue("FT$x",$sub['DATE_INSPECTION_COMPLETED'])
                    ->setCellValue("FU$x",$sub['REMARKS_HOSE_DISCONNECTED'])
                    ->setCellValue("FV$x",$sub['SL_APPLIED_VEFL_METRICTON'])
                    ->setCellValue("FW$x",$sub['TIME_INSPECTION_COMPLETED'])
                    ->setCellValue("FX$x",$sub['SF_FREE_WATER_AL_METRICTON'])
                    ->setCellValue("FY$x",$sub['REMARKS_DISCHARGE_COMMENCED'])
                    ->setCellValue("FZ$x",$sub['REMARKS_DISCHARGE_COMPLETED'])
                    ->setCellValue("GA$x",$sub['REMARKS_INPECTION_COMMENCED'])
                    ->setCellValue("GB$x",$sub['REMARKS_INSPECTION_COMPLETED'])
                    ->setCellValue("GC$x",$sub['DATE_HOSE_CONNECTED_COMMENCED'])
                    ->setCellValue("GD$x",$sub['DATE_HOSE_CONNECTED_COMPLETED'])
                    ->setCellValue("GE$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_BBLS'])
                    ->setCellValue("GF$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_KL15'])
                    ->setCellValue("GG$x",$sub['TIME_HOSE_CONNECTED_COMMENCED'])
                    ->setCellValue("GH$x",$sub['TIME_HOSE_CONNECTED_COMPLETED'])
                    ->setCellValue("GI$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_KLOBS'])
                    ->setCellValue("GJ$x",$sub['SF_SHORE_TANKS_NOMINATION_KLOBS'])
                    ->setCellValue("GK$x",$sub['DATE_CARGO_MEASUREMENT_COMMENCED'])
                    ->setCellValue("GL$x",$sub['DATE_CARGO_MEASUREMENT_COMPLETED'])
                    ->setCellValue("GM$x",$sub['REMARKS_HOSE_CONNECTED_COMMENCED'])
                    ->setCellValue("GN$x",$sub['REMARKS_HOSE_CONNECTED_COMPLETED'])
                    ->setCellValue("GO$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_LONGTON'])
                    ->setCellValue("GP$x",$sub['TIME_CARGO_MEASUREMENT_COMMENCED'])
                    ->setCellValue("GQ$x",$sub['TIME_CARGO_MEASUREMENT_COMPLETED'])
                    ->setCellValue("GR$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_METRICTON'])
                    ->setCellValue("GS$x",$sub['REMARKS_CARGO_MEASUREMENT_COMMENCED'])
                    ->setCellValue("GT$x",$sub['REMARKS_CARGO_MEASUREMENT_COMPLETED'])
                    ->setCellValue("GU$x",$sub['BL_FLOW_METER'])
                    ->setCellValue("GV$x",$sub['BL_SHORE_TANK'])
                    ->setCellValue("GW$x",$sub['BL_SHIP_TANK'])
                    ->setCellValue("GX$x",$sub['FSOQ'])
                    ->setCellValue("GY$x",$sub['SURVEYOR_IN_CHARGE'])
                    ->setCellValue("GZ$x",$sub['RN_NOTICE_ISSUE_DESCRIPTION'])
                    ->setCellValue("HA$x",$sub['RN_LETTER_ISSUE_DESCRIPTION'])
                    ->setCellValue("HB$x",$sub['RN_STATEMENT_ISSUE_DESCRIPTION'])
                    ->setCellValue("HC$x",$sub['DATE_A_AWEIGH'])
                    ->setCellValue("HD$x",$sub['TIME_A_AWEIGH'])
                    ->setCellValue("HE$x",$sub['DATE_POB'])
                    ->setCellValue("HF$x",$sub['TIME_POB'])
                    ->setCellValue("HG$x",$sub['DATE_BERTHING'])
                    ->setCellValue("HH$x",$sub['TIME_BERTHING'])
                    ->setCellValue("HI$x",$sub['DATE_SBD_COMMENCED'])
                    ->setCellValue("HJ$x",$sub['DATE_SBD_COMPLETED'])
                    ->setCellValue("HK$x",$sub['TIME_SBD_COMMENCED'])
                    ->setCellValue("HL$x",$sub['TIME_SBD_COMPLETED'])
                    ->setCellValue("HM$x",$sub['DATE_DISCHARGE_COMMENCED'])
                    ->setCellValue("HN$x",$sub['DATE_TANKS_INS_COMMENCED'])
                    ->setCellValue("HO$x",$sub['TIME_TANKS_INS_COMMENCED'])
                    ->setCellValue("HP$x",$sub['DATE_TANKS_INS_COMPLETED'])
                    ->setCellValue("HQ$x",$sub['TIME_TANKS_INS_COMPLETED'])
                    ->setCellValue("HR$x",$sub['DATE_SVY_LEFT_VESSEL'])
                    ->setCellValue("HS$x",$sub['TIME_SVY_LEFT_VESSEL'])
                    ->setCellValue("HT$x",$sub['DATE_VESSEL_SAIL'])
                    ->setCellValue("HU$x",$sub['TIME_VESSEL_SAIL'])
                    ->setCellValue("HV$x",$sub['TIME_HOSE_DISCONNECTED'])
                    ->setCellValue("HW$x",$sub['BL_SFAL_KLOBS'])
                    ->setCellValue("HX$x",$sub['BL_SFAL_KL15'])
                    ->setCellValue("HY$x",$sub['BL_SFAL_BBLS'])
                    ->setCellValue("HZ$x",$sub['BL_SFAL_METRICTON'])
                    ->setCellValue("IA$x",$sub['BL_SFAL_LONGTON'])
                    ->setCellValue("IB$x",$sub['SF_SFAL_KLOBS'])
                    ->setCellValue("IC$x",$sub['SF_SFAL_KL15'])
                    ->setCellValue("ID$x",$sub['SF_SFAL_BBLS'])
                    ->setCellValue("IE$x",$sub['SF_SFAL_METRICTON'])
                    ->setCellValue("IF$x",$sub['SF_SFAL_LONGTON'])
                    ->setCellValue("IG$x",$sub['SFBD_TOV_KLOBS'])
                    ->setCellValue("IH$x",$sub['SFBD_TOV_KL15'])
                    ->setCellValue("II$x",$sub['SFBD_TOV_BBLS'])
                    ->setCellValue("IJ$x",$sub['SFBD_TOV_METRICTON'])
                    ->setCellValue("IK$x",$sub['SFBD_TOV_LONGTON'])
                    ->setCellValue("IL$x",$sub['SFBD_GSV_KLOBS'])
                    ->setCellValue("IM$x",$sub['SFBD_GSV_KL15'])
                    ->setCellValue("IN$x",$sub['SFBD_GSV_BBLS'])
                    ->setCellValue("IO$x",$sub['SFBD_GSV_METRICTON'])
                    ->setCellValue("IP$x",$sub['SFBD_GSV_LONGTON'])
                    ->setCellValue("IQ$x",$sub['ROBQ_KLOBS'])
                    ->setCellValue("IR$x",$sub['ROBQ_KL15'])
                    ->setCellValue("IS$x",$sub['ROBQ_BBLS'])
                    ->setCellValue("IT$x",$sub['ROBQ_METRICTON'])
                    ->setCellValue("IU$x",$sub['ROBQ_LONGTON'])

                    ->setCellValue("IV$x",$sub['VESSEL'])

                    ->setCellValue("IW$x",$sub['SLVS_BOL_R1_KLOBS'])
                    ->setCellValue("IX$x",$sub['SLVS_BOL_R1_KL15'])
                    ->setCellValue("IY$x",$sub['SLVS_BOL_R1_BBLS'])
                    ->setCellValue("IZ$x",$sub['SLVS_BOL_R1_LONGTON'])
                    ->setCellValue("JA$x",$sub['SLVS_BOL_R1_METRICTON'])

                    ->setCellValue("JB$x",$sub['SFAL_VS_SFBD_R2_KLOBS'])
                    ->setCellValue("JC$x",$sub['SFAL_VS_SFBD_R2_KL15'])
                    ->setCellValue("JD$x",$sub['SFAL_VS_SFBD_R2_BBLS'])
                    ->setCellValue("JE$x",$sub['SFAL_VS_SFBD_R2_LONGTON'])
                    ->setCellValue("JF$x",$sub['SFAL_VS_SFBD_R2_METRICTON'])

                    ->setCellValue("JG$x",$sub['SFBD_VS_SR_R3_KLOBS'])
                    ->setCellValue("JH$x",$sub['SFBD_VS_SR_R3_KL15'])
                    ->setCellValue("JI$x",$sub['SFBD_VS_SR_R3_BBLS'])
                    ->setCellValue("JJ$x",$sub['SFBD_VS_SR_R3_LONGTON'])
                    ->setCellValue("JK$x",$sub['SFBD_VS_SR_R3_METRICTON'])

                    ->setCellValue("JL$x",$sub['SR_VS_BOL_R4_KLOBS'])
                    ->setCellValue("JM$x",$sub['SR_VS_BOL_R4_KL15'])
                    ->setCellValue("JN$x",$sub['SR_VS_BOL_R4_BBLS'])
                    ->setCellValue("JO$x",$sub['SR_VS_BOL_R4_LONGTON'])
                    ->setCellValue("JP$x",$sub['SR_VS_BOL_R4_METRICTON']);
            $x++;
        }
// Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('rekap_laporan_'.date('d_m_Y_h_i'));

// set right to left direction
//        $spreadsheet->getActiveSheet()->setRightToLeft(true);

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

// Redirect output to a client’s web browser (Excel2007)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="rekap_laporan_'.date('d_m_Y_h_i').'.xlsx"');
        header('Cache-Control: max-age=0');
// If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

// If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Excel2007');
        $writer->save('php://output');
        exit;
        //  create new file and remove Compatibility mode from word title
    }

}