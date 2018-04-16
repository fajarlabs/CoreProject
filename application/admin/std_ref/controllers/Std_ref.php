<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Std_ref extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Stdref_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newStd_ref()
				{
					window.open("'.base_url().'index.php/std_ref/add","_self");
				}

				function editStd_ref()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/std_ref/edit/"+row.ID,"_self");
				}

				function destroyStd_ref()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/std_ref/delete/"+row.ID,"_self");
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
		$this->data['title'] = "Reference Standard Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('stdref_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Reference Standard Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('stdref_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Reference Standard Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Stdref_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('stdref_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
        $config['upload_path']          = './uploads/stdref_files';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']             = 25000; // 25Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$std_ref       = $this->input->post('std_ref');
		$content_info  = $this->input->post('content_info');
		$name          = $this->input->post('nama');

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload['error']));
		} else {
			$array_col_val = array(
				'STD_REF' => $std_ref,
				'CONTENT_INFO' => $content_info,
				'UPLOAD_FILE' => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : ''),
				'IS_DELETE'   => 0,
			);

			$this->Stdref_model->save($array_col_val);
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("std_ref");	
	}

	public function update($id=0) 
	{
		$std_ref       = $this->input->post('std_ref');
		$content_info  = $this->input->post('content_info');
		$name          = $this->input->post('nama');

        $config['upload_path']          = './uploads/stdref_files';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']             = 25000; // 25Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$array_col_val = array(
			'STD_REF' => $std_ref,
			'CONTENT_INFO' => $content_info,
			'UPLOAD_FILE' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
			'IS_DELETE'   => 0,
		);

		if(isset($msg_upload['error'])) {
			unset($array_col_val['UPLOAD_FILE']);
		}

		$this->Stdref_model->update($array_col_val,$id);

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}
		
		redirect("std_ref");
	}

	public function page_list_rest()
	{
		$query = $this->Stdref_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->UPLOAD_FILE = '<a class="btn btn-xs btn-success" href="'.base_url().'uploads/stdref_files/'.$result[$i]->UPLOAD_FILE.'"><i class="fa fa-download"></i> View or download</a>';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Stdref_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('std_ref');
	}
}