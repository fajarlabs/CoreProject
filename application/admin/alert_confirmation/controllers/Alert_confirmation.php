<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alert_confirmation extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("user/User_model","Alert_confirmation_model","client_site/Client_site_model","running_text/Running_text_model","sms_gateway/Outbox_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js']  = '
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
				});
			</script>';	
		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);

		$this->data['osess'] = $this->session->userdata("osess");
		$this->data['error_message'] = $this->session->flashdata("error_message");
	}

	public function index()
	{
		$this->data['sites'] = $this->Client_site_model->get_all_items(); 		
		$this->data['title'] = "Alert Confirmation Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('alert_confirmation_view',$this->data);
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

		/* get query data */
		$query  = $this->Alert_confirmation_model->get_all_items($offset,$rows,$filterRules);

		$json_object = new stdClass();
		$temp_row = array();

		/* filter fields */
		$fields   = array();
		$fields[] = 'SL_VS_BOL_R1_BBLS';
		$fields[] = 'SL_VS_BOL_R1_KL15';
		$fields[] = 'SL_VS_BOL_R1_KLOBS';
		$fields[] = 'SL_VS_BOL_R1_LONGTON';
		$fields[] = 'SL_VS_BOL_R1_METRICTON';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_BBLS';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_KL15';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_KLOBS';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_LONGTON';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_METRICTON';
		$fields[] = 'SLVS_BOL_R1_KLOBS';
		$fields[] = 'SLVS_BOL_R1_KL15';
		$fields[] = 'SLVS_BOL_R1_BBLS';
		$fields[] = 'SLVS_BOL_R1_LONGTON';
		$fields[] = 'SLVS_BOL_R1_METRICTON';
		$fields[] = 'SFAL_VS_SFBD_R2_KLOBS';
		$fields[] = 'SFAL_VS_SFBD_R2_KL15';
		$fields[] = 'SFAL_VS_SFBD_R2_BBLS';
		$fields[] = 'SFAL_VS_SFBD_R2_LONGTON';
		$fields[] = 'SFAL_VS_SFBD_R2_METRICTON';
		$fields[] = 'SFBD_VS_SR_R3_KLOBS';
		$fields[] = 'SFBD_VS_SR_R3_KL15';
		$fields[] = 'SFBD_VS_SR_R3_BBLS';
		$fields[] = 'SFBD_VS_SR_R3_LONGTON';
		$fields[] = 'SFBD_VS_SR_R3_METRICTON';
		$fields[] = 'SR_VS_BOL_R4_KLOBS';
		$fields[] = 'SR_VS_BOL_R4_KL15';
		$fields[] = 'SR_VS_BOL_R4_BBLS';
		$fields[] = 'SR_VS_BOL_R4_LONGTON';
		$fields[] = 'SR_VS_BOL_R4_METRICTON';


		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$is_losses = false;
				$arr_string = array();
				foreach($fields as $key => $val) {
					if(@$row->$val != "") {
						$value = floatval($row->$val);
						if($value < 0) {
							if(!$is_losses) $is_losses = true;

							$style = "color:#ff0000;font-weight:bold;";
						} else {
							$style = "color:#000000;";
						}
						$arr_string[] = '<label style=\''.$style.'\'>'.$val.' : '.$row->$val.'</label>';
					}
				}
				$row->STRING = implode("<br />",$arr_string);
				/* modificated */
				$row->CTIME  = date('d-m-Y H:i:s',strtotime($row->CTIME));
				$row->FUNGSI = '';

				if($is_losses) {
					$row->FUNGSI .= '<a href="'.base_url().'index.php/alert_confirmation/single_broadcast/'.$row->FEFID.'"
					onclick="confirm_single_broadcast(event)" class="btn btn-warning btn-xs"><i class="fa fa-envelope"></i> Push</a>';
				} else {
					$row->FUNGSI .= '<a href="javascript:;" onclick="alert(\'No Losses!\')" class="btn btn-default btn-xs"><i class="fa fa-envelope"></i> Push</a>';
				}

				$row->FUNGSI .= ' <a href="javascript:;" onclick="show_message(this)" msg-data="'.$row->STRING.'" class="btn btn-success btn-xs"><i class="fa fa-eye"></i> View</a>';
				$row->PRODUCT_TYPE = ucfirst($row->PRODUCT_TYPE);
				$row->SELECT_CARGO = ucwords(str_replace("_", " ", $row->SELECT_CARGO));
				$temp_row[]  = $row;
			}
		}

		$json_object->total = $this->Alert_confirmation_model->count_all_items($filterRules);
		$json_object->rows  = @$temp_row;

		header('Content-Type: application/json');
		echo json_encode($json_object);

	}

	public function single_broadcast($id=0)
	{	
		// show in 1 day
		$start_time = date('Y-m-d H:i:s');
		$date = new DateTime($start_time);
		$date->add(new DateInterval('P1D'));
		$stop_time = $date->format('Y-m-d H:i:s');
		$is_losses = false;

		$query = $this->Alert_confirmation_model->get_item_by_id($id);	
		/* filter fields */
		$fields   = array();
		$fields[] = 'SL_VS_BOL_R1_BBLS';
		$fields[] = 'SL_VS_BOL_R1_KL15';
		$fields[] = 'SL_VS_BOL_R1_KLOBS';
		$fields[] = 'SL_VS_BOL_R1_LONGTON';
		$fields[] = 'SL_VS_BOL_R1_METRICTON';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_BBLS';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_KL15';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_KLOBS';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_LONGTON';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_METRICTON';
		$fields[] = 'SLVS_BOL_R1_KLOBS';
		$fields[] = 'SLVS_BOL_R1_KL15';
		$fields[] = 'SLVS_BOL_R1_BBLS';
		$fields[] = 'SLVS_BOL_R1_LONGTON';
		$fields[] = 'SLVS_BOL_R1_METRICTON';
		$fields[] = 'SFAL_VS_SFBD_R2_KLOBS';
		$fields[] = 'SFAL_VS_SFBD_R2_KL15';
		$fields[] = 'SFAL_VS_SFBD_R2_BBLS';
		$fields[] = 'SFAL_VS_SFBD_R2_LONGTON';
		$fields[] = 'SFAL_VS_SFBD_R2_METRICTON';
		$fields[] = 'SFBD_VS_SR_R3_KLOBS';
		$fields[] = 'SFBD_VS_SR_R3_KL15';
		$fields[] = 'SFBD_VS_SR_R3_BBLS';
		$fields[] = 'SFBD_VS_SR_R3_LONGTON';
		$fields[] = 'SFBD_VS_SR_R3_METRICTON';
		$fields[] = 'SR_VS_BOL_R4_KLOBS';
		$fields[] = 'SR_VS_BOL_R4_KL15';
		$fields[] = 'SR_VS_BOL_R4_BBLS';
		$fields[] = 'SR_VS_BOL_R4_LONGTON';
		$fields[] = 'SR_VS_BOL_R4_METRICTON';
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$arr_string = array();
				foreach($fields as $key => $val) {
					if(@$row->$val != "") {
						$value = floatval($row->$val);
						if($value < 0) {
							$is_losses = true;
							$arr_string[] = strtolower($val).':'.number_format(floatval($row->$val), 2, '.', ',');
						}
						
					}
				}

				// checking losses
				if($is_losses && (count($arr_string) > 0)) {
					// save to running text
					$date = new DateTime($row->CREATE_TIME);
					$new_dateformat = $date->format('d-m-Y H:i:s');
					$message = $row->AREA.",".$row->PRODUCT.",".($row->VESSEL != "" ? $row->VESSEL."," : "").$new_dateformat.",".implode(",",$arr_string);

					$insert = array(
						'MESSAGE'            => addslashes($message),
						'DISPLAY_START_TIME' => $start_time,
						'DISPLAY_STOP_TIME'  => $stop_time,
						'CLIENT_SITE_ID'     => $row->CLIENT_SITE_ID,
						'IS_DELETE'          => 0,
					);
					$this->Running_text_model->save($insert);

					/* Send SMS */
					
					if(strlen($message) > 130) {
						$message = substr($message, 0, 100);
						$message .= '... see more in apps.';
					}

					$query_specific = $this->Alert_confirmation_model->get_subscriber_specific($row->ID);
					if($query_specific->num_rows() > 0) {
						foreach($query_specific->result() as $row_specific) {
							$this->Outbox_model->save(
								array(
									'DestinationNumber' => trim($row_specific->PHONE),
									'TextDecoded'       => $message,
									'CreatorID'         => 'Gammu'
								)
							);
						}
					}

					/* push alert */
					$this->Alert_confirmation_model->check_alert_push($row->ID);
				}
			}
		}

		redirect("/alert_confirmation");
	}

	public function broadcast_all() 
	{
		// show in 1 day
		$start_time = date('Y-m-d H:i:s');
		$date = new DateTime($start_time);
		$date->add(new DateInterval('P1D'));
		$stop_time = $date->format('Y-m-d H:i:s');
		$is_losses = false;

		$query = $this->Alert_confirmation_model->get_subscriber_all();	
		/* filter fields */
		$fields   = array();
		$fields[] = 'SL_VS_BOL_R1_BBLS';
		$fields[] = 'SL_VS_BOL_R1_KL15';
		$fields[] = 'SL_VS_BOL_R1_KLOBS';
		$fields[] = 'SL_VS_BOL_R1_LONGTON';
		$fields[] = 'SL_VS_BOL_R1_METRICTON';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_BBLS';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_KL15';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_KLOBS';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_LONGTON';
		$fields[] = 'SL_VEF_APPLIED_VS_BOL_METRICTON';
		$fields[] = 'SLVS_BOL_R1_KLOBS';
		$fields[] = 'SLVS_BOL_R1_KL15';
		$fields[] = 'SLVS_BOL_R1_BBLS';
		$fields[] = 'SLVS_BOL_R1_LONGTON';
		$fields[] = 'SLVS_BOL_R1_METRICTON';
		$fields[] = 'SFAL_VS_SFBD_R2_KLOBS';
		$fields[] = 'SFAL_VS_SFBD_R2_KL15';
		$fields[] = 'SFAL_VS_SFBD_R2_BBLS';
		$fields[] = 'SFAL_VS_SFBD_R2_LONGTON';
		$fields[] = 'SFAL_VS_SFBD_R2_METRICTON';
		$fields[] = 'SFBD_VS_SR_R3_KLOBS';
		$fields[] = 'SFBD_VS_SR_R3_KL15';
		$fields[] = 'SFBD_VS_SR_R3_BBLS';
		$fields[] = 'SFBD_VS_SR_R3_LONGTON';
		$fields[] = 'SFBD_VS_SR_R3_METRICTON';
		$fields[] = 'SR_VS_BOL_R4_KLOBS';
		$fields[] = 'SR_VS_BOL_R4_KL15';
		$fields[] = 'SR_VS_BOL_R4_BBLS';
		$fields[] = 'SR_VS_BOL_R4_LONGTON';
		$fields[] = 'SR_VS_BOL_R4_METRICTON';
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$arr_string = array();
				foreach($fields as $key => $val) {
					if(@$row->$val != "" || @$row->$val = " " || @$row->$val == NULL ) {
						$value = floatval($row->$val);
						if($value < 0) {
							$is_losses = true;
							$arr_string[] = strtolower($val).':'.number_format(floatval($row->$val), 2, '.', ',');
						}
						
					}
				}

				// checking losses
				if($is_losses && (count($arr_string) > 0)) {
					// save to running text
					$date = new DateTime($row->CREATE_TIME);
					$new_dateformat = $date->format('d-m-Y H:i:s');
					$message = $row->AREA.",".$row->PRODUCT.",".($row->VESSEL != "" ? $row->VESSEL."," : "").$new_dateformat.",".implode(",",$arr_string);
					$insert = array(
						'MESSAGE'            => addslashes($message),
						'DISPLAY_START_TIME' => $start_time,
						'DISPLAY_STOP_TIME'  => $stop_time,
						'CLIENT_SITE_ID'     => $row->CLIENT_SITE_ID,
						'IS_DELETE'          => 0,
					);
					$this->Running_text_model->save($insert);

					/* Send SMS */
					
					if(strlen($message) > 130) {
						$message = substr($message, 0, 100);
						$message .= '... see more in apps.';
					}

					$this->Outbox_model->save(
						array(
							'DestinationNumber' => trim($row->PHONE),
							'TextDecoded'       => $message,
							'CreatorID'         => 'Gammu'
						)
					);

					/* push alert */
					$this->Alert_confirmation_model->check_alert_push($row->ID);
				}
			}
		}

		redirect("/alert_confirmation");
	}
}