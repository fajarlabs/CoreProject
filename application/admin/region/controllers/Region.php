<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Region extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Region_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newRg()
				{
					window.open("'.base_url().'index.php/region/add","_self");
				}

				function editRg()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/region/edit/"+row.ID_REF_REGION,"_self");
				}

				function destroyRg()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/region/delete/"+row.ID_REF_REGION,"_self");
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
		$this->data['title'] = "Region Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('region_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Region Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('region_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Region Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Region_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('region_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{

		$region 			 = $this->input->post('region');
		
			$array_col_val = array(
				'REGION' => $region,
			);

			$this->Region_model->save($array_col_val);

			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		
		redirect("region");	
	}

	public function update($id=0) 
	{
		$region = $this->input->post('region');
		
		$array_col_val = array(
			'REGION' => $region,
		);


		$this->Region_model->update($array_col_val,$id);

		
		
		redirect("region");
	}

	public function page_list_rest()
	{
		$query = $this->Region_model->get_all_items();
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
		$this->Region_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('region');
	}

}