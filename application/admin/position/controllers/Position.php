<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Position extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Position_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newPs()
				{
					window.open("'.base_url().'index.php/position/add","_self");
				}

				function editPs()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/position/edit/"+row.ID_REF_POSITION,"_self");
				}

				function destroyPs()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/position/delete/"+row.ID_REF_POSITION,"_self");
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
		$this->data['title'] = "Position Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('position_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Position Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('position_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Position Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Position_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('position_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{

		$position 			 = $this->input->post('position');
		
			$array_col_val = array(
				'POSITION' => $position,
			);

			$this->Position_model->save($array_col_val);

			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		
		redirect("position");	
	}

	public function update($id=0) 
	{
		$position = $this->input->post('position');
		
		$array_col_val = array(
			'POSITION' => $position,
		);


		$this->Position_model->update($array_col_val,$id);

		
		
		redirect("position");
	}

	public function page_list_rest()
	{
		$query = $this->Position_model->get_all_items();
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
		$this->Position_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('Position');
	}

}