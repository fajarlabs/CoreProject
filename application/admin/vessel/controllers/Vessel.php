<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vessel extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Vessel_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newVessel()
				{
					window.open("'.base_url().'index.php/vessel/add","_self");
				}

				function editVessel()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/vessel/edit/"+row.VESSEL_ID,"_self");
				}

				function destroyVessel()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/vessel/delete/"+row.VESSEL_ID,"_self");
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
		$this->data['title'] = "Vessel Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('vessel_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Vessel Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('vessel_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Vessel Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Vessel_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('vessel_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$vessel_name   = $this->input->post('vessel_name');
		$vessel_type   = $this->input->post('vessel_type');

		$insert = array(
			'VESSEL_NAME' => addslashes($vessel_name),
			'VESSEL_TYPE' => addslashes($vessel_type),
			'IS_DELETE'     => 0,
		);

		$this->Vessel_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("vessel");	
	}

	public function update($id=0) 
	{
		$vessel_name   = $this->input->post('vessel_name');
		$vessel_type   = $this->input->post('vessel_type');

		$insert = array(
			'VESSEL_NAME' => addslashes($vessel_name),
			'VESSEL_TYPE' => addslashes($vessel_type),
			'IS_DELETE'     => 0,
		);

		$this->Vessel_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("vessel");
	}

	public function page_list_rest()
	{
		$query = $this->Vessel_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Vessel_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('vessel');
	}

	public function get_vessel() {
		$query = trim($this->input->get('q', TRUE));
		$query = $this->Vessel_model->search_by_vessel_name($query);
		$json_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->label = $row->VESSEL_NAME;
				$o->id = $row->VESSEL_ID;
				//$o->value = $row->VESSEL_ID;
				$json_array[] = $o;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}
}