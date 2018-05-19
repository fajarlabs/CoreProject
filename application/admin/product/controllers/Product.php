<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Product_model","intervention/Intervention_model"));

		$this->data['html_css'] = '
    		<style>
    			.textbox-text {
    				color : #000;
    			}
    		</style>';

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

	public function get_product(){
		$query = trim($this->input->get('q', TRUE));
		$query = $this->Product_model->get_product_search_by_name($query);
		$json_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->label = $row->PRODUCT_NAME;
				//$o->value = $row->PRODUCT_ID;
				$o->id = $row->PRODUCT_ID;
				$json_array[] = $o;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}

	public function index()
	{
		$this->data['title'] = "Product Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('product_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add($id=0)
	{
		$this->data['title'] = "Form Create Website Menu";
		$this->data['id']    = $id;
		$intervention_query  = $this->Intervention_model->get_all_items();
		$this->data['intervention_items'] = $intervention_query->num_rows() > 0 ? $intervention_query->result() : NULL;
		$this->load->view('admin/header',$this->data);
		$this->load->view('product_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Form Edit Website Menu";
		$this->data['item']  = $this->Product_model->get_item_by_menu_id($id);
		$this->data['id']    = $id;
		$intervention_query  = $this->Intervention_model->get_all_items();
		$this->data['intervention_items'] = $intervention_query->num_rows() > 0 ? $intervention_query->result() : NULL;
		$this->load->view('admin/header',$this->data);
		$this->load->view('product_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$product_reference = $this->input->post("product_reference");
		$product_name      = $this->input->post("product_name");
		$weight            = $this->input->post("weight");
		$show              = $this->input->post("show");
		$intervention_ref  = $this->input->post("intervention_reference");

		$product_reference = empty($product_reference) ? 0 : $product_reference;

		if($product_reference < 1) {
			$product_level = 1;
		}  else {
			$query_reference = $this->Product_model->get_item_by_menu_id($product_reference);
			if($query_reference->num_rows() > 0) {
				foreach($query_reference->result() as $row_reference) {
					$product_level = $row_reference->PRODUCT_LEVEL+1;
				}
			}
		}

		$array_col_val = array(
			'PRODUCT_REFERENCE'      => empty($product_reference) ? 0 : $product_reference,
			'PRODUCT_LEVEL'          => $product_level,
			'PRODUCT_NAME'           => $product_name,
			'WEIGHT'                 => $weight,
			'SHOW'                   => $show,
			'IS_DELETE'              => 0,
			'CREATE_TIME'            => null,
			'CREATE_USER'            => '',
			'INTERVENTION_REFERENCE' => json_encode($intervention_ref)
		);
		$this->Product_model->save($array_col_val);

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect('product');
	}

	public function delete($id)
	{
		$this->Product_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('product');
	}

	public function update($id)
	{
		$product_reference = $this->input->post("product_reference");
		$product_name      = $this->input->post("product_name");
		$weight            = $this->input->post("weight");
		$show              = $this->input->post("show");
		$intervention_ref  = $this->input->post("intervention_reference");

		if($product_reference < 1) {
			$product_level = 1;
		}  else {
			$query_reference = $this->Product_model->get_item_by_menu_id($product_reference);
			if($query_reference->num_rows() > 0) {
				foreach($query_reference->result() as $row_reference) {
					$product_level = $row_reference->PRODUCT_LEVEL+1;
				}
			}
		}

		$array_col_val = array(
			'PRODUCT_REFERENCE'      => empty($product_reference) ? 0 : $product_reference,
			'PRODUCT_LEVEL'          => $product_level,			
			'PRODUCT_NAME'           => $product_name,
			'WEIGHT'                 => $weight,
			'SHOW'                   => $show,
			'IS_DELETE'              => 0,
			'MODIFY_TIME'            => null,
			'MODIFY_USER'            => '',
			'INTERVENTION_REFERENCE' => json_encode($intervention_ref)
		);

		$this->Product_model->update($array_col_val,$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect('product');
	}

	public function list_menu_ref_rest()
	{
		$menu_arr          = array();
		$json_object       = new stdClass();
		$json_object->id   = 0;
		$json_object->text = "No Reference";  
		$all_items         = $this->Product_model->get_all_items();

		if($all_items->num_rows() > 0) {
			foreach($all_items->result() as $row_menu) {
				if($row_menu->PRODUCT_LEVEL == 1) {
					$json_object_all_items = new stdClass();
					$json_object_all_items->id   = $row_menu->PRODUCT_ID;
					$json_object_all_items->text = $row_menu->PRODUCT_NAME;

					$menusc = $this->Product_model->get_menu_by_reference($row_menu->PRODUCT_ID);
					if($menusc->num_rows() > 0) {
						$array_child = array();
						foreach($menusc->result() as $row_menusc) {
							$jo_child       = new stdClass();
							$jo_child->id   = $row_menusc->PRODUCT_ID;
							$jo_child->text = $row_menusc->PRODUCT_NAME;
							$array_child[]  = $jo_child;  
						}

						$json_object_all_items->children = $array_child;
					}

					$menu_arr[] = $json_object_all_items;
				}
			}
		}

		header('Content-Type: application/json');
		echo json_encode($menu_arr);
	}

	public function list_menu_rest()
	{
		$id = empty($this->input->post("id")) ? 0 : $this->input->post("id");
		$json_array = array();
		$get_menu_ref = $this->Product_model->get_menu_by_reference($id);
		
		if($get_menu_ref->num_rows() > 0) {
			
			foreach($get_menu_ref->result() as $row_menu_ref) {
				$menusc = $this->Product_model->get_menu_by_reference($row_menu_ref->PRODUCT_ID);

				$json_object        = new stdClass();
				$json_object->id    = $row_menu_ref->PRODUCT_ID;
				$json_object->title = $row_menu_ref->PRODUCT_NAME; 

				if($row_menu_ref->PRODUCT_REFERENCE == 0 || $menusc->num_rows() > 0) {
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

				if($row_menu_ref->PRODUCT_LEVEL <= 2) {
					$json_object->function = '
						<button type="button" class="btn btn-primary btn-xs button-edit" onClick="window.location.href=\''.base_url().'index.php/product/add/'.$row_menu_ref->PRODUCT_ID.'\'"><i class="glyphicon glyphicon-plus"></i> Add</button> 
						<button type="button" class="btn btn-primary btn-xs button-edit" onClick="window.location.href=\''.base_url().'index.php/product/edit/'.$row_menu_ref->PRODUCT_ID.'\'"><i class="glyphicon glyphicon-edit"></i> Edit</button>  
						<button type="button" class="btn btn-primary btn-xs button-delete" onClick="if (confirm(\'Are you sure you want to delete this data?\')) window.location.href=\''.base_url().'index.php/product/delete/'.$row_menu_ref->PRODUCT_ID.'\'"><i class="glyphicon glyphicon-remove"></i> Delete</button>';
				} else {
					$json_object->function = '
						<button type="button" class="btn btn-primary btn-xs button-edit" onClick="window.location.href=\''.base_url().'index.php/product/edit/'.$row_menu_ref->PRODUCT_ID.'\'"><i class="glyphicon glyphicon-edit"></i> Edit</button>  
						<button type="button" class="btn btn-primary btn-xs button-delete" onClick="if (confirm(\'Are you sure you want to delete this data?\')) window.location.href=\''.base_url().'index.php/product/delete/'.$row_menu_ref->PRODUCT_ID.'\'"><i class="glyphicon glyphicon-remove"></i> Delete</button>';
				}

				$json_array[] = $json_object;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}
}
