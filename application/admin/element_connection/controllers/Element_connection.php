<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Element_connection extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("user/User_model","user/User_group_model","menu/Menu_model","element_html/Element_html_model","product/Product_model","intervention/Intervention_model","Element_connection_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newELement_htmlPage()
				{
					window.open("'.base_url().'index.php/element_connection/add","_self");
				}

				function editELement_htmlPage()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/element_connection/edit/"+row.ID,"_self");
				}

				function destroyELement_htmlPage()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/element_connection/delete/"+row.ID,"_self");
					}
				}

				$("#title").on("keyup",function(){
					$("#url").empty().val($(this).val().toLowerCase().replace(/\s/g,"-"));
				});

				var intervention_id = 0;
				var product_id = 0;

				function initParam() {
					intervention_id = $("select[name=\'intervention\']").val();
					product_id = $("select[name=\'product\']").val();
					$.ajaxSetup({
						data:{
							intervention_id: intervention_id,
							product_id:product_id
						}
					});
				}

				$("#tags").select2({
				    tags: true,
				    tokenSeparators: [","],
				    createSearchChoice: function (term) {
				        return {
				            id: $.trim(term),
				            text: $.trim(term) + " (new tag)"
				        };
				    },
				    ajax: {
				        url: "'.base_url().'index.php/element_connection/get_tags/",
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

				    // max tags is 3
				    // maximumSelectionSize: 3,

				    // override message for max tags
				    formatSelectionTooBig: function (limit) {
				        return "Max tags is only " + limit;
				    }
				});

				tinymce.init({
				    selector: "textarea",
				    relative_urls : false,
					remove_script_host : false,
					convert_urls : true,
					forced_root_block : "",
					extended_valid_elements:"script[language|type|src]",
				    plugins: [
				        "advlist autolink lists link image charmap print preview anchor",
				        "searchreplace visualblocks code fullscreen",
				        "insertdatetime media table contextmenu paste"
				    ],
				    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | code"
				});

				function getAll() {
					$("#tags").select2("val", "");
					intervention_id = $("select[name=\'intervention\']").val();
					product_id = $("select[name=\'product\']").val();
					$.ajaxSetup({
						data:{
							intervention_id: intervention_id,
							product_id:product_id
						}
					});
				    $.getJSON(" '.base_url().'index.php/element_connection/get_tags/", function( data ) {
						if(data.length > 0) {
							var temp_data = [];
							for(var i = 0; i < data.length; i++) {
								temp_data.push(data[i].text);
							}
							$("#tags").select2("val", temp_data);
						}
					});
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
		$this->data['title'] = "Element HTML Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('element_connection_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Element HTML Management";
		$this->data['product'] = $this->Product_model->get_all_items();
		$this->data['intervention'] = $this->Intervention_model->get_all_items();
		$this->data['element'] = $this->Element_html_model->get_all_items();
		$this->load->view('admin/header',$this->data);
		$this->load->view('element_connection_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Element HTML Management";
		$this->data['id']    = $id;
		$this->data['product'] = $this->Product_model->get_all_items();
		$this->data['intervention'] = $this->Intervention_model->get_all_items();
		$this->data['element'] = $this->Element_html_model->get_all_items();
		$this->data['item']  = $this->Element_connection_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('element_connection_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$title           = $this->input->post('title');
		$content         = $this->input->post('content');
		$product_id      = $this->input->post('product');
		$intervention_id = $this->input->post('intervention');
		$el_timelog_id   = $this->input->post('element_timelog');
		$el_quality_id   = $this->input->post('element_quality');
		$field_element   = $this->input->post('field_element');
		$field_element   = json_encode(explode(",",$field_element));

		$insert = array(
			'NAME'               => addslashes($title),
			'DATA'               => pg_escape_string ($content),
			'PRODUCT_ID'         => $product_id,
			'INTERVENTION_ID'    => $intervention_id,
			'ELEMENT_TIMELOG_ID' => $el_timelog_id,
			'ELEMENT_QUALITY_ID' => $el_quality_id,
			'ELEMENT_FIELDS'     => $field_element,
			'IS_DELETE'          => 0,
		);

		$this->Element_connection_model->save($insert);

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("element_connection");	
	}

	public function update($id=0) 
	{
		$title           = $this->input->post('title');
		$content         = $this->input->post('content');
		$product_id      = $this->input->post('product');
		$intervention_id = $this->input->post('intervention');
		$el_timelog_id   = $this->input->post('element_timelog');
		$el_quality_id   = $this->input->post('element_quality');

		$insert = array(
			'NAME'               => addslashes($title),
			'DATA'               => pg_escape_string ($content),
			'PRODUCT_ID'         => $product_id,
			'INTERVENTION_ID'    => $intervention_id,
			'ELEMENT_TIMELOG_ID' => $el_timelog_id,
			'ELEMENT_QUALITY_ID' => $el_quality_id,
			'IS_DELETE'          => 0,
		);

		$this->Element_connection_model->update($insert,$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("element_connection");
	}

	public function page_list_rest()
	{
		$query = $this->Element_connection_model->get_all_items(100,0);
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();
		$json_object->rows  = @$query->result();		
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Element_connection_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('element_connection');
	}

	public function get_tags()
	{
		$product_id = $this->input->get("product_id");
		$intervention_id = $this->input->get("intervention_id");
		$query = $this->Element_connection_model->get_item_by_product_intervention($product_id,$intervention_id);
		$element_fields = array();
		if($query->num_rows() > 0) :
			foreach($query->result() as $row) :
				$arr = json_decode($row->ELEMENT_FIELDS);
				foreach($arr as $k => $v) :
					$o = new stdClass();
					$o->id = $k;
					$o->text = $v;
					$element_fields[] = $o;
				endforeach;
			endforeach;
		endif;		
		header('Content-Type: application/json');
		echo json_encode($element_fields);
	}
}