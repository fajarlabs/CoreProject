<?php

class Form_entry extends MY_Controller
{
	private $data = array();

	public function  __construct()
	{
		parent::__construct();

		// kick if session is expired
		if(empty(get_admin_session())) {
			$this->session->set_flashdata('error_message', alert_success('Session expired'));
			redirect('company');
		}

		$this->load->model(
			array(
				'vessel/Vessel_model',
				'barge/Barge_model',
				'port/Port_model',
				'client_site/Client_site_model',
				'client_report/Info_model',
				'area/Area_model',
				'client/Client_model',
				'intervention/Intervention_model',
				'product/Product_model',
				'contract/Contract_model',
				'location/Location_model',
				'cv/Cv_model',
				'Form_entry_model',
				'Komponen_json_model',
				'Komponen_html_model'
			));

		$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);

		$this->data['vessel_list'] = $this->Vessel_model->get_all_items();
		$this->data['barge_list']  = $this->Barge_model->get_all_items();
		$this->data['port_list']   = $this->Port_model->get_all_items();
		$this->data['intervention_list'] = $this->Intervention_model->get_all_items();
		$this->data['location_list'] = $this->Location_model->get_all_items();
		$this->data['html_css'] = '
    		<style>
    			.textbox .textbox-text {
    				color : #000;
    			}

    			.textbox {
    				border : 1px solid #CCD0D6;
    			}

				.table {
				    width: 100%;
				    max-width: 100%;
				    margin-bottom: 0 !important;
				}

				.form-horizontal .control-label{
				/*  text-align:right; */
					text-align:left;
					background-color:#ffa;
				}
    		</style>';
		    
		$this->data['html_css'] .= '
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />';

		$this->data['html_js'] = '
			<script src="'.base_url().'assets/admin/color-admin/assets/js/dashboard.min.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

			<script type="text/javascript">
				
				// fungsi untuk membuka halaman baru
				function newData() {
					window.open("'.base_url().'index.php/form_entry/create","_self");
				}

				// fungsi minimize pada tiap-tiap kotak form
				function minimize_tr(class_tr,e) {
					if(e.innerHTML == "-") {
						$("."+class_tr).slideUp();
						e.innerHTML = "+";
					} else {
						$("."+class_tr).slideDown();
						e.innerHTML = "-";
					}
				}

				// Fungsi rumus perhitungan global
				function rumus(output,arg1,arg2){
					arg1.on("keyup",function() {
						var val_result = ((arg1.val()-arg2.val())/arg1.val())*100;
						output.val(val_result);
					});
					arg2.on("keyup",function() {
						var val_result = ((arg1.val()-arg2.val())/arg1.val())*100;
						output.val(val_result);
					});
				}

				// Fungsi untuk resize iframe
				function resizeIframe(obj) {
				    obj.style.height = obj.contentWindow.document.body.scrollHeight + "px";
				}

				// Inisialisasi file input jquery
				$(".file").fileinput({previewClass:"","showUpload": false});
				$(".file").trigger("change");

				// Kondisi menggunakan intervensi
				if($("input[name=intervention_name]").val() == "summary_discharge_product") {

					// Dapatkan elemen komponen
					var sl_vs_bol_klobs       = $("input[name=sl_vs_bol_klobs]");
					var slfal_vs_sf_klobs     = $("input[name=slfal_vs_sf_klobs]");
					var sfbd_vs_sr_klobs      = $("input[name=sfbd_vs_sr_klobs]");
					var sr_vs_bol_klobs       = $("input[name=sr_vs_bol_klobs]");
					var sl_vs_bol_kl15        = $("input[name=sl_vs_bol_kl15]");
					var slfal_vs_sf_kl15      = $("input[name=slfal_vs_sf_kl15]");
					var sfbd_vs_sr_kl15       = $("input[name=sfbd_vs_sr_kl15]");
					var sr_vs_bol_kl15        = $("input[name=sr_vs_bol_kl15]");
					var sl_vs_bol_bbls        = $("input[name=sl_vs_bol_bbls]");
					var slfal_vs_sf_bbls      = $("input[name=slfal_vs_sf_bbls]");
					var sfbd_vs_sr_bbls       = $("input[name=sfbd_vs_sr_bbls]");
					var sr_vs_bol_bbls        = $("input[name=sr_vs_bol_bbls]");
					var sl_vs_bol_longton     = $("input[name=sl_vs_bol_longton]");
					var slfal_vs_sf_longton   = $("input[name=slfal_vs_sf_longton]");
					var sfbd_vs_sr_longton    = $("input[name=sfbd_vs_sr_longton]");
					var sr_vs_bol_longton     = $("input[name=sr_vs_bol_longton]");
					var sl_vs_bol_metricton   = $("input[name=sl_vs_bol_metricton]");
					var slfal_vs_sf_metricton = $("input[name=slfal_vs_sf_metricton]");
					var sfbd_vs_sr_metricton  = $("input[name=sfbd_vs_sr_metricton]");
					var sr_vs_bol_metricton   = $("input[name=sr_vs_bol_metricton]");
					var free_water_klobs      = $("input[name=free_water_klobs]");
					var bl_qty_klobs          = $("input[name=bl_qty_klobs]");
					var sfbd_gsv_klobs        = $("input[name=sfbd_gsv_klobs]");
					var sfbd_gsv_klobs        = $("input[name=sfbd_gsv_klobs]");
					var sfal_klobs            = $("input[name=sfal_klobs]");
					var sh_rec_klobs          = $("input[name=sh_rec_klobs]");
					var bl_qty_klobs          = $("input[name=bl_qty_klobs]");
					var sfbd_tov_kl15         = $("input[name=sfbd_tov_kl15]");
					var bl_qty_kl15           = $("input[name=bl_qty_kl15]");
					var robq_kl15             = $("input[name=robq_kl15]");
					var free_water_kl15       = $("input[name=free_water_kl15]");
					var sh_rec_kl15           = $("input[name=sh_rec_kl15]");
					var sfbd_tov_bbls         = $("input[name=sfbd_tov_bbls]");
					var bl_qty_bbls           = $("input[name=bl_qty_bbls]");
					var robq_bbls             = $("input[name=robq_bbls]");
					var free_water_bbls       = $("input[name=free_water_bbls]");
					var sh_rec_bbls           = $("input[name=sh_rec_bbls]");
					var sfbd_tov_longton      = $("input[name=sfbd_tov_longton]");
					var bl_qty_longton        = $("input[name=bl_qty_longton]");
					var robq_longton          = $("input[name=robq_longton]");
					var free_water_longton    = $("input[name=free_water_longton]");
					var sh_rec_longton        = $("input[name=sh_rec_longton]");
					var sfbd_tov_metricton    = $("input[name=sfbd_tov_metricton]");
					var bl_qty_metricton      = $("input[name=bl_qty_metricton]");
					var robq_metricton        = $("input[name=robq_metricton]");
					var free_water_metricton  = $("input[name=free_water_metricton]");
					var sh_rec_metricton      = $("input[name=sh_rec_metricton]");

					// binding elemen fungsi rumus
					rumus(sl_vs_bol_klobs,free_water_klobs,bl_qty_klobs);
					rumus(slfal_vs_sf_klobs,sfbd_gsv_klobs,sfal_klobs);
					rumus(sfbd_vs_sr_klobs,sh_rec_klobs,sfbd_gsv_klobs);
					rumus(sr_vs_bol_klobs,sh_rec_klobs,bl_qty_klobs);
					rumus(sl_vs_bol_kl15,sfbd_tov_kl15,bl_qty_kl15);
					rumus(slfal_vs_sf_kl15,robq_kl15,free_water_kl15);
					rumus(sfbd_vs_sr_kl15,sh_rec_kl15,robq_kl15);
					rumus(sr_vs_bol_kl15,bl_qty_kl15,sh_rec_kl15);
					rumus(sl_vs_bol_bbls,sfbd_tov_bbls,bl_qty_bbls);
					rumus(slfal_vs_sf_bbls,robq_bbls,free_water_bbls);
					rumus(sfbd_vs_sr_bbls,sh_rec_bbls,robq_bbls);
					rumus(sr_vs_bol_bbls,bl_qty_bbls,sh_rec_bbls);
					rumus(sl_vs_bol_longton,sfbd_tov_longton,bl_qty_longton);
					rumus(slfal_vs_sf_longton,robq_longton,free_water_longton);
					rumus(sfbd_vs_sr_longton,sh_rec_longton,robq_longton);
					rumus(sr_vs_bol_longton,bl_qty_longton,sh_rec_longton);
					rumus(sl_vs_bol_metricton,sfbd_tov_metricton,bl_qty_metricton);
					rumus(slfal_vs_sf_metricton,robq_metricton,free_water_metricton);
					rumus(sfbd_vs_sr_metricton,sh_rec_metricton,robq_metricton);
					rumus(sr_vs_bol_metricton,bl_qty_metricton,sh_rec_metricton);
				}


				$("select[name=intervention_id]").on("change",function() {
					if(this.value > 0) {
						$("#iframe_page").show();
						$("#iframe_page").attr("src","'.base_url().'index.php/form_entry/form_iframe/"+this.value);
					} else {
						$("#iframe_page").hide();
						$("#iframe_page").attr("src","");
					}
				});

				$("select[name=contract_id]").on("change",function(e) {
					var contract_id = parseInt($(this).val());
					if(contract_id > 0) {
						$("input[name=po]").show();
						$("input[name=file_order]").show();
						$("input[name=file_order]").fileinput({previewClass:"","showUpload": false});
					}
				});

				$("select[name=principle]").on("change",function(e) {
					$("select[name=contract_id]").hide();
					$("input[name=retail]").hide();
					$("input[name=po]").hide();
					$("input[name=file_order]").fileinput("destroy");
					$("input[name=file_order]").hide();

					$("select[name=contract_id]").find("option").remove();
					$("input[name=retail]").val("");

					if($(this).val() == "contract") {
						$.get("'.base_url().'index.php/form_entry/contract_rest",function(r) {
							if(r.total > 0) {
								var ctc = $("select[name=contract_id]");
								ctc.show();
								ctc.append($("<option>", { 
								        value: 0,
								        text : "--Select Contract--"
								    }));
								$.each(r.rows, function (i, item) {
								    ctc.append($("<option>", { 
								        value: item.ID,
								        text : item.CONTRACT 
								    }));
								});
							}
						});
					}

					if($(this).val() == "retail") {
						$("input[name=retail]").show();
					}
				});		
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
				        
				        FormWizard.init();
				        FormPlugins.init();
						
					    // masking 
						$(".format-date").mask("00/00/0000", {placeholder: "__/__/____"});
						// datebox + masking
						$(".datebox").datebox({  required:true }).datebox("textbox").mask("99/99/9999",{placeholder:" "}); 
						$(".selectpicker").on("change", function(){
						    var selected = $(this).find("option:selected").val();
						});	
					} catch(err) {
						console.log(err);
					}
				});
			</script>'; 	
	}

	// tampilan form wizard pertama muncul
	public function index()
	{	
		$this->data['error_message'] = $this->session->flashdata("error_message");
		$this->data['sites'] = $this->Client_site_model->get_all_items();
		$this->data['product'] = $this->Product_model->get_menu_by_reference(0);
		$this->load->view('admin/header',$this->data);
		$this->load->view('site_selection',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	// menampilkan halaman form setelah dari wizard / halaman pertama
	public function create()
	{
		$this->data['site_id']      	 = $this->session->userdata("site_id");
		$this->data['site_name']   		 = $this->session->userdata("site_name");
		$this->data['title_page']        = "Form Entry";
		$this->data['title_description'] = "Function to input general form";
		$this->data['error_message']     = $this->session->flashdata('error_message');

		// parameter data GET untuk acuan model form yang akan ditampilkan
		$this->data['product_type_id']   = strtolower(str_replace(" ", "_", $this->input->get("product_type")));
		$this->data['intervention_id'] 	 = strtolower(str_replace(" ", "_", $this->input->get("select_intervention")));

		// intervention name
		$intervention_query = $this->Intervention_model->get_item_by_id((int)$this->input->get("select_intervention"));
		$intervention_name  = isset($intervention_query->result()[0]->INTERVENTION_NAME) ? $intervention_query->result()[0]->INTERVENTION_NAME : '';
		$this->data['select_intervention'] = str_replace(" ","_",strtolower($intervention_name));

		// product name
		$product_query = $this->Product_model->get_item_by_menu_id((int)$this->input->get("product_type"));
		$product_name  = isset($product_query->result()[0]->PRODUCT_NAME) ? $product_query->result()[0]->PRODUCT_NAME : '';
		$this->data['product_type'] = str_replace(" ","_",strtolower($product_name));

		$query = $this->Komponen_html_model->get_item_by_name(strtolower('quantity_'.$this->data['product_type'].'_'.$this->data['select_intervention']));

		$this->data['html_quantity'] = @$query->result()[0]->DATA;

		$this->load->view('admin/header',$this->data);
		$this->load->view('form_entry_add',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	// untuk meng-create element component pada kolom timelog
	// menggunakan parameter name "intervention" dan "product"
	public function get_timelog_json($name='') 
	{
		$query = $this->Komponen_json_model->get_item_by_name($name);
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();	
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function tables() 
	{
        $query_site = $this->Client_site_model->get_item_by_id($this->input->post("site_id"));
        if($query_site->num_rows() > 0) {
        	foreach($query_site->result() as $row) {
        		$this->session->set_userdata('site_id',$row->CLIENT_SITE_ID);
        		$this->session->set_userdata('site_name',$row->CLIENT_SITE_NAME);
        	}
        }

		$this->data['site_id']     = $this->session->userdata("site_id");
		$this->data['site_name']   = $this->session->userdata("site_name");
		$this->data['error_message'] = $this->session->flashdata("error_message");
		$this->load->view('admin/header',$this->data);
		$this->load->view('form_entry',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function get_html_komponen($name='') 
	{
		$query = $this->Komponen_html_model->get_item_by_name($name);
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();	
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
	
	public function save()
	{
		// ================================================================================================
		// sinkronisasi kolom tabel pada tabel 'FORM_ENTRY_FIELD'
		// membuat kolom baru jika kolom belum tersedia dengan defaultnya type 'TEXT'
		// ================================================================================================
		// checking & create kolom untuk post
		create_column_1d(get_key_post());
		// checking & create kolom untuk files
		create_column_1d(get_key_files());

		// ================================================================================================
		// field parameter yang diupload
		// fsoq[],rn_notice_issue_description,rn_letter_issue_description,rn_statement_issue_description
		// ================================================================================================
		$path = './uploads/form_entry';
        $config['upload_path']   = $path;
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size']      = 100000; // 100Mb
        $config['max_width']     = 4000;
        $config['max_height']    = 4000;

		// check and create folder
		create_folder($path);
		// load setting upload
		$this->load->library('upload', $config);
		// checking files
		$array_file2d = array();

		foreach($_FILES as $key => $val) {
			// check if single file or multiple file
			if(is_multiple_files($val)) {
				$result = $this->upload->do_multi_upload($key);
				if(is_array($result)) {
					if(count($result) > 0) {
						$dump = array();
						foreach($result as $k => $v) {
							$dump[] = $v['file_name'];
						}
						$array_file2d[$key] = $dump;
					}
				}
			} else {
                if ( ! $this->upload->do_upload($key)){
                    $this->upload->display_errors();
                } else {
                    $result = $this->upload->data();
					$array_file2d[$key] = @$result['file_name'];
                }
			}
		}

		// ================================================================================================
		// Upload kolom secara dinamis
		// ================================================================================================
		$col_val = array();
		foreach($_POST as $key => $val) {
			// numeric columnn not allowed
			if(!is_numeric($key)) {
				// check is not array
				if(!is_array($val)) {
					// filter date
					if(get_key_type(strtoupper($key)) == 'date') {
						if(substr_count($val,'/') == 2) {
							$col_val[strtoupper($key)] = date("Y-m-d", strtotime(str_replace('/', '-', $val)));
						} else {
							$col_val[strtoupper($key)] = NULL;
						}
					} else {
						// string value
						$col_val[strtoupper($key)] = $val;
					}
				} else {
					// array value
					$col_val[strtoupper($key)] = json_encode($val);
				}
			}
		}

		// additional column
		$col_val['CREATE_TIME'] = date('Y-m-d H:i:s');
		$col_val['MODIFY_USER'] = get_admin_username();
		$col_val['IS_DELETE']   = 0;

		foreach(get_key_files() as $ky => $vl) {
			$rt = isset($array_file2d[strtolower($vl)]) ? $array_file2d[strtolower($vl)] : '';
			$col_val[strtoupper($vl)] = json_encode($rt);
		}

		$id = $this->Form_entry_model->save($col_val);

		// save history
		$this->_register_history();

		$this->session->set_flashdata('error_message', alert_success('Save Succeded'));
		$this->load->library('user_agent');
		redirect($this->agent->referrer());
	}

	public function update($id=0)
	{
		// ================================================================================================
		// sinkronisasi kolom tabel pada tabel 'FORM_ENTRY_FIELD'
		// membuat kolom baru jika kolom belum tersedia dengan defaultnya type 'TEXT'
		// ================================================================================================
		// checking & create kolom untuk post
		create_column_1d(get_key_post());
		// checking & create kolom untuk files
		create_column_1d(get_key_files());

		// ================================================================================================
		// field parameter yang diupload
		// fsoq[],rn_notice_issue_description,rn_letter_issue_description,rn_statement_issue_description
		// ================================================================================================
		$path = './uploads/form_entry';
        $config['upload_path']   = $path;
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size']      = 100000; // 100Mb
        $config['max_width']     = 4000;
        $config['max_height']    = 4000;

		// check and create folder
		create_folder($path);
		// load setting upload
		$this->load->library('upload', $config);
		// checking files
		$array_file2d = array();

		foreach($_FILES as $key => $val) {
			// check if single file or multiple file
			if(is_multiple_files($val)) {
				$result = $this->upload->do_multi_upload($key);
				if(is_array($result)) {
					if(count($result) > 0) {
						$dump = array();
						foreach($result as $k => $v) {
							$dump[] = $v['file_name'];
						}
						$array_file2d[$key] = $dump;
					} 
				}
			} else {
                if ( ! $this->upload->do_upload($key)){
                    $this->upload->display_errors();
                } else {
                    $result = $this->upload->data();
					$array_file2d[$key] = @$result['file_name'];
                }
			}
		}

		// ================================================================================================
		// Upload kolom secara dinamis
		// ================================================================================================

		$col_val = array();
		foreach($_POST as $key => $val) {
			// numeric columnn not allowed
			if(!is_numeric($key)) {
				// check is not array
				if(!is_array($val)) {
					// filter date
					if(get_key_type(strtoupper($key)) == 'date') {
						if(substr_count($val,'/') == 2) {
							$col_val[strtoupper($key)] = date("Y-m-d", strtotime(str_replace('/', '-', $val)));
						} else {
							$col_val[strtoupper($key)] = NULL;
						}
					} else {
						// string value
						$col_val[strtoupper($key)] = $val;
					}
				} else {
					// array value
					$col_val[strtoupper($key)] = json_encode($val);
				}
			}
		}

		// additional column
		$col_val['CREATE_TIME'] = date('Y-m-d H:i:s');
		$col_val['MODIFY_USER'] = get_admin_username();
		$col_val['IS_DELETE']   = 0;

		foreach(get_key_files() as $ky => $vl) {
			if(isset($array_file2d[strtolower($vl)])) {
				$col_val[strtoupper($vl)] = json_encode($array_file2d[strtolower($vl)]);
			}
		}

		$this->Form_entry_model->update($col_val,$id);

		// update history
		$this->_register_history();
		
		/* development process */
		$this->session->set_flashdata('error_message', alert_success('Update Succeded'));
		redirect('/form_entry');
	}

	private function _register_history() {
		// save product history
		$products = $this->input->post("product");
		if(is_array($products)) {
			if(count($products) > 0) {
				foreach($products as $key => $val) {
					if(!empty($val))$this->Product_model->save_product_history($val);
				}
			}
		}

		// save port history
		$ports = $this->input->post("port_terminal");
		if(is_array($ports)) {
			if(count($ports) > 0) {
				foreach($ports as $key => $val) {
					if(!empty($val))$this->Port_model->save_port_history($val);
				}
			}
		}

		// save vessel history
		$vessel = $this->input->post("vessel");
		if(!empty($vessel)) $this->Vessel_model->save_vessel_history($vessel);

		// save area history
		$area = $this->input->post("area");
		if(!empty($area)) $this->Area_model->save_area_history($area);

		// save client history
		$clients = $this->input->post("clients");
		//$clients = json_decode($clients);
		if(is_array($clients)) {
			if(count($clients) > 0) {
				foreach($clients as $kc => $vc) {
					if(!empty($vc)) $this->Client_model->save_client_history($vc);
				}
			}
		}
	}
	
	public function edit($id=0)
	{
		$this->data['error_message']     = $this->session->flashdata("error_message");
		$this->data['title_page']        = "Form Entry";
		$this->data['title_description'] = "Function to input general form";
		$this->data['fef_id']            = $id;

		$item = $this->Form_entry_model->get_item_by_id((int)$id);
		$this->data['item'] = $item;

		$product_type_id = isset($item->result()[0]->PRODUCT_TYPE) ? $item->result()[0]->PRODUCT_TYPE : ''; 
		$intervention_id = isset($item->result()[0]->SELECT_INTERVENTION) ? $item->result()[0]->SELECT_INTERVENTION : ''; 

		// parameter data GET untuk acuan model form yang akan ditampilkan
		$this->data['product_type_id']   = strtolower($product_type_id);
		$this->data['intervention_id'] 	 = strtolower($intervention_id);

		// intervention name
		$intervention_query = $this->Intervention_model->get_item_by_id((int)$intervention_id);
		$intervention_name  = isset($intervention_query->result()[0]->INTERVENTION_NAME) ? $intervention_query->result()[0]->INTERVENTION_NAME : '';
		$this->data['select_intervention'] = str_replace(" ","_",strtolower($intervention_name));

		// product name
		$product_query = $this->Product_model->get_item_by_menu_id((int)$product_type_id);
		$product_name  = isset($product_query->result()[0]->PRODUCT_NAME) ? $product_query->result()[0]->PRODUCT_NAME : '';
		$this->data['product_type'] = str_replace(" ","_",strtolower($product_name));

		$query = $this->Komponen_html_model->get_item_by_name(strtolower('quantity_'.$this->data['product_type'].'_'.$this->data['select_intervention']));

		$this->data['html_quantity'] = @$query->result()[0]->DATA;

		$this->load->view('admin/header',$this->data);
		$this->load->view('form_entry_edit',$this->data);
		$this->load->view('admin/footer',$this->data);		
	}

	public function list_rest()
	{
		/* get datagrid limit offset */
		$page   = $this->input->post('page');
		$rows   = $this->input->post('rows');
		$offset = $page < 2 ? 1 : $page;
		$offset = ($rows * $offset) - $rows; 
		$filterRules = $this->input->post('filterRules');

		/* get query data */
		$query  = $this->Form_entry_model->get_all_items($offset,$rows,$filterRules);

		$json_object = new stdClass();
		$temp_row = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$row->KONTRAK = implode(", ",json_decode($row->KONTRAK));
				$row->SPK = implode(", ",json_decode($row->SPK));
				$row->SURVEYOR_IN_CHARGE = implode(", ",json_decode($row->SURVEYOR_IN_CHARGE));
				$row->CTIME  = date('d-m-Y H:i:s',strtotime($row->CTIME));
				$row->FUNGSI = '<a href="'.base_url().'index.php/form_entry/edit/'.$row->FEFID.'" class="btn btn-success btn-xs"><i class="fa fa-edit"></i> Edit</a> '; 
				$row->FUNGSI .= '<a href="'.base_url().'index.php/form_entry/delete/'.$row->FEFID.'" onclick="return confirm(\'Delete data permanently. Are you sure? \')" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Delete</a>'; 
				$row->PRODUCT_TYPE = ucfirst($row->PRODUCT_TYPE);
				$row->SELECT_CARGO = ucwords(str_replace("_", " ", $row->SELECT_CARGO));
				$temp_row[] = $row;
			}
		}

		$json_object->total = $this->Form_entry_model->count_all_items($filterRules);
		$json_object->rows  = @$temp_row;

		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id) 
	{
		$this->Form_entry_model->update(array("IS_DELETE" => 1),$id);
		$this->session->set_flashdata('error_message', alert_success('Delete Succeded'));
		redirect('/form_entry');
	}

	public function contract_rest()
	{
		$query_contract = $this->Contract_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query_contract->num_rows();		
		$json_object->rows  = @$query_contract->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	// reset search contact
	public function search_kontrak() {
		$q = $this->input->get("q");
		$query = $this->Contract_model->search_by_contract_name($q);
		$result_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$result_array[] = $row->CONTRACT;
			}
		}
		header('Content-Type: application/json');
		echo json_encode($result_array );
	}

	public function form_entry_rest()
	{
		$json_array = array();
		$grpus      = empty($this->input->get("grpus")) ? 0 : $this->input->get("grpus");
		$id         = empty($this->input->get("id")) ? 0 : $this->input->get("id");
		$query_menu = $this->Product_model->get_menu_by_reference($id);
		
		if($query_menu->num_rows() > 0) {

			foreach($query_menu->result() as $row_menu) {
				
				$query_menu_c = $this->Product_model->get_menu_by_reference($row_menu->PRODUCT_ID);

				if($grpus != 0) {
					// do something
				}

				$json_object = new stdClass();
				$json_object->id           = $row_menu->PRODUCT_ID;
				$json_object->title        = $row_menu->PRODUCT_NAME;
				$json_object->PRODUCT_ID   = $row_menu->PRODUCT_ID;
				$json_object->PRODUCT_NAME = $row_menu->PRODUCT_NAME;

				if($query_menu_c->num_rows() > 0) {
					$json_object->state = "closed";
				} else {
					$json_object->state = "open";
				}

				$json_object->CHECK = "<input id='check_".$row_menu->PRODUCT_ID."' type='checkbox' name='check[]' value='".$row_menu->PRODUCT_ID."'/>";

				$json_array[] = $json_object;
			}

			header('Content-Type: application/json');
			echo json_encode($json_array);
		}
	}

	// rest intervention
	function get_intervention($product_id=0) {
		$json_array = array();
		$product_id = (int) $product_id;
		$query_product = $this->Product_model->get_item_by_product_id($product_id);
		$intervention_reference = NULL;
		if($query_product->num_rows() > 0) {
			foreach($query_product->result() as $row) {
				$intervention_reference = json_decode($row->INTERVENTION_REFERENCE);
			}
		}

		if($intervention_reference != NULL) :
			foreach($intervention_reference as $k => $v) :
				$query_intervention = $this->Intervention_model->get_item_by_id($v);
				if($query_intervention->num_rows() > 0) :
					foreach($query_intervention->result() as $row) :
						$object = new stdClass();
						$object->ID = $row->ID;
						$object->INTERVENTION_NAME = $row->INTERVENTION_NAME;
						$json_array[] = $object;
					endforeach;
				endif;
			endforeach;
		endif;
		
		header('Content-Type: application/json');
		echo json_encode($json_array);
	}

	// rest area 
	public function get_area() {
		$query = trim($this->input->get('q', TRUE));
		$query = $this->Area_model->search_by_area_name($query);
		$json_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->label = $row->AREA_NAME;
				//$o->value = $row->AREA_ID;
				$json_array[] = $o;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}

	// rest client 
	public function get_client() {
		$query = trim($this->input->get('q', TRUE));
		$query = $this->Client_model->search_by_client_name($query);
		$json_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->label = $row->CLIENT_NAME;
				//$o->value = $row->AREA_ID;
				$json_array[] = $o;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}
	
}