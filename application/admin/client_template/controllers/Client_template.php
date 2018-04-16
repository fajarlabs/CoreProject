<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_template extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("client_site/Client_site_model","client_menu/Client_menu_model","client_template/Client_template_model","client_template/Client_template_access_model","client_access/Client_header_access_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});
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
		$this->data['title'] = "Client Template Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_template_setting_list_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function setting($client_site_id = 0)
	{
		$this->data['title'] = "Client Template Setting";
		$this->data['item']  = $this->Client_site_model->get_item_by_id($client_site_id);
		$this->data['id']    = $client_site_id;
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_template_setting_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function checklist($client_site_id = 0,$menu_id = 0)
	{
		$this->data['title'] = "Client Template Checklist";
		$this->data['item']  = $this->Client_template_model->get_item_by_menu_id($menu_id);
		$this->data['template_id']    = $this->Client_header_access_model->get_item_by_csi_menu_Id($client_site_id,$menu_id);
		$this->data['client_site_id'] = $client_site_id;
		$this->data['menu_id'] = $menu_id;
		$this->data['html_js'].= '
			<script>
				$(document).ready(function(){
					supply_datagrid();
				});

				$("#template_id").on("change",function(e) {
					supply_datagrid();
				});

				function supply_datagrid()
				{
					$("#dg").datagrid("load", "'.base_url().'index.php/client_template/list_field_template_rest/"+$("#template_id").val()+"/'.$client_site_id.'");
				}
			</script>';
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_template_checklist',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	/* combobox request */
	public function list_field_template_rest($client_template_id = 0, $client_site_id = 0)
	{	
			
		$query_component_existing = $this->Client_template_access_model->get_all_items_join_template_access_site_id($client_template_id,$client_site_id);

		$array_component_existing = array();
		if($query_component_existing->num_rows() > 0) {
			foreach($query_component_existing->result() as $row_component_existing) {
				$array_component_existing[$row_component_existing->ALIAS_TEMPLATE_COMPONENT_ID] = $row_component_existing->ACCESS_STATUS;
			}			
		}

		$query = $this->Client_template_access_model->get_all_items_join_template_access($client_template_id);	
		$json_object = new stdClass();
		$json_object->total = 0;
		$json_object->rows  = array();

		if($query->num_rows() > 0) {
			$json_object->total = @$query->num_rows();		
			$result = $query->result();
			if(is_array($result)) {
				$total = count($result);
				for($i=0; $i < $total; $i++) {
					$access_status = @$array_component_existing[$result[$i]->ALIAS_TEMPLATE_COMPONENT_ID];
					
					$checked = '';
					if($access_status == 1) {
						$checked = 'checked';
					}
					$result[$i]->BTN_ACCESS = '<center><input style="width:20px;height:20px;" class="form-control" type="checkbox" name="template_access_id[]" value="'.$result[$i]->ALIAS_TEMPLATE_COMPONENT_ID.'" '.$checked.'/> </center>';					
				}
			}
			$json_object->rows  = @$result;
		}
		
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function save_checklist()
	{
		// save header access 
		$client_site_id = $this->input->post('client_site_id');
		$menu_id        = $this->input->post('menu_id');
		$template_id    = $this->input->post('template_id');

		$query_search_header = $this->Client_header_access_model->get_item_by_csi_menu_id_cti($client_site_id,$menu_id,$template_id);
		
		// if data is exist, update them
		if($query_search_header->num_rows() > 0) {
			$header_access_id = @$query_search_header->result()[0]->HEADER_ACCESS_ID;

			$this->Client_header_access_model->update(
				array(
					'CLIENT_SITE_ID'     => $client_site_id,
					'MENU_ID'            => $menu_id,
					'CLIENT_TEMPLATE_ID' => $template_id
				),
				$header_access_id
			);

			// reset to 0 first from access detail
			$this->Client_template_access_model->update_by_header_access_id(
				array(
					'ACCESS_STATUS' => 0
				),
				$header_access_id
			);

			$template_access_id = $this->input->post('template_access_id');
			foreach($template_access_id as $key => $val) {

				$val = (int)$val;
				$header_access_id = (int)$header_access_id;

				//search first
				$query_search_access = $this->Client_template_access_model->get_item_by_ctci_hai($val,$header_access_id);

				if($query_search_access->num_rows() > 0) {
					foreach($query_search_access->result() as $row_src_access) {
						$this->Client_template_access_model->update(
							array(
								'ACCESS_STATUS' => 1
							),
							$row_src_access->TEMPLATE_ACCESS_ID
						);
					}
				} else {
					// save new
					$this->Client_template_access_model->save(
						array(
							'CLIENT_TEMPLATE_COMPONENT_ID' =>(int)$val,
							'HEADER_ACCESS_ID' => (int)$header_access_id,
							'ACCESS_STATUS' => 1
						)
					);
				}
			}

			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
			redirect("client_template/checklist/$client_site_id/$menu_id");
		} else {

			// search and delete header first 
			$query_search_header = $this->Client_header_access_model->get_item_by_csi_menu_id($client_site_id,$menu_id);
			if($query_search_header->num_rows() > 0) {
				foreach($query_search_header->result() as $row_search_header) {
					// delete detail template component by header access id
					$this->Client_template_access_model->delete_by_header_access_id($row_search_header->HEADER_ACCESS_ID);
				}
			}

			// delete header by client site id and menu id
			$this->Client_header_access_model->delete_by_csi_menu_id($client_site_id,$menu_id);

			// create new header
			$header_access_id = $this->Client_header_access_model->save(
				array(
					'CLIENT_SITE_ID'     => $client_site_id,
					'MENU_ID'            => $menu_id,
					'CLIENT_TEMPLATE_ID' => $template_id
				)
			);

			// create new detail component template
			$template_access_id = $this->input->post('template_access_id');
			foreach($template_access_id as $key => $val) {
				$this->Client_template_access_model->save(
					array(
						'CLIENT_TEMPLATE_COMPONENT_ID' =>(int)$val,
						'HEADER_ACCESS_ID' => (int)$header_access_id,
						'ACCESS_STATUS' => 1
					)
				);
			}

			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
			redirect("client_template/checklist/$client_site_id/$menu_id");
		}
	}

	public function page_list_rest()
	{
		$query = $this->Client_site_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->BTN_SETTING = '<a class="btn btn-xs btn-success" href="'.base_url().'index.php/client_template/setting/'.$result[$i]->CLIENT_SITE_ID.'"><i class="fa fa-cog"></i> Template '.$result[$i]->CLIENT_SITE_NAME.'</a>';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function list_client_menu_rest($client_site_id=0)
	{	
		$id = empty($this->input->post("id")) ? 0 : $this->input->post("id");
		$json_array = array();
		$get_menu_ref = $this->Client_menu_model->get_menu_by_reference($id);
		
		if($get_menu_ref->num_rows() > 0) {
			
			foreach($get_menu_ref->result() as $row_menu_ref) {
				$menusc = $this->Client_menu_model->get_menu_by_reference($row_menu_ref->MENU_ID);

				$json_object        = new stdClass();
				$json_object->id    = $row_menu_ref->MENU_ID;
				$json_object->title = $row_menu_ref->TITLE; 

				if($menusc->num_rows() > 0) {
					$json_object->state = "closed";
				} else {
					$json_object->state = "open";
				}

				$json_object->weight    = $row_menu_ref->WEIGHT;

				if($row_menu_ref->SHOW == 1) {
					$json_object->show  = "Yes";
				} else {
					$json_object->show  = "No";
				}

				$json_object->function = '
					<button type="button" class="btn btn-success btn-xs button-edit" onClick="window.location.href=\''.base_url().'index.php/client_template/checklist/'.$client_site_id.'/'.$row_menu_ref->MENU_ID.'\'"><i class="glyphicon glyphicon-cog"></i> Set Template</button>';
				
				$json_array[] = $json_object;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}
}