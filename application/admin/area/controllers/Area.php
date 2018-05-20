<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Area extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Area_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newArea()
				{
					window.open("'.base_url().'index.php/area/add","_self");
				}

				function editArea()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/area/edit/"+row.AREA_ID,"_self");
				}

				function destroyArea()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/area/delete/"+row.AREA_ID,"_self");
					}
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
				        url: "https://api.myjson.com/bins/444cr",
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
		$this->data['title'] = "Area Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('area_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Area Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('area_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Area Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Area_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('area_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$area_name = $this->input->post('area_name');
		$area_description = $this->input->post('area_description');

		$insert = array(
			'AREA_NAME' => stripslashes($area_name),
			'AREA_DESCRIPTION' => stripslashes($area_description),
			'IS_DELETE'   => 0,
		);

		$this->Area_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("area");	
	}

	public function update($id=0) 
	{
		$area_name   = $this->input->post('area_name');
		$area_description   = $this->input->post('area_description');

		$insert = array(
			'AREA_NAME' => stripslashes($area_name),
			'AREA_DESCRIPTION' => stripslashes($area_description),
			'IS_DELETE'     => 0,
		);

		$this->Area_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("area");
	}

	public function page_list_rest()
	{
		$query = $this->Area_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Area_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('area');
	}
}