<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller 
{

	private $data = array();

	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("client_site/Client_site_model","Dashboard_model","element_connection/Element_connection_model","form_entry/Form_entry_model"));
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
				$element_fields     = get_split_element($row_setup->ELEMENT_FIELDS);
				$element_r1         = get_split_element($row_setup->ELEMENT_R1);
				$element_r2         = get_split_element($row_setup->ELEMENT_R2);
				$element_r3         = get_split_element($row_setup->ELEMENT_R3);
				$element_r4         = get_split_element($row_setup->ELEMENT_R4);
			}
		}
		
		// fungsi untuk mendapatkan header KLOBS,BBLS dll
		// patokan data SELECT "PRODUCT_TYPE","SELECT_INTERVENTION","CLIENTS","AREA","LOADING_START_DATE" FROM "FORM_ENTRY_FIELD"
		$headers = get_header_fields();
		$array_json = array();
		foreach($headers as $k => $v) {
			// R1
			if(isset($element_r1[$v])) {
				if((is_array($element_r1[$v])) && (count($element_r1[$v]) > 0) ) {
					foreach($element_r1[$v] as $k1 => $v1) {
						$q1 = $this->Form_entry_model->get_filter_chart($v1,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						//echo $this->db->last_query();
						if($q1->num_rows() > 0) {
							$data = array();
							$data[$v1] = array();
							foreach($q1->result() as $row1) {
								$v1 = strtoupper($v1);
								array_push($data[$v1],$row1->$v1);
							}
							$array_json[$v] = $data;
						}
					}
				}
			}
			// R2
			if(isset($element_r2[$v])) {
				if((is_array($element_r2[$v])) && (count($element_r2[$v]) > 0) ) {
					foreach($element_r2[$v] as $k2 => $v2) {
						$q2 = $this->Form_entry_model->get_filter_chart($v2,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						if($q2->num_rows() > 0) {
							$data = array();
							$data[$v2] = array();
							foreach($q2->result() as $row2) {
								$v2 = strtoupper($v2);
								array_push($data[$v2],$row1->$v2);
							}
							$array_json[$v] = $data;
						}
					}
				}	
			}
			// R3
			if(isset($element_r3[$v])) {
				if((is_array($element_r3[$v])) && (count($element_r3[$v]) > 0) ) {
					foreach($element_r3[$v] as $k3 => $v3) {
						$q3 = $this->Form_entry_model->get_filter_chart($v3,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						if($q3->num_rows() > 0) {
							$data = array();
							$data[$v3] = array();
							foreach($q3->result() as $row3) {
								$v3 = strtoupper($v3);
								array_push($data[$v3],$row1->$v3);
							}
							$array_json[$v] = $data;
						}
					}
				}
			}
			// R4
			if(isset($element_r4[$v])) {
				if((is_array($element_r4[$v])) && (count($element_r4[$v]) > 0) ) {
					foreach($element_r4[$v] as $k4 => $v4) {
						$q4 = $this->Form_entry_model->get_filter_chart($v4,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						if($q4->num_rows() > 0) {
							$data = array();
							$data[$v4] = array();
							foreach($q4->result() as $row4) {
								$v4 = strtoupper($v4);
								array_push($data[$v4],$row1->$v4);
							}
							$array_json[$v] = $data;
						}	
					}	
				}
			}
		}
		
		header('Content-Type: application/json');
		echo json_encode($array_json);
	}
}
