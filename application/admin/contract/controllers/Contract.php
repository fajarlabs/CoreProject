<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contract extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Contract_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newContract()
				{
					window.open("'.base_url().'index.php/contract/add","_self");
				}

				function editContract()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/contract/edit/"+row.ID,"_self");
				}

				function destroyContract()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/contract/delete/"+row.ID,"_self");
					}
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
		$this->data['title'] = "Contract Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('contract_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Contract Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('contract_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Contract Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Contract_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('contract_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
        $config['upload_path']          = './uploads/contract_files';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']             = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$contract = $this->input->post('contract');

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload['error']));
		} else {
			$array_col_val = array(
				'CONTRACT' => $contract,
				'UPLOAD_FILE' => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : ''),
				'IS_DELETE'   => 0,
			);

			$this->Contract_model->save($array_col_val);
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("contract");	
	}

	public function update($id=0) 
	{
		$contract = $this->input->post('contract');

        $config['upload_path']          = './uploads/contract_files';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']             = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$array_col_val = array(
			'CONTRACT' => $contract ,
			'UPLOAD_FILE' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
			'IS_DELETE'   => 0,
		);

		if(isset($msg_upload['error'])) {
			unset($array_col_val['UPLOAD_FILE']);
		}

		$this->Contract_model->update($array_col_val,$id);

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}
		
		redirect("contract");
	}

	public function page_list_rest()
	{
		$query = $this->Contract_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->UPLOAD_FILE = '<a class="btn btn-xs btn-success" href="'.base_url().'uploads/contract_files/'.$result[$i]->UPLOAD_FILE.'"><i class="fa fa-download"></i> View or download</a>';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Contract_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('contract');
	}
}