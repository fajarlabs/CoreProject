<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Strategi_Business_Unit extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Strategi_Business_Unit_Model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newCv()
				{
					window.open("'.base_url().'index.php/strategi_business_unit/add","_self");
				}

				function editCv()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/strategi_business_unit/edit/"+row.ID,"_self");
				}

				function destroyCv()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/strategi_business_unit/delete/"+row.ID,"_self");
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
		$this->data['title'] = "Strategi Business Unit Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('strategi_business_unit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Add Strategi Business Unit Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('strategi_business_unit_add',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Edit Strategi Business Unit";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Strategi_Business_Unit_Model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('strategi_business_unit_edit',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function update($id=0) 
	{
		
   		$sbu 						= $this->input->post('sbu');
		$sbu_description     		= $this->input->post('sbu_description');
		
		$array_col_val = array(
				'NAMA_SBU' => $sbu,
				'SBU_DESCRIPTION' => $sbu_description,
				'UPDATE_DATE'=>date('Y-m-d H:i:s'),
				'IS_DELETE'   => 0,
			);

		$this->Strategi_Business_Unit_Model->update($array_col_val,$id);
		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}
		redirect("strategi_business_unit");
	}

	public function save()
	{
       
		$sbu 						= $this->input->post('sbu');
		$sbu_description     		= $this->input->post('sbu_description');
			$array_col_val = array(
				'NAMA_SBU' => $sbu,
				'SBU_DESCRIPTION' => $sbu_description,				'CREATED_DATE'=>date('Y-m-d H:i:s'),
				'UPDATE_DATE'=>date('Y-m-d H:i:s'),
				'IS_DELETE'   => 0,
			);
			$this->Strategi_Business_Unit_Model->save($array_col_val);
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		
		redirect("strategi_business_unit");	
	}

	public function page_list_rest()
	{
		$query = $this->Strategi_Business_Unit_Model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	

	public function delete($id)
	{
		$this->Strategi_Business_Unit_Model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('strategi_business_unit');
	}
}