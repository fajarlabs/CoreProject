<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Element_html extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("user/User_model","user/User_group_model","menu/Menu_model","Element_html_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newELement_htmlPage()
				{
					window.open("'.base_url().'index.php/element_html/add","_self");
				}

				function editELement_htmlPage()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/element_html/edit/"+row.ID,"_self");
				}

				function destroyELement_htmlPage()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/element_html/delete/"+row.ID,"_self");
					}
				}

				$("#title").on("keyup",function(){
					$("#url").empty().val($(this).val().toLowerCase().replace(/\s/g,"-"));
				});

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
		$this->load->view('element_html_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Element HTML Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('element_html_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Element HTML Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Element_html_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('element_html_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$title   = $this->input->post('title');
		$status  = $this->input->post('status');
		$content = $this->input->post('content');
		$url     = $this->input->post('url');

		$insert = array(
			'TITLE'     => addslashes($title),
			'CONTENT'   => addslashes($content),
			'SEO_TITLE' => str_replace(" ", "-", strtolower($title)),
			'STATUS'    => addslashes($status),
			'URL'       => addslashes($url),
			'IS_DELETE' => 0,
		);

		$this->Element_html_model->save($insert);

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("element_html");	
	}

	public function update($id=0) 
	{
		$title   = $this->input->post('title');
		$status  = $this->input->post('status');
		$content = $this->input->post('content');
		$url     = $this->input->post('url');

		$insert = array(
			'TITLE'     => addslashes($title), 
			'SEO_TITLE' => str_replace(" ", "-", strtolower($title)),
			'CONTENT'   => addslashes($content),
			'STATUS'    => addslashes($status),
			'URL'       => addslashes($url),
			'IS_DELETE' => 0,
		);
		$this->Element_html_model->update($insert,$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("element_html");
	}

	public function page_list_rest()
	{
		$query = $this->Element_html_model->get_all_items(100,0);
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();
		$json_object->rows  = @$query->result();		
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Element_html_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('element_html');
	}
}