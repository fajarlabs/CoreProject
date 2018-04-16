<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Intervention extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Intervention_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newIntervention()
				{
					window.open("'.base_url().'index.php/intervention/add","_self");
				}

				function editIntervention()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/intervention/edit/"+row.ID,"_self");
				}

				function destroyIntervention()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/intervention/delete/"+row.ID,"_self");
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
		$this->data['title'] = "Intervention Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('intervention_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Intervention Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('intervention_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Intervention Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Intervention_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('intervention_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$intervention_name = $this->input->post('intervention_name');

		$insert = array(
			'INTERVENTION_NAME' => addslashes($intervention_name),
			'IS_DELETE'   => 0,
		);

		$this->Intervention_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("intervention");	
	}

	public function update($id=0) 
	{
		$intervention_name   = $this->input->post('intervention_name');

		$insert = array(
			'INTERVENTION_NAME' => addslashes($intervention_name),
			'IS_DELETE'     => 0,
		);

		$this->Intervention_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("intervention");
	}

	public function page_list_rest()
	{
		$query = $this->Intervention_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Intervention_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("intervention");
	}
}