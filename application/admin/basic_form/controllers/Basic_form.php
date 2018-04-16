<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Basic_form extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();

		$this->data['html_css'] = '
    		<style>
    			.textbox .textbox-text {
    				color : #000;
    			}

    			.textbox {
    				border : 1px solid #CCD0D6;
    			}
    		</style>';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();

					// masking 
					$(".format-date").mask("00/00/0000", {placeholder: "__/__/____"});

					// datebox + masking
					$(".datebox").datebox({  required:true }).datebox("textbox").mask("99/99/9999",{placeholder:" "}); 
				});

				function newSlider()
				{
					window.open("'.base_url().'index.php/slider/add","_self");
				}

				function editSlider()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/slider/edit/"+row.SLIDER_ID,"_self");
				}

				function destroySlider()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/slider/delete/"+row.SLIDER_ID,"_self");
					}
				}

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
		$this->data['title'] = "Basic Form";
		$this->load->view('admin/header',$this->data);
		$this->load->view('basic_form_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}
}