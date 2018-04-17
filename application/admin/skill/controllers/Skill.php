<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class skill extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Skill_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newSk()
				{
					window.open("'.base_url().'index.php/skill/add","_self");
				}

				function editSk()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/skill/edit/"+row.ID_REF_EXP,"_self");
				}

				function destroySk()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/skill/delete/"+row.ID_REF_EXP,"_self");
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
		$this->data['title'] = "Skill Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('skill_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Skill Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('skill_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Skill Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Skill_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('skill_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{

		$skill 			 = $this->input->post('skill');
		
			$array_col_val = array(
				'EXP_TYPE' => $skill,
			);

			$this->Skill_model->save($array_col_val);

			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		
		redirect("skill");	
	}

	public function update($id=0) 
	{
		$skill = $this->input->post('skill');
		
		$array_col_val = array(
			'EXP_TYPE' => $skill,
		);


		$this->Skill_model->update($array_col_val,$id);

		
		
		redirect("skill");
	}

	public function page_list_rest()
	{
		$query = $this->Skill_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Skill_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('skill');
	}

}