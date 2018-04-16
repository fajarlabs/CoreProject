<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Personil extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Personil_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newPersonil()
				{
					window.open("'.base_url().'index.php/personil/add","_self");
				}

				function editPersonil()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/personil/edit/"+row.ID,"_self");
				}

				function destroyPersonil()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/personil/delete/"+row.ID,"_self");
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
		$this->data['title'] = "Personil Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('personil_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Personil Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('personil_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Personil Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Personil_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('personil_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
        $config['upload_path']          = './uploads/personil_files';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']             = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$position = $this->input->post('branch');
		$name     = $this->input->post('total');

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload['error']));
		} else {
			$array_col_val = array(
				'POSISI' => $position,
				'NAMA' => $name,
				'UPLOAD_FILE' => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : ''),
				'IS_DELETE'   => 0,
			);

			$this->Personil_model->save($array_col_val);
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("personil");	
	}

	public function update($id=0) 
	{
		$position = $this->input->post('branch');
		$name     = $this->input->post('total');

        $config['upload_path']          = './uploads/personil_files';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']             = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$array_col_val = array(
			'POSISI' => $position,
			'NAMA' => $name,
			'UPLOAD_FILE' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
			'IS_DELETE'   => 0,
		);

		if(isset($msg_upload['error'])) {
			unset($array_col_val['UPLOAD_FILE']);
		}

		$this->Personil_model->update($array_col_val,$id);

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}
		
		redirect("personil");
	}

	public function page_list_rest()
	{
		$query = $this->Personil_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->UPLOAD_FILE = '<a class="btn btn-xs btn-success" href="'.base_url().'uploads/personil_files/'.$result[$i]->UPLOAD_FILE.'"><i class="fa fa-download"></i> View or download</a>';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Personil_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('personil');
	}
}