<?php

class Client_peta_indonesia extends MY_Controller
{
	private $data = array();

	public function  __construct()
	{
		parent::__construct();
		// kick if session is expired
		if(empty(get_client_session())) {
			$this->session->set_flashdata('error_message', alert_success('Session expired'));
			redirect('company');
		}

		$this->load->model(array('Peta_indonesia_model'));

		$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);
		$this->data['html_css'] = '
    		<style>
    			.textbox .textbox-text {
    				color : #000;
    			}

    			.textbox {
    				border : 1px solid #CCD0D6;
    			}
    		</style>';
		    
		$this->data['html_css'] .= '
			<style>
				.form-horizontal .control-label{
				/*  text-align:right; */
					text-align:left;
					background-color:#ffa;
				}
			</style>
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />';
		$this->data['html_js'] = '
			<script src="'.base_url().'assets/admin/color-admin/assets/js/dashboard.min.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
			<script type="text/javascript">

				function newData()
				{
					window.open("'.base_url().'index.php/client_form/create","_self");
				}

				function editData()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_form/edit/"+row.ID_INFO,"_self");
				}

				function deleteData()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_form/delete/"+row.ID_INFO,"_self");
				}

				function viewData()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_form/view/"+row.ID_INFO,"_self");
				}

				function remove_element(e_id)
				{
					$("#"+e_id).remove();
				}

				function add_element(upload_id=0)
				{
					var date = new Date();
					var unic = date.getTime();
					
					// clone form
					var bf   = $("#base-form").clone();

					// get element upload
					var fupload_stuff   = bf.find("#upload_stuff");
					var fupload_unic = "upload_"+unic;
					fupload_stuff.attr("id",fupload_unic);
					fupload_stuff.attr("name","upload_file[]");

					// get element upload id
					var fupload_id   = bf.find("#upload_id");
					var upload_id_unic = "upload_id_"+unic;
					fupload_id.attr("id",upload_id_unic);
					fupload_id.attr("name","upload_id[]");

					// get element remove element 
					var aremove_element = bf.find("#remove-element");
					aremove_element.attr("onclick","remove_element(\'tr_"+unic+"\')");

					// set to paper form
					var pf   = $("#paper-form");
					pf.prepend("<tr id=\'tr_"+unic+"\'><td style=\'padding-top:5px;\'>"+bf.html()+"</td></tr>");

					// init upload
					$("#"+fupload_unic).fileinput({previewClass:"","showUpload": false});
					$("#"+fupload_unic).trigger("change");
				}
						
			</script>
			<script src="'.base_url().'assets/admin/js/decimal.js"></script>
			<script>

				$(document).ready(function() {
					try {
						App.init();

						// datagrid
						var dg = $("#dg")
						dg.datagrid({
						  pagination:true,
						  remoteFilter:true
						});
						dg.datagrid("enableFilter");
				    
					} catch(err) {
						console.log(err);
					}
				});

var vectorSource = new ol.source.Vector();
var vectorLayer = new ol.layer.Vector({
      source: vectorSource
    });

var olview = new ol.View({
        zoom: 2,
        minZoom: 2,
        center: [0, 0],
        maxZoom: 20
    });

var map = new ol.Map({
    layers: [
      new ol.layer.Tile({
        source: new ol.source.OSM()
      }),
      vectorLayer
    ],
    target: "map",
    controls: ol.control.defaults({
      attributionOptions: /** @type {olx.control.AttributionOptions} */ ({
        collapsible: false
      })
    }),
    view: new ol.View({
      center: ol.proj.fromLonLat([119.632128, -2.249243]),
      zoom: 4
    })
});

map.on("click", function(evt){

	var iconStyle = new ol.style.Style({
	    image: new ol.style.Icon({
	        anchor: [0.5, 46],
	        anchorXUnits: "fraction",
	        anchorYUnits: "pixels",
	        opacity: 0.75,
	        src: "//openlayers.org/en/v3.8.2/examples/data/icon.png"
	    }),
	    text: new ol.style.Text({
	        font: "12px Calibri,sans-serif",
	        fill: new ol.style.Fill({ color: "#000" }),
	        stroke: new ol.style.Stroke({
	            color: "#fff", width: 2
	        }),
	        text: "Some text"
	    })
	});

    var feature = new ol.Feature(
        new ol.geom.Point(evt.coordinate)
    );
    feature.setStyle(iconStyle);
    vectorSource.addFeature(feature);
});

			</script> 
			';
	}

	public function index()
	{
		$this->load->view('client/header',$this->data);
		$this->load->view('peta_indonesia_view',$this->data);
		$this->load->view('client/footer',$this->data);
	}

	public function page_list_rest()
	{
		$query = $this->Peta_indonesia_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
}