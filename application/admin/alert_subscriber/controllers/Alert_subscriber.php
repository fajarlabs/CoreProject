<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alert_subscriber extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("user/User_model","Alert_subscriber_model","client_site/Client_site_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js']  = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function subscribe()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/alert_subscriber/subscribe/"+row.ALERT_SUBSCRIBER_ID,"_self");
				}

				function block()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/alert_subscriber/block/"+row.ALERT_SUBSCRIBER_ID,"_self");
				}

				function destroySubscriber()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/alert_subscriber/delete/"+row.ALERT_SUBSCRIBER_ID,"_self");
				}


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
		$this->data['title'] = "Alert Subscriber Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('site_selection_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function set_site() 
	{
		$this->session->set_userdata("site_id",$this->input->post("site_id"));
		redirect("alert_subscriber/tables");
	}

	public function add()
	{
		$this->data['sites'] = $this->Client_site_model->get_all_items(); 		
		$this->data['title'] = "Alert Subscriber Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('alert_subscriber_add',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function delete($id=0)
	{
		$this->Alert_subscriber_model->delete_by_id($id);
		redirect("alert_subscriber/tables");
	}

	public function search_fullname() {
		$q = $this->input->get("q");
		$query = $this->Alert_subscriber_model->search_by_fullname($this->session->userdata('site_id'),$q);
		$result_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$result_array[] = $row->FIRST_NAME.' '.$row->LAST_NAME.' | '.$row->PHONE;
			}
		}
		header('Content-Type: application/json');
		echo json_encode($result_array );
	}

	public function check_user()
	{
		$result_object = new stdClass();
		$result_object->status = false;
		$result_object->message = 'Data tidak ada!';
		$q = $this->input->get("q");
		$q = explode("|",$q);
		$array_name = @explode(" ",$q[0]);

		$query = $this->Alert_subscriber_model->check_user($this->session->userdata('site_id'),trim(@$array_name[0]),trim(@$array_name[1]),trim(@$q[1]));

		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$query_check_subscriber = $this->Alert_subscriber_model->check_user_subscriber($row->USER_ID);
				if($query_check_subscriber->num_rows() > 0) {
					$result_object->message = 'Data sudah terdaftar!';
				} else {
					$array_col_val = array(
						'USER_ID'   => $row->USER_ID,
						'SUBSCRIBE' => 'Y',
						'CREATE_TIME' => date('Y-m-d H:i:s'),
						'CLIENT_SITE_ID' => $this->session->userdata('site_id'),
						'IS_DELETE' => 0
					);

					$this->Alert_subscriber_model->save($array_col_val);
					$result_object->status = true;
					$result_object->message = 'Data baru telah tersimpan!';
				}
			}
		}

		header('Content-Type: application/json');
		echo json_encode($result_object);
	}

	public function tables() 
	{
		$this->data['sites'] = $this->Client_site_model->get_all_items(); 		
		$this->data['title'] = "Alert Subscriber Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('alert_subscriber_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function block($id=0)
	{
		$ref_query = $this->Alert_subscriber_model->get_item_by_ref_id($id);
		if($ref_query->num_rows() > 0) {
			// exist data
			$array_col_val = array(
				'SUBSCRIBE' => 'N',
				'IS_DELETE' => 0
			);

			$this->Alert_subscriber_model->update_by_ref($array_col_val,$id);
		}

		$this->session->set_flashdata('error_message', alert_success('Block succeded.'));
		redirect('alert_subscriber/tables');
	}

	public function subscribe($id=0)
	{
		$ref_query = $this->Alert_subscriber_model->get_item_by_ref_id($id);
		if($ref_query->num_rows() > 0) {
			// exist data
			$array_col_val = array(
				'USER_ID'   => $id,
				'SUBSCRIBE' => 'Y',
				'IS_DELETE' => 0
			);

			$this->Alert_subscriber_model->update_by_ref($array_col_val,$id);
		} else {
			$array_col_val = array(
				'USER_ID'   => $id,
				'SUBSCRIBE' => 'Y',
				'IS_DELETE' => 0
			);

			$this->Alert_subscriber_model->save($array_col_val);
		}

		$this->session->set_flashdata('error_message', alert_success('Subscribe succeded.'));
		redirect('alert_subscriber/tables');
	}

	public function subscriber_rest()
	{
		$json_array = array();
		// get item list by site id
		$query = $this->Alert_subscriber_model->get_subscriber($this->session->userdata('site_id'));
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$json_object = new stdClass();
				$json_object->ALERT_SUBSCRIBER_ID = $row->ALERT_SUBSCRIBER_ID;
				$json_object->USER_ID   = $row->USER_ID;
				$json_object->FULLNAME  = $row->FIRST_NAME.' '.$row->LAST_NAME;
				$json_object->PHONE     = $row->PHONE;
				$json_object->USER_ID   = $row->USER_ID;
				$json_object->LAST_SEND = $row->LAST_SEND;

				if($row->SUBSCRIBE == null || $row->SUBSCRIBE == 'N' || empty($row->SUBSCRIBE)) {
					$json_object->SUBSCRIBE = label_danger('Block');
				} else {
					$json_object->SUBSCRIBE = label_success('Subscribe');
				}
				
				$json_array[] = $json_object; 
			}
		}
		header('Content-Type: application/json');
		echo json_encode($json_array);

	}
}