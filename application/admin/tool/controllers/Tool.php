<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tool extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Tool_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newTool()
				{
					window.open("'.base_url().'index.php/tool/add","_self");
				}

				function editTool()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/tool/edit/"+row.ID,"_self");
				}

				function destroyTool()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/tool/delete/"+row.ID,"_self");
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
		$this->data['title'] = "Tool Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('tool_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Tool Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('tool_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Tool Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Tool_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('tool_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
        $config['upload_path']   = './uploads/tool_files';
        $config['allowed_types'] = 'gif|jpg|jpeg|png|doc|docx';
        $config['max_size']      = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('sertifikat_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$type     = $this->input->post('jenis');
		$name     = $this->input->post('nama');
		$location = $this->input->post('lokasi');
		$total    = $this->input->post('jumlah');	

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload['error']));
		} else {
			$array_col_val = array(
				'JENIS'  => $type,
				'NAMA'   => $name,
				'LOKASI' => $location,
				'JUMLAH' => $total,
				'UPLOAD_SERTIFIKAT' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
				'IS_DELETE'   => 0,
			);

			$this->Tool_model->save($array_col_val);
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("tool");	
	}

	public function update($id=0) 
	{
		$type     = $this->input->post('jenis');
		$name     = $this->input->post('nama');
		$location = $this->input->post('lokasi');
		$total    = $this->input->post('jumlah');	


        $config['upload_path']   = './uploads/tool_files';
        $config['allowed_types'] = 'gif|jpg|jpeg|png|doc|docx';
        $config['max_size']      = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$array_col_val = array(
			'JENIS'  => $type,
			'NAMA'   => $name,
			'LOKASI' => $location,
			'JUMLAH' => $total,
			'UPLOAD_SERTIFIKAT' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
			'IS_DELETE'   => 0,
		);

		if(isset($msg_upload['error'])) {
			unset($array_col_val['UPLOAD_SERTIFIKAT']);
		}

		$this->Tool_model->update($array_col_val,$id);

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}
		
		redirect("tool");
	}

	public function page_list_rest()
	{
		$query = $this->Tool_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->UPLOAD_SERTIFIKAT = '<a class="btn btn-xs btn-success" href="'.base_url().'uploads/tool_files/'.$result[$i]->UPLOAD_SERTIFIKAT.'"><i class="fa fa-download"></i> View or download</a>';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Tool_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('Tool');
	}
}