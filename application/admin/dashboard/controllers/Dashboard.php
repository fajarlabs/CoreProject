<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller 
{

	private $data = array();

	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("client_site/Client_site_model","Dashboard_model","element_connection/Element_connection_model"));
		$this->data['html_css'] = '
			<style>
				.form-horizontal .control-label{
				/*  text-align:right; */
					text-align:left;
					background-color:#ffa;
				}
			</style>
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />';
    	$this->data['html_js'] = '
			<script src="'.base_url().'assets/admin/plugins/highchart/highcharts.js"></script>
			<script src="'.base_url().'assets/admin/plugins/highchart/exporting.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/js/dashboard.min.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
			<script>
				$(document).ready(function() {
					App.init();
					Dashboard.init();
					$("#dashboard").addClass("active");
					$( ".datepicker" ).datepicker({
					   format: "dd/mm/yyyy"
					});
				});
			</script>';
			
		$this->data['osess'] = $this->session->userdata("osess");
	}

	public function index()
	{ 	
		$this->data['sites'] 		= $this->Client_site_model->get_all_items();
		$this->data['product'] 		= $this->Dashboard_model->get_table_name('MASTER_PRODUCT');
		$this->data['intervensi'] 	= $this->Dashboard_model->get_table_name('MASTER_INTERVENTION');
		$this->data['client'] 		= $this->Dashboard_model->get_table_name_one('FORM_ENTRY_FIELD');
		$this->data['area'] 		= $this->Dashboard_model->get_table_group_by('FORM_ENTRY_FIELD','AREA');
		$this->data['title'] 		= "Dashboard";
		$this->load->view("admin/header",$this->data);
		$this->load->view("dashboard", $this->data);
		$this->load->view("admin/footer", $this->data);
	}

	public function chart_rest()
	{
		$produk_id 	 	 = (int)$this->input->get("produk");
		$intervention_id = (int)$this->input->get("intervensi");
		$date_month  	 = $this->input->get("bulan");
		$date_year   	 = $this->input->get("tahun");
		$client  	 	 = $this->input->get("client");
		$lokasi_kerja 	 = $this->input->get("lokasi_kerja");

		$element_timelog_id = '';
		$element_quality_id = '';
		$element_fields     = '';
		$element_r1 = '';
		$element_r2 = '';
		$element_r3 = '';
		$element_r4 = '';

		// initialize element connection
		$query_setup = $this->Element_connection_model->get_item_by_product_intervention($produk_id,$intervention_id);
		if($query_setup->num_rows() > 0) {
			foreach($query_setup->result() as $row_setup) {
				$element_timelog_id = json_decode($row_setup->ELEMENT_TIMELOG_ID);
				$element_quality_id = json_decode($row_setup->ELEMENT_QUALITY_ID);
				$element_fields     = json_decode($row_setup->ELEMENT_FIELDS);
				$element_r1         = json_decode($row_setup->ELEMENT_R1);
				$element_r2         = json_decode($row_setup->ELEMENT_R2);
				$element_r3         = json_decode($row_setup->ELEMENT_R3);
				$element_r4         = json_decode($row_setup->ELEMENT_R4);
			}
		}

		echo "<pre>";
		print_r($element_r1);
		echo "</pre>";
		die();
		$result = array();

		$query = $this->Dashboard_model->loading_stats($date_month,$date_year,$intervensi,$cst_id,$produk,$lokasi_kerja);

		/* chart column negative */
		$array_data = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->name = $row->AREA;
				$o->data = [floatval($row->R1_KLOBS), floatval($row->R1_KL15), floatval($row->R1_BBLS), floatval($row->R1_LONGTON), floatval($row->R1_METRICTON), floatval($row->R1_VEF_KLOBS), floatval($row->R1_VEF_KL15), floatval($row->R1_VEF_BBLS), floatval($row->R1_VEF_LONGTON), floatval($row->R1_VEF_METRICTON)];
				$array_data[] = $o;
			}
		}
		$result[] = $array_data;

		/* chart pie */
		$query = $this->Dashboard_model->discharge_stats($date_month,$date_year,$intervensi,$cst_id,$produk,$lokasi_kerja);
		
		/* chart column negative */
		$array_data = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->name = $row->AREA;
				$o->data = [
					floatval($row->R1_KLOBS), 
					floatval($row->R1_KL15), 
					floatval($row->R1_BBLS), 
					floatval($row->R1_LONGTON), 
					floatval($row->R1_METRICTON), 
					floatval($row->R2_KLOBS), 
					floatval($row->R2_KL15), 
					floatval($row->R2_BBLS), 
					floatval($row->R2_LONGTON), 
					floatval($row->R2_METRICTON), 
					floatval($row->R3_KLOBS), 
					floatval($row->R3_KL15), 
					floatval($row->R3_BBLS), 
					floatval($row->R3_LONGTON), 
					floatval($row->R3_METRICTON), 
					floatval($row->R4_KLOBS), 
					floatval($row->R4_KL15), 
					floatval($row->R4_BBLS), 
					floatval($row->R4_LONGTON), 
					floatval($row->R4_METRICTON)
				];
				$array_data[] = $o;
			}
		}
		$result[] = $array_data;


		header('Content-Type: application/json');
		echo json_encode($result);
	}
}
