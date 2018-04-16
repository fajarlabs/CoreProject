<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template_component extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("template_component/Template_model","template_component/Template_component_model","client_menu/Client_menu_model","client_template/Client_template_access_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function add_field(key,val)
				{
					var date = new Date();
					var unic = date.getTime();

					// clone form
					var bf   = $("#base-form").clone();

					// get element row
					var row   = bf.find("#row");
					var row_id = "id_row_"+unic;
					row.attr("id",row_id);

					// get value field
					var val_field   = bf.find("#val_field");
					var val_field_id = "id_val_"+unic;
					val_field.attr("id",val_field_id);
					val_field.attr("value",val);

					// get key field
					var key_field   = bf.find("#key_field");
					var key_field_id = "id_key_"+unic;
					key_field.attr("id",key_field_id);
					key_field.attr("value",key)	

					// get button remove
					var remove   = bf.find("#remove");
					var remove_id = "id_remove_"+unic;
					remove.attr("id",remove_id);

					var pf   = $("#field");
					pf.prepend(bf.html());
				}

				function remove_field(e)
				{
					$(e).parent().parent().remove();
				}

				function newTemplate()
				{
					window.open("'.base_url().'index.php/template_component/add","_self");
				}

				function editTemplate()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/template_component/edit/"+row.CLIENT_TEMPLATE_ID,"_self");
				}

				function destroyTemplate()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/template_component/delete/"+row.CLIENT_TEMPLATE_ID,"_self");
					}
				}

				$("#menu").select2({
				    tags: true,
				    tokenSeparators: [","],
				    ajax: {
				        url: "'.base_url().'index.php/template_component/menu_supply_rest",
				        dataType: "json",
				        data: function(term, page) {
				            return {
				                q: term
				            };
				        },
				        results: function(data, page) {
				            return {
				                results: data
				            };
				        }
				    },

				    // Take default tags from the input value
				    initSelection: function (element, callback) {
				        var data = [];

				        function splitVal(string, separator) {
				            var val, i, l;
				            if (string === null || string.length < 1) return [];
				            val = string.split(separator);
				            for (i = 0, l = val.length; i < l; i = i + 1) val[i] = $.trim(val[i]);
				            return val;
				        }

				        $(splitVal(element.val(), ",")).each(function () {
				            data.push({
				                id: this,
				                text: this
				            });
				        });

				        callback(data);
				    },

				    // Some nice improvements:

				    // max tags is 1
				    maximumSelectionSize: 1,

				    // override message for max tags
				    formatSelectionTooBig: function (limit) {
				        return "Max menu is only " + limit;
				    }
				});

				tinymce.init({
				    selector: "textarea",
				    plugins: [
				        "advlist autolink lists link image charmap print preview anchor",
				        "searchreplace visualblocks code fullscreen",
				        "insertdatetime media table contextmenu paste"
				    ],
				    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | code"
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
		$this->data['title'] = "Template Component Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('template_component_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Template Component Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('template_component_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$item = $this->Template_model->get_item_by_id($id);

		$menu_query = $this->Client_menu_model->get_item_by_menu_id(@$item->result()[0]->MENU_ID);
		$menu_selected_list = array();
		if($menu_query->num_rows() > 0) {
			foreach($menu_query->result() as $row_tag) {
				$o = new stdClass();
				$o->id   = $row_tag->MENU_ID;
				$o->text = $row_tag->TITLE;
				$menu_selected_list[] = $o;
			}
		}

		$this->data['title'] = "Template Management";
		$this->data['id']    = $id;
		$this->data['item']  = $item;
		$this->data['html_js'] .= '
			<script>
				$(document).ready(function() {
					$.get("'.base_url().'index.php/template_component/get_template_component_rest/'.$id.'",function(result) {
						var count_result = result.length;
						for(var i=0; i < count_result; i++) {
							add_field(result[i].CLIENT_TEMPLATE_COMPONENT_ID, result[i].FIELD_NAME);
						}
					});

					/* selected tags version Select2 3.5.3 */
			    	var preload_data = '.json_encode($menu_selected_list).';
					$("#menu").select2("data", preload_data );
				});
			</script>
		';
		$this->load->view('admin/header',$this->data);
		$this->load->view('template_component_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$is_duplicate = false;
		$template_name = $this->input->post('template_name');
		$query_exist = $this->Template_model->get_item_by_template_name($template_name);
		if($query_exist->num_rows() > 0) {
			$template_name = $template_name.'_'.mt_rand();
			$is_duplicate  = true;
		}

		// client template save first
		$template_id = $this->Template_model->save(
			array(
				'TEMPLATE_NAME' => $template_name,
				'MENU_ID'       => $this->input->post('menu_id'),
				'IS_DELETE'     => 0
			)
		);

		// save detail app client template component
		$val_field = $this->input->post('val_field');
		if(is_array($val_field ) && (count($val_field) > 0)) {
			foreach ($val_field as $key => $value) {
				$template_component_id = $this->Template_component_model->save(
					array(
						'CLIENT_TEMPLATE_ID' => $template_id,
						'FIELD_NAME'         => $value,
						'IS_DELETE'          => 0
					)
				);
			}
		}

		if($is_duplicate) {
			$this->session->set_flashdata('error_message', alert_success('Save succeded, but duplicate template name and re-rename to '.$template_name));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("template_component");
	}

	public function update($id=0) 
	{

		// delete all template component access
		$query_template_component = $this->Template_component_model->get_item_by_template_id($id);
		if($query_template_component->num_rows() > 0) {
			foreach($query_template_component->result() as $row_template_component) {
				$this->Client_template_access_model->delete_by_template_component_id($row_template_component->CLIENT_TEMPLATE_COMPONENT_ID);
			}
		}

		$is_duplicate = false;
		$template_name = $this->input->post('template_name');
		$query_exist = $this->Template_model->get_item_by_template_name($template_name);
		if($query_exist->num_rows() > 0) {
			// id is save do not change template name
			if(@$query_exist->result()[0]->CLIENT_TEMPLATE_ID != $id) {
				$template_name = $template_name.'_'.mt_rand();
				$is_duplicate  = true;
			}
		}

		// client template save first
		$this->Template_model->update(
			array(
				'TEMPLATE_NAME' => $template_name,
				'MENU_ID'       => $this->input->post('menu_id'),
				'IS_DELETE'     => 0
			),
			$id
		);

		// save detail app client template component by key field
		$val_field = $this->input->post('val_field');
		$key_field = $this->input->post('key_field');

		// filter if empty set to 0
		foreach($key_field as $k_field => $v_field) {
			$v_field = (int) $v_field;
			if($v_field < 1) {
				$key_field[$k_field] = (int) $v_field;
			}
		}

		// sum values array > 0
		if(array_sum($key_field) > 0) {
			if(count($key_field) > 0) {
				// delete items if not in
				$this->Template_component_model->delete_not_in_component_id($key_field, $id);
			}
		} else {
			$this->Template_component_model->delete_by_client_template_id($id);
		}

		if(is_array($key_field ) && (count($key_field) > 0)) {
			foreach ($key_field as $key => $value) {
				$value = (int) $value;
				$query_check_template  = $this->Template_component_model->get_item_by_id($value);
				
				// if exist update component
				if($query_check_template->num_rows() > 0) {
					$template_component_id = $this->Template_component_model->update(
						array(
							'FIELD_NAME'         => $val_field[$key],
							'IS_DELETE'          => 0
						),
						$value
					);
				} else {
					// if not exist create new component
					$template_component_id = $this->Template_component_model->save(
						array(
							'CLIENT_TEMPLATE_ID' => $id,
							'FIELD_NAME'         => $val_field[$key],
							'IS_DELETE'          => 0
						)
					);
				}
			}
		}

		if($is_duplicate) {
			$this->session->set_flashdata('error_message', alert_success('Update succeded, but duplicate template name and re-rename to and please setting once again in client template because is resetting'.$template_name));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded and please setting once again in client template because is resetting'));
		}
		redirect("template_component");
	}

	public function page_list_rest()
	{
		$query = $this->Template_model->get_all_items_join_menu();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($template_id)
	{
		// delete template
		$this->Template_model->delete_by_id($template_id);
		
		// delete template component access
		$query_template_component = $this->Template_component_model->get_item_by_template_id($template_id);
		if($query_template_component->num_rows() > 0) {
			foreach($query_template_component->result() as $row_template_component) {
				$this->Client_template_access_model->delete_by_template_component_id($row_template_component->CLIENT_TEMPLATE_COMPONENT_ID);
			}
		}

		// delete component model
		$this->Template_component_model->delete_by_client_template_id($template_id);

		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("template_component");
	}

	public function menu_supply_rest()
	{
		$json_array = array();
		$query = $this->Client_menu_model->get_all_items();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$json_object = new stdClass();
				$json_object->id   = $row->MENU_ID;
				$json_object->text = $row->TITLE;
				$json_array[]      = $json_object; 
			}
		}
		header('Content-Type: application/json');
		echo json_encode($json_array);
	}

	public function get_template_component_rest($id=0)
	{
		$query = $this->Template_component_model->get_item_by_template_id($id);
		header('Content-Type: application/json');
		echo json_encode(@$query->result());
	}
}