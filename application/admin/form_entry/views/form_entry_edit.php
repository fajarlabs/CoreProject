
<?php 

if($item->num_rows() > 0) { 
$object = @$item->result()[0];
?>
<script type="text/javascript">

	var d64 = JSON.parse(atob('<?php echo base64_encode(json_encode($object)); ?>'));
	
	// inisialisasi untuk header table
	var header_tr = "<tr><th style=\"width:25px;\"><center>No</center></th><th style=\"width:250px;\"> &nbsp;&nbsp;Activities</th><th style=\"width:80px;\"> Time</th><th style=\"width:100px;\"> Date</th><th> Remarks/Delays/Etc</th></tr>";

	// inisialisasi untuk footer table
	var footer_tr = "<tr><td></td><td>Remarks</td><td colspan=\"3\"><input type=\"text\" style=\"margin-left:-10px;width:100%;\" name=\"activities_remarks\" value=\"<?php echo @$object->ACTIVITIES_REMARKS; ?>\" /></td></tr>";

	// fungsi defer untuk menunggu jquery selesai di load pada browser
	(function defer() {

	      if (window.jQuery) {  	

	  		var select_intervention = "<?php echo @$select_intervention; ?>";
	  		var select_product      = "<?php echo @$product_type; ?>" ;
	  		var search_name         = 'timelog_'+select_product.toLowerCase()+'_'+select_intervention.toLowerCase();

	  		// element yg sudah di set tetap fsoq,sample_source,date_of_analysis
	  		// search all & extract element in ID el_div_qty
			add_tb_certificate();

	  		// iterate element timelog
	  		$("#el_div_timelog :input").each(function() {
	  			// filter by type & name
	  			var el_type = $(this).attr('type');
	  			// clear element name
	  			var el_name = $(this).attr('name').replace("[","").replace("]","");
	  			var val_data_column = d64[el_name.toUpperCase()];

	  			// checkbox
	  			if(el_type == 'checkbox') {
	  				if(val_data_column == 'Y') {
	  					$(this).prop('checked',true);
	  				}
	  			}
	  			
	  			// text
	  			if(el_type == 'text') {

	  				// filter date and modified value date 
	  				if(val_data_column != null) {
	  					var temp_split = val_data_column.split('-');
		  				if(temp_split.length == 3) {
		  					val_data_column = temp_split[2]+"/"+temp_split[1]+"/"+temp_split[0];
		  				}
	  				}

	  				$(this).val(val_data_column);
	  			}
			});

	  		// iterate element quality
	  		$("#el_div_quality :input").each(function() {
	  			// filter by type & name
	  			var el_type = $(this).attr('type');
	  			// clear element name
	  			var el_name = $(this).attr('name').replace("[","").replace("]","");
	  			var val_data_column = d64[el_name.toUpperCase()];

	  			// checkbox
	  			if(el_type == 'checkbox') {
	  				if(val_data_column == 'Y') {
	  					$(this).prop('checked',true);
	  				}
	  			}
	  			
	  			// text
	  			if(el_type == 'text') {

	  				// filter date and modified value date 
	  				if(val_data_column != null) {
	  					var temp_split = val_data_column.split('-');
		  				if(temp_split.length == 3) {
		  					val_data_column = temp_split[2]+"/"+temp_split[1]+"/"+temp_split[0];
		  				}
	  				}

	  				$(this).val(val_data_column);
	  			}

	  			// ini untuk filter type file
	  			if((el_type == 'file') && (el_name == 'fsoq')) {
	  				if(val_data_column != null) {
	  					var djson = JSON.parse(val_data_column);
	  					for(var i=0;i<djson.length;i++) {
	  						$("#tb_certificate tr:last").after('<tr><td colspan="2" style="padding-top:2px;padding-left:10px;padding-bottom:3px;"><a target="_blank" class="btn btn-xs btn-primary" href="<?php echo base_url(); ?>uploads/form_entry/'+djson[i]+'"><i class="fa fa-eye"></i> view</a> <i><b>*if you do not want to change the file do not upload</b></i> &nbsp;&nbsp;<a href="javascript:;" onclick="delete_tb_certificate(this)" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i> </a></td></tr>');
	  					}
	  				}
	  			}
			});

	  		// =============================================================================
 	  		// END ELEMENT TIMELOG BERDASARKAN PRODUK DAN INTERVENSI
 	  		// =============================================================================

	  		// =============================================================================
	  		// START CUSTOM ELEMENT BERDASARKAN PRODUCT INTERVENSI
	  		// =============================================================================
	  		var product_interv = select_product.toLowerCase()+'_'+select_intervention.toLowerCase();

	  		// dapatkan element HTML pada bl figure
			$.get('<?php echo base_url(); ?>index.php/form_entry/get_html_komponen/bl_figure_'+product_interv,function(json) {
				$('#td_bl_figure').html(json.rows[0].DATA);
			});

	  		// dapatkan element HTML untuk keperluan elemen pada shore figure
			$.get('<?php echo base_url(); ?>index.php/form_entry/get_html_komponen/sf_'+product_interv,function(json) {
				$('#td_sf').html(json.rows[0].DATA);
			});

	  		// dapatkan element HTML untuk keperluan ship Figure
			$.get('<?php echo base_url(); ?>index.php/form_entry/get_html_komponen/spf_'+product_interv,function(json) {
				$('#td_spf').html(json.rows[0].DATA);
			});

	  		// dapatkan element html untuk keperluan discrepancy
			$.get('<?php echo base_url(); ?>index.php/form_entry/get_html_komponen/dpc_'+product_interv,function(json) {
				$('#td_dpc').html(json.rows[0].DATA);
			});      

	  		// =============================================================================
	  		// END CUSTOM ELEMENT BERDASARKAN PRODUCT INTERVENSI
	  		// =============================================================================

	  		$("#form_add").on("submit",function(){
	  			if(!confirm("Please check once more. Are you sure that you want save this data ?")) {
	  				return false;
	  			}
	  		});

	      } else {
	      		// terus mereload jika jquery belum meload
	        	setTimeout(function() { defer() }, 50);
	      }
	 })();

// fungsi untuk menambahkan rumus pada elemen html
function hitung(e) {
  	var select_intervention = "<?php echo @$select_intervention; ?>";
  	var select_product      = "<?php echo @$product_type; ?>" ;
    var product_interv      = select_product.toLowerCase()+"-"+select_intervention.toLowerCase();

    // case intervention
    switch(product_interv) {

    	//crude division
    	case "crude-loading"           : crude_loading(); break;
    	case "crude-discharge"         : crude_discharge(); break;
    	case "crude-bunker"            : break;
    	case "crude-pipeline"          : break;
    	case "crude-trucking"          : break;
    	case "crude-transhipment"      : break;

    	// product division
    	case "product-loading"         : product_loading(); break;
    	case "product-discharge"       : product_discharge(); break;
    	case "product-bunker"          : break;
    	case "product-pipeline"        : break;
    	case "product-trucking"        : break;
    	case "product-transhipment"    : break;

    	// pretrokimia
    	case "petrokimia-loading"      : break;
    	case "petrokimia-discharge"    : break;
    	case "petrokimia-bunker"       : break;
    	case "petrokimia-pipeline"     : break;
    	case "petrokimia-trucking"     : break;
    	case "petrokimia-transhipment" : break;

    	// gas
    	case "gas-loading"      : break;
    	case "gas-discharge"    : break;
    	case "gas-bunker"       : break;
    	case "gas-pipeline"     : break;
    	case "gas-trucking"     : break;
    	case "gas-transhipment" : break;

    }

    // rumus untuk loading product
    function product_loading() {
		proses("sl_gsv_klobs","bl_quantity_klobs","sl_vs_bol_r1_klobs",1);
		proses("sl_gsv_klobs","bl_quantity_klobs","sl_vef_applied_vs_bol_klobs",1);
		proses("sl_gsv_kl15","bl_quantity_kl15","sl_vs_bol_r1_kl15",1);
		proses("sl_gsv_kl15","bl_quantity_kl15","sl_vef_applied_vs_bol_kl15",1);
		proses("sl_gsv_bbls","bl_quantity_bbls","sl_vs_bol_r1_bbls",1);
		proses("sl_gsv_bbls","bl_quantity_bbls","sl_vef_applied_vs_bol_bbls",1);
		proses("sl_gsv_longton","bl_quantity_longton","sl_vs_bol_r1_longton",1);
		proses("sl_gsv_longton","bl_quantity_longton","sl_vef_applied_vs_bol_longton",1);
		proses("sl_gsv_metricton","bl_quantity_metricton","sl_vs_bol_r1_metricton",1);
		proses("sl_gsv_metricton","bl_quantity_metricton","sl_vef_applied_vs_bol_metricton",1);
	}

	// rumus untuk discharge produk
	function product_discharge() {
		proses("free_water_klobs","bl_quantity_klobs","sl_vs_bol_r1_klobs",100);
		proses("sfbd_gsv_klobs","bl_sfal_klobs","sfal_vs_sf_klobs",100);
		proses("sf_shore_received_klobs","sfbd_gsv_klobs","sfbd_vs_sr_klobs",100);
		proses("sf_shore_received_klobs","bl_quantity_klobs","sr_vs_bol_klobs",100);

		proses("free_water_kl15","bl_quantity_kl15","sl_vs_bol_r1_kl15",100);		
		proses("sfbd_gsv_kl15","robq_kl15","sfal_vs_sf_kl15",100);	
		proses("sf_shore_received_kl15","sfbd_gsv_kl15","sfbd_vs_sr_kl15",100);	
		proses("sf_shore_received_kl15","bl_quantity_kl15","sr_vs_bol_kl15",100);

		proses("free_water_bbls","bl_quantity_bbls","sl_vs_bol_r1_bbls",100);		
		proses("sfbd_gsv_bbls","robq_bbls","sfal_vs_sf_bbls",100);	
		proses("sf_shore_received_bbls","sfbd_gsv_bbls","sfbd_vs_sr_bbls",100);	
		proses("sf_shore_received_bbls","bl_quantity_bbls","sr_vs_bol_bbls",100);

		proses("free_water_longton","bl_quantity_longton","sl_vs_bol_r1_longton",100);		
		proses("sfbd_gsv_longton","robq_longton","sfal_vs_sf_longton",100);	
		proses("sf_shore_received_longton","sfbd_gsv_longton","sfbd_vs_sr_longton",100);	
		proses("sf_shore_received_longton","bl_quantity_longton","sr_vs_bol_longton",100);

		proses("free_water_metricton","bl_quantity_metricton","sl_vs_bol_r1_metricton",100);		
		proses("sfbd_gsv_metricton","robq_metricton","sfal_vs_sf_metricton",100);	
		proses("sf_shore_received_metricton","sfbd_gsv_metricton","sfbd_vs_sr_metricton",100);	
		proses("sf_shore_received_metricton","bl_quantity_metricton","sr_vs_bol_metricton",100);
	}

	// rumus untuk loading crude
	function crude_loading() {
		proses("sfal_nsv_klobs","bl_nsv_klobs","sl_vs_bol_r1_klobs",1);
		proses("sfal_nsv_klobs","bl_nsv_klobs","sl_vef_applied_vs_bol_r1_klobs",1);

		proses("sfal_nsv_kl15","bl_nsv_kl15","sl_vs_bol_r1_kl15",1);
		proses("sfal_nsv_kl15","bl_nsv_kl15","sl_vef_applied_vs_bol_r1_kl15",1);

		proses("sfal_nsv_bbls","bl_nsv_bbls","sl_vs_bol_r1_bbls",1);
		proses("sfal_nsv_bbls","bl_nsv_bbls","sl_vef_applied_vs_bol_r1_bbls",1);

		proses("sfal_nsv_longton","bl_nsv_longton","sl_vs_bol_r1_longton",1);
		proses("sfal_nsv_longton","bl_nsv_longton","sl_vef_applied_vs_bol_r1_longton",1);

		proses("sfal_nsv_metricton","bl_nsv_metricton","sl_vs_bol_r1_metricton",1);
		proses("sfal_nsv_metricton","bl_nsv_metricton","sl_vef_applied_vs_bol_r1_metricton",1);
	}

	// rumus untuk discharge crude
	function crude_discharge() {
		proses("sfal_klobs","bl_nsv_klobs","slvs_bol_r1_klobs",1);
		proses("sfbd_nsv_klobs","bl_nsv_klobs","sfal_vs_sfbd_r2_klobs",1);
		proses("sf_nsv_klobs","sfbd_nsv_klobs","sfbd_vs_sr_r3_klobs",1);
		proses("sf_nsv_klobs","bl_nsv_klobs","sr_vs_bol_r4_klobs",1);

		proses("sfal_kl15","bl_nsv_kl15","slvs_bol_r1_kl15",1);
		proses("sfbd_nsv_kl15","bl_nsv_kl15","sfal_vs_sfbd_r2_kl15",1);
		proses("sf_nsv_kl15","sfbd_nsv_kl15","sfbd_vs_sr_r3_kl15",1);
		proses("sf_nsv_kl15","bl_nsv_kl15","sr_vs_bol_r4_kl15",1);

		proses("sfal_bbls","bl_nsv_bbls","slvs_bol_r1_bbls",1);
		proses("sfbd_nsv_bbls","bl_nsv_bbls","sfal_vs_sfbd_r2_bbls",1);
		proses("sf_nsv_bbls","sfbd_nsv_bbls","sfbd_vs_sr_r3_bbls",1);
		proses("sf_nsv_bbls","bl_nsv_bbls","sr_vs_bol_r4_bbls",1);

		proses("sfal_longton","bl_nsv_longton","slvs_bol_r1_longton",1);
		proses("sfbd_nsv_longton","bl_nsv_longton","sfal_vs_sfbd_r2_longton",1);
		proses("sf_nsv_longton","sfbd_nsv_longton","sfbd_vs_sr_r3_longton",1);
		proses("sf_nsv_longton","bl_nsv_longton","sr_vs_bol_r4_longton",1);

		proses("sfal_metricton","bl_nsv_metricton","slvs_bol_r1_metricton",1);
		proses("sfbd_nsv_metricton","bl_nsv_metricton","sfal_vs_sfbd_r2_metricton",1);
		proses("sf_nsv_metricton","sfbd_nsv_metricton","sfbd_vs_sr_r3_metricton",1);
		proses("sf_nsv_metricton","bl_nsv_metricton","sr_vs_bol_r4_metricton",1);
	}
}

// fungsi rumus pada kolom input
function proses(arg1='',arg2='',output='',multiply=0) {
	var a = $("input[name="+arg1+"]");
	var b = $("input[name="+arg2+"]");
	var c = $("input[name="+output+"]");
	c.val(((a.val()-b.val())/a.val())*multiply);
}

</script>
<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Form Entry <small>Form to create new entry data</small></h1>
	<!-- end page-header -->

    <!-- begin front message -->
    <?php echo (isset($front_message) ? $front_message : ""); ?>
    <!-- end front message -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	    	<?php echo $error_message; ?>
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
						<a href="<?php echo base_url(); ?>index.php/form_entry" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-reply"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Create New Entry Data</h4>
                </div>
                <div class="panel-body">
<!-- START PANEL BODY -->
 <?php echo form_open_multipart('form_entry/update/'.$fef_id, array('id' => 'form_add','style'=>'width:200px;')); ?>
<!-- OK -->
<input type="hidden" name="product_type" value="<?php echo @$product_type_id; ?>" />
<input type="hidden" name="select_intervention" value="<?php echo @$intervention_id; ?>" />
<style>
	td {
		padding-left:10px;
		padding-right:10px;
	}
</style>
<table style="border-collapse: separate;border-spacing: 8px; ">
	<tr>
		<td colspan="2" style="background-color:#006699;">
			<table style="width:100%">
				<tr>
					<td>
						<h5 style="color:#fff;"><i class="fa fa-check"></i> General Form</h5>
					</td>
					<td>
						<a href="javascript:;" onclick="minimize_tr('general_form',this);" class="btn btn-xs btn-primary pull-right">-</a>
					</td>
				</tr>
			</table>
		</td>									
	</tr>
	<tr class="general_form">
		<td width="100px" style="padding-top:15px;"><?php echo form_label('Principle*');?></td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td>
						<input onclick="check_principle(this)" type="radio" name="select_client" value="single_client" <?php echo (@$object->SELECT_CLIENT == 'single_client' ? 'checked' : ''); ?> />Single Client
						<input onclick="check_principle(this)" type="radio" name="select_client" value="multi_client" <?php echo (@$object->SELECT_CLIENT == 'multi_client' ? 'checked' : ''); ?> />Multi Client
						&nbsp;&nbsp;
						<a <?php echo (@$object->SELECT_CLIENT == 'multi_client' ? '' : 'style="display: none;"'); ?> id="id_single_principle" onclick="add_tb_principle()" href="javascript:;" class="btn btn-success btn-xs"><i class="fa fa-plus"></i></a>
					</td>
				</tr>
				<tr>
					<td>
						<table id="tb_principle" style="margin-left:-10px;width:100%;">
							<?php 

								$clients = json_decode(@$object->CLIENTS);
								$client_id = json_decode(@$object->CLIENT_ID);
								if(count($clients) > 0) :
									$i = 0;
									foreach($clients as $key => $vl) : 

										$kontrak = isset(json_decode(@$object->KONTRAK)[$i]) ? json_decode(@$object->KONTRAK)[$i] : '';
										$spk = isset(json_decode(@$object->SPK)[$i]) ? json_decode(@$object->SPK)[$i] : '';
										$voy = isset(json_decode(@$object->VOY)[$i]) ? json_decode(@$object->VOY)[$i] : '';
										$fileref = '<table style="margin-top:3px;margin-left:-10px;width:100%;">'.
											'<tr>'.
												'<td style="width:150px;" align="left">Kontrak</td>'.
												'<td><input style="width:300px;margin-bottom:3px;" type="text" name="kontrak[]" value="'.$kontrak.'" class=" contract_autocomplete" />'.
												'</td>'.
											'</tr>'.
											'<tr>'.
												'<td align="left">LOI/SPK/PO/WO/NOA</td>'.
												'<td>'.
													'<input style="width:300px;margin-bottom:3px;" type="text" name="spk[]" value="'.$spk.'" class="" />'.
												'</td>'.
											'</tr>'.
											'<tr>'.
												'<td align="left">Voy. /Trip No.</td>'.
												'<td>'.
													'<input style="width:300px;margin-bottom:3px;" type="text" name="voy[]" value="'.$voy.'" class="" />'.
												'</td>'.
											'</tr>'.
										'</table><br />'; 

										$clients = isset(json_decode(@$object->CLIENTS)[$i]) ? json_decode(@$object->CLIENTS)[$i] : '';
										$supplier = isset(json_decode(@$object->SUPPLIER)[$i]) ? json_decode(@$object->SUPPLIER)[$i] : '';
										$trader = isset(json_decode(@$object->TRADER)[$i]) ? json_decode(@$object->TRADER)[$i] : '';
										$buyer = isset(json_decode(@$object->BUYER)[$i]) ? json_decode(@$object->BUYER)[$i] : '';
										$seller = isset(json_decode(@$object->SELLER)[$i]) ? json_decode(@$object->SELLER)[$i] : '';
										$sharing_fee = isset(json_decode(@$object->SHARING_FEE)[$i]) ? json_decode(@$object->SHARING_FEE)[$i] : '';
										
										$clientid = 0;
										if(isset($client_id[$i])) {
											$clientid = $client_id[$i];
										}
										echo "<tr>
												<td>
													Client <input type=\"hidden\" id=\"client_id_".$i."\" name=\"client_id[]\" value=\"".$clientid."\" />
													<input name=\"clients[]\" onkeydown=\"initClient(this,null,'client_id_".$i."')\" type=\"\" value=\"".$clients."\"  /> 

													<input class=\"supp_deft_".$i."\" type=\"hidden\" name=\"supplier[]\" value=\"off\" ".(@$supplier == 'on' ? 'disabled=""' : '')." />
													<input onclick='check_state(this,\"supp_deft_".$i."\")' type=\"checkbox\" name=\"supplier[]\" ".(@$supplier == 'on' ? 'checked' : '')." />Supplier&nbsp;

													<input class=\"trade_deft_".$i."\" type=\"hidden\" name=\"trader[]\" value=\"off\" ".(@$trader == 'on' ? 'disabled=""' : '')." />
													<input onclick='check_state(this,\"trade_deft_".$i."\")' type=\"checkbox\" name=\"trader[]\" ".(@$trader == 'on' ? 'checked' : '')." />Trader&nbsp;

													<input class=\"buyer_deft_".$i."\" type=\"hidden\" name=\"buyer[]\" value=\"off\" ".(@$buyer == 'on' ? 'disabled=""' : '')." />
													<input onclick='check_state(this,\"buyer_deft_".$i."\")' type=\"checkbox\" name=\"buyer[]\" ".(@$buyer == 'on' ? 'checked' : '')." />Buyer&nbsp;

													<input class=\"sell_deft_".$i."\" type=\"hidden\" name=\"seller[]\" value=\"off\" ".(@$seller == 'on' ? 'disabled=""' : '')." />
													<input onclick='check_state(this,\"sell_deft_".$i."\")' type=\"checkbox\" name=\"seller[]\" ".(@$seller == 'on' ? 'checked' : '')." />Seller &nbsp;&nbsp;Sharing Fee <input type=\"text\" name=\"sharing_fee[]\" value=\"".$sharing_fee."\" />% <a onclick=\"delete_tb_principle(this)\" href=\"javascript:;\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i></a> ".$fileref."</td></tr>";
										$i++;
									endforeach;
								endif;

								?>
						</table>
						<table id="external_ref" style="margin-left:-10px;width:90%;">
							<tr><td colspan="2"><b>Internal*</b></td></tr>
							<tr>
								<td style="width:150px;" align="left">File Order</td>
								<td><input style="width:300px;margin-bottom:3px;" value="<?php echo @$object->FILE_ORDER; ?>" type="text" name="file_order" class="" /></td>
							</tr>
							<tr>
								<td align="left">IWO</td>
								<td>
									<input style="width:300px;margin-bottom:3px;" type="text" name="iwo" class="" value="<?php echo @$object->IWO; ?>" />
								</td>
							</tr>
						</table>				
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function check_state(e,cls_ref) {
					if ($(e).prop('checked')) {
						$('.'+cls_ref).prop("disabled", true);
					} else {
						$('.'+cls_ref).prop("disabled", false);
					}
				}
				// inisialisasi file ref untuk informasi multi format
				var file_ref = '<table style="margin-top:3px;margin-left:-10px;width:100%;">'+
									'<tr>'+
										'<td style="width:150px;" align="left">Kontrak</td>'+
										'<td><input style="width:300px;margin-bottom:3px;" type="text" name="kontrak[]" class=" contract_autocomplete" />'+
										'</td>'+
									'</tr>'+
									'<tr>'+
										'<td align="left">LOI/SPK/PO/WO/NOA</td>'+
										'<td>'+
											'<input style="width:300px;margin-bottom:3px;" type="text" name="spk[]" class="" />'+
										'</td>'+
									'</tr>'+
									'<tr>'+
										'<td align="left">Voy. /Trip No.</td>'+
										'<td>'+
											'<input style="width:300px;margin-bottom:3px;" type="text" name="voy[]" class="" />'+
										'</td>'+
									'</tr>'+
								'</table><br />';

			     (function defer() {
			          if (window.jQuery) {
		          			var intervention_text = "<?php echo @$select_intervention; ?>";
		          			$("input[name=date_loispkpowonoa]").hide();
		          			$("input[name=date_contract]").hide();

		          			// konten element untuk reset
		          			$(".discharge").hide();
		          			$(".loading").hide();

		          			// jika intervensi adalah loading
		          			if(intervention_text == "Loading") {
		          				$(".discharge").hide();
		          				$(".loading").show();
		          			}

		          			// jika intervensi adalah discharge
		          			if(intervention_text == "Discharge") {
		          				$("input[name=date_loispkpowonoa]").show();
		          				$("input[name=date_contract]").show();
		          				$(".discharge").show();
		          				$(".loading").show();
		          			}

			                $("input[name=select_cargo]").on("click",function() {
			                	// do something
			                });
			          } else {
			               setTimeout(function() { defer() }, 50);
			          }
			     })();

			    // inisialisasi untuk multi client
				// fungsi untuk menambahkan elemen html pada prinsipal
				function add_tb_principle() {
					var id_gen = random_id();
					var str_tr_principle = "<tr><td>Client <input type=\"hidden\" id=\"client_id_"+id_gen+"\" name=\"client_id[]\" /> <input onkeydown=\"initClient(this,null,'client_id_"+id_gen+"')\" name=\"clients[]\" type=\"\" value=\"\" /> <input type=\"checkbox\" name=\"supplier[]\" />Supplier&nbsp;<input type=\"checkbox\" name=\"trader[]\" />Trader&nbsp;<input type=\"checkbox\" name=\"buyer[]\" />Buyer&nbsp;<input type=\"checkbox\" name=\"seller[]\" />Seller &nbsp;&nbsp;Sharing Fee <input type=\"text\" name=\"sharing_fee[]\" />% <a onclick=\"delete_tb_principle(this)\" href=\"javascript:;\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i></a> "+file_ref+"</td></tr>";
					$("#tb_principle").append(str_tr_principle);
				}
				function add_tb_principle100() {
					var id_gen = random_id();
					// inisialisasi elemen jika single client maka sharing fee otomatis 100%
					var str_tr_principle_100 = "<tr><td>Client <input type=\"hidden\" id=\"client_id_"+id_gen+"\" name=\"client_id[]\" /> <input name=\"client_id[]\" onkeydown=\"initClient(this,null,'client_id_"+id_gen+"')\" name=\"clients[]\" type=\"\" value=\"\" /> <input type=\"checkbox\" name=\"supplier\" />Supplier&nbsp;<input type=\"checkbox\" name=\"trader\" />Trader&nbsp;<input type=\"checkbox\" name=\"buyer\" />Buyer&nbsp;<input type=\"checkbox\" name=\"seller\" />Seller &nbsp;&nbsp;Sharing Fee <input type=\"text\" name=\"sharing_fee\" value=\"100\" />% <a onclick=\"delete_tb_principle(this)\" href=\"javascript:;\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i></a> "+file_ref+"</td></tr>";
					$("#tb_principle").append(str_tr_principle_100);
				}

				// fungsi untuk menghapus element html pada prinsipal
				function delete_tb_principle(e) {
					$(e).parent().remove();
				}

				// fungsi untuk menghapus prinsipal awal / reset dan memeriksa prinsipal berdasarkan intervensi
				function check_principle(e) {
					var select_principle = $(e).val();
					$("#tb_principle tr").remove();
					if(select_principle == "single_client") {
						$("#id_single_principle").hide();
						add_tb_principle100();
					} else {
						// tambahkan 1 baris elemen sebagai defaultnya
						add_tb_principle();
						$("#id_single_principle").show();
					}	
				}
			</script>
		</td>
	</tr>
	<tr class="general_form">
		<td width="100px" style="padding-top:15px;"><?php echo form_label('Vessel*'); ?>	</td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td valign="middle">
					<div>
						Multi Cargo <input type="radio" name="select_cargo" value="multi_cargo" />
						Single Cargo <input type="radio" name="select_cargo" value="single_cargo" />
						</div>					
						<input class="autocomplete_text" onkeydown="initVessel(this,'vessel','vessel_id')" type="text" id="vessel" style="width:40%;" name="vessel" value="<?php echo @$object->VESSEL; ?>" /> 
						<input type="hidden" id="vessel_id" name="vessel_id" />
					</td>
				</tr>
			</table>
			<script type="text/javascript">
			     (function defer() {
			          if (window.jQuery) {
			                $("input[name=select_cargo]").on("click",function() {
								/* di sembunyikan karena sudah di set di depan */
								//$("select[name=product_type]").show();
			                });
			          } else {
			               setTimeout(function() { defer() }, 50);
			          }
			     })();
			</script>
		</td>
	</tr>
	<tr class="general_form">
		<td width="100px" style="padding-top:15px;"><?php echo form_label('Job Location*');?></td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Area</td>
					<td colspan="2">
						<input class="autocomplete_text"  onkeydown="initArea(this,null,'area_id')" type="text" style="width:300px;" name="area" value="<?php echo @$object->AREA; ?>" />
						<input type="hidden" name="area_id" id="area_id" />
					</td>
				</tr>
				<tr>
					<td valign="middle" style="width:135px;">Port / Terminal</td>
					<td valign="middle" style="width:200px;">
						<input onclick="check_port(this)" type="radio" value="single_port" name="select_port" <?php echo @$object->SELECT_PORT == "single_port" ? 'checked' : '' ; ?> />
						Single Port
						<input onclick="check_port(this)" type="radio" value="multi_port" name="select_port" <?php echo @$object->SELECT_PORT == "multi_port" ? 'checked' : '' ; ?> />
						Multi Port
					</td>
					<td>
						<a id="id_tb_port" href="javascript:;" onclick="add_tb_port()" class="btn btn-success btn-xs" style="margin-left:10px;margin-bottom:2px;<?php echo @$object->SELECT_PORT == "multi_port" ? '' : 'display:none;' ; ?>"><i class="fa fa-plus"></i></a>
						<table id="tb_port" style="width:100%;">
							<?php 
							$port = json_decode(@$object->PORT_TERMINAL);
							if(count($port) > 0) :
								$i = 0;
								foreach($port as $key => $val):
									echo "<tr><td style=\"padding-top:2px;\"><input class=\"autocomplete_text\" ";
									echo "onkeydown=\"initPort(this,'port_".$i."','port_id_".$i."')\" type=\"text\" style=\"width:300px;\" ";
									echo "name=\"port_terminal[]\" value=\"".$val."\" />";
									echo "<input type=\"hidden\" name=\"port_id[]\" id=\"port_id_".$i."\" />";
									echo "<a onclick=\"delete_tb_port(this)\" style=\"margin-top:-2px;\" href=\"javascript:;\" ";
									echo "class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a></td></tr>";
									$i++;
								endforeach;
							endif;
							?>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr class="general_form">
		<td width="100px" style="padding-top:15px;"><?php echo form_label('Product/Comodity*');?></td>  	
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:250px;" valign="middle">
						<input type="radio" onclick="check_product(this)" value="single_product" name="select_product" <?php echo (@$object->SELECT_PRODUCT == 'single_product' ? 'checked' : ''); ?>  />
						Single Product
						<input type="radio" onclick="check_product(this)" value="multi_product" name="select_product" <?php echo (@$object->SELECT_PRODUCT == 'multi_product' ? 'checked' : ''); ?> />
						Multi Product
					</td>
					<td>
						<table style="width:100%;border-collapse: separate;border-spacing: 8px;">
							<tr>
								<td <?php echo ((@$object->SELECT_PRODUCT == 'single_product') || (@$object->SELECT_PRODUCT == 'multi_product')  ? '' : 'style="display:none;"'); ?> id="lbl_product" width="90px">Choose Product</td>
								<td>
									<a id="id_tb_product" href="javascript:;" onclick="add_tb_product()" class="btn btn-success btn-xs" <?php echo ((@$object->SELECT_PRODUCT == 'multi_product') ? '' : 'style="display:none;margin-left:10px;margin-bottom:2px;"'); ?> ><i class="fa fa-plus"></i></a>

									<?php if((@$object->SELECT_PRODUCT == 'multi_product' ) || ((@$object->SELECT_PRODUCT == 'single_product' ))) : ?>
									<table id="tb_product" <?php echo ((@$object->SELECT_PRODUCT == 'single_product') || (@$object->SELECT_PRODUCT == 'multi_product')  ? '' : 'style="display:none;width:100%;"'); ?>>
										<?php 
										$product_array = json_decode(@$object->PRODUCT);
										$i = 0;
										foreach($product_array as $key => $val) : ?>
										<tr>
											<td style="padding-top:2px;">
												<input class="autocomplete_text" onkeydown="initProduct(this,'product_'+<?php echo $i; ?>,'product_id_<?php echo $i; ?>')" style="width:300px;" type="text" name="product[]" value="<?php echo $val; ?>"/>
												<input type="hidden" name="product_id[]" id="product_id_<?php echo $i; ?>" />
												<a onclick="delete_tb_product(this)" style="margin-top:-2px;" href="javascript:;" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i></a>
											</td>
										</tr>
										<?php $i++; endforeach; ?>
									</table>
									<?php endif; ?>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr class="general_form">
		<td width="100px" style="padding-top:15px;"><?php echo form_label('Loading Date*');?></td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:125px;">Start (Date/Time)</td>
					<td>
						<table>
							<tr><td style="padding-right: 3px;">
								<input style="min-width:100px !important;width:100px;margin-left:3px;" type="text" class="datepicker" data-date-format="dd/mm/yyyy" name="loading_start_date" value="<?php echo convertDateDBFormat(@$object->LOADING_START_DATE,1); ?>" />

							</td>
							<td style="padding-right: 3px;">
								<input style="margin-left:3px;width:100px;" type="text" class="timepicker" name="loading_start_time" value="<?php echo @$object->LOADING_START_TIME; ?>" />

							</td>
						</tr>
					</table>
				</td>
				<td style="width:125px;">Complete (Date/Time)</td>
				<td>
					<table><tr><td style="padding-right: 3px;"">
						<input style="margin-left:3px;width:100px;min-width:100px !important;" type="text" class=" datepicker" data-date-format="dd/mm/yyyy" name="loading_complete_date" value="<?php echo convertDateDBFormat(@$object->LOADING_COMPLETE_DATE,1); ?>" />
						</td><td style="padding-right: 3px;"">
						<input style="margin-left:3px;width:100px;" type="text" class=" timepicker" name="loading_complete_time" value="<?php echo @$object->LOADING_COMPLETE_TIME; ?>" /></td></tr>
					</table>
				</td>
			</tr>
			</table>
		</td>
</tr>
	<tr style="display:none;" class="general_form discharge">
		<td width="100px" style="padding-top:15px;"><?php echo form_label('Discharge Date*');?></td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:125px;">Start (Date/Time)</td>
					<td>
						<table>
							<tr><td style="padding-right: 3px;">
								<input style="min-width:100px !important;width:100px;margin-left:3px;" type="text" class="datepicker" data-date-format="dd/mm/yyyy" name="discharge_start_date" value="<?php echo convertDateDBFormat($object->DISCHARGE_START_DATE,1); ?>" />

							</td>
							<td style="padding-right: 3px;">
								<input style="margin-left:3px;width:100px;" type="text" class="timepicker" name="discharge_start_time" value="<?php echo @$object->DISCHARGE_START_TIME; ?>" />

							</td>
						</tr>
					</table>
				</td>
				<td style="width:125px;">Complete (Date/Time)</td>
				<td>
					<table><tr><td style="padding-right: 3px;"">
						<input style="margin-left:3px;width:100px;min-width:100px !important;" type="text" class=" datepicker" data-date-format="dd/mm/yyyy" name="discharge_complete_date" value="<?php echo convertDateDBFormat(@$object->DISCHARGE_COMPLETE_DATE,1); ?>" />
						</td><td style="padding-right: 3px;"">
						<input style="margin-left:3px;width:100px;" type="text" class=" timepicker" name="discharge_complete_time" value="<?php echo @$object->DISCHARGE_COMPLETE_TIME; ?>" /></td></tr>
					</table>
				</td>
			</tr>
			</table>
		</td>
</tr>
<tr class="general_form">
	<td width="100px" style="padding-top:15px;"><?php echo form_label('BL Date*'); ?></td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Start (date/time)</td>
					<td>
						<table>
							<tr>
								<td style="padding-left:3px;">
									<input style="min-width:100px !important;width:100px;" type="text" class=" datepicker" data-date-format="dd/mm/yyyy" name="bl_start_date" value="<?php echo convertDateDBFormat(@$object->BL_START_DATE,1); ?>" />
								</td>
								<td style="padding-left:7px;">
									<input style="min-width:100px !important;width:100px;" type="text" class=" timepicker" name="bl_start_time" value="<?php echo @$object->BL_START_TIME; ?>" />
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr class="general_form">
		<td width="100px" style="padding-top:15px;"><?php echo form_label('Surveyor In Charge*'); ?></td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td style="width:135px;">Surveyor In Charge</td>
					<td>
						<a id="id_tb_surveyor" onclick="add_tb_surveyor()" style="margin-bottom:3px;" href="javascript:;" class="btn btn-success btn-xs"><i class="fa fa-plus"></i></a>
						<table id="tb_surveyor" style="width:100%;margin-left:-10px;">
							<?php 
							$data_surveyor = json_decode(@$object->SURVEYOR_IN_CHARGE);
							$type_location = json_decode($object->TYPE_LOCATION);
							if(count($data_surveyor) > 0) :
								$i = 0;
								foreach($data_surveyor as $key => $val):
									$level = 0;
									if(isset($type_location[$i])) {
										$level = $type_location[$i];
									}
									echo "<tr><td><select id=\"loc_".$i."\" style=\"height:24px;\" name=\"type_location[]\">";
									echo "<option value=\"0\" ".($level == 0 ? 'selected' : '').">--Choose Level--</option><option value=\"1\" ".($level == 1 ? 'selected' : '').">Pusat</option><option value=\"2\" ".($level == 2 ? 'selected' : '').">Cabang</option></select>";
									echo "<input class=\"autocomplete_text\" id=\"autocomplete_".$i."\" onkeydown=\"initSurveyor(this,'loc_".$i."','surveyor_id_".$i."')\" style=\"width:300px;margin-bottom: 3px;\" type=\"text\" name=\"surveyor_in_charge[]\" value=\"".$val."\" />";
									echo "<input type=\"hidden\" name=\"surveyor_id[]\" id=\"surveyor_id_".$i."\" />";
									echo "<a onclick=\"delete_tb_surveyor(this)\" style=\"margin-top:-2px;\" href=\"javascript:;\" class=\"btn btn-danger btn-xs\">";
									echo "<i class=\"fa fa-minus\"></i></a></td></tr>";
									$i++;
								endforeach; 
							endif;
							?>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="background-color:#006699;">
			<table style="width:100%">
				<tr>
					<td>
						<h5 style="color:#fff;"><i class="fa fa-check"></i> Timelog</h5>
					</td>
					<td>
						<a onclick="minimize_tr('timelog',this);" href="javascript:;" class="btn btn-xs btn-primary pull-right">-</a>
					</td>
				</tr>
			</table>
			
		</td>									
	</tr>
	<tr class="timelog">
		<td id="el_div_timelog" colspan="2">
		<?php echo @$setup_timelog; ?>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="background-color:#006699;">
			<table style="width:100%">
				<tr>
					<td>
						<h5 style="color:#fff;"><i class="fa fa-check"></i> Quantity</h5>
					</td>
					<td>
						<a href="javascript:;" onclick="minimize_tr('quality',this);" class="btn btn-xs btn-primary pull-right">-</a>
					</td>
				</tr>
			</table>
		</td>									
	</tr>
	<tr class="quality">
		<td id="el_div_quality" colspan="2">
			<?php echo @$setup_quality; ?>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="background-color:#006699;">
			<table style="width:100%">
				<tr>
					<td>
						<h5 style="color:#fff;"><i class="fa fa-check"></i> Remarks & Notes</h5>
					</td>
					<td>
						<a onclick="minimize_tr('remarks_notes',this);" href="javascript:;" class="btn btn-xs btn-primary pull-right">-</a>
					</td>
				</tr>
			</table>
			
		</td>									
	</tr>
	<tr class="remarks_notes">
		<td>Remarks & Notes</td>
		<td>
			<table style="width:900px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
				<tr>
					<td colspan="2">Non Nominated Tanks</td>
				</tr>
				<tr>
					<td style="width:150px;">Notice of Apparent Discrepancies issued?</td>
					<td>
						<table style="width:100%;">
							<tr>
								<td style="width:100px;">
									<input onclick="check_notice(this)" type="radio" name="rn_notice_issue" value="yes" <?php echo (@$object->RN_NOTICE_ISSUE == 'yes' ? 'checked' : '') ?> />Yes
									<input onclick="check_notice(this)" type="radio" name="rn_notice_issue" value="no" <?php echo (@$object->RN_NOTICE_ISSUE == 'no' ? 'checked' : '') ?> />No
								</td>
								<td>
									<?php 
									$file = json_decode(@$object->RN_NOTICE_ISSUE_DESCRIPTION);
									if(!empty($file)):?>
									<a class="btn btn-xs btn-success" target="_blank" href="<?php echo base_url(); ?>uploads/form_entry/<?php echo json_decode(@$object->RN_NOTICE_ISSUE_DESCRIPTION); ?>"><i class="fa fa-eye"></i> View</a>
									<b><i>*if you do not want to change the file do not upload</i></b>
									<?php endif; ?>

									<input <?php echo (empty($file) ? 'style="display:none;"' : ''); ?> type="file" name="rn_notice_issue_description" />	
								</td>
							</tr>
						</table>	
						<script type="text/javascript">
							function check_notice(e) {
								var select_notice = $(e).val();
								if(select_notice == "yes") {
									$("input[name=rn_notice_issue_description]").show();
								} else {
									$("input[name=rn_notice_issue_description]").hide();
								}
							}
						</script>
					</td>
				</tr>
				<tr>
					<td style="width:150px;">Letter of Protests isued? </td>
					<td>
						<table style="width:100%;">
							<tr>
								<td style="width:100px;">
									<input onclick="check_letter(this)" type="radio" name="rn_letter_issue" value="yes" <?php echo (@$object->RN_LETTER_ISSUE == 'yes' ? 'checked' : '') ?> />Yes
									<input onclick="check_letter(this)" type="radio" name="rn_letter_issue" value="no" <?php echo (@$object->RN_LETTER_ISSUE == 'no' ? 'checked' : '') ?> />No
								</td>
								<td>
									<?php 
									$file = json_decode(@$object->RN_LETTER_ISSUE_DESCRIPTION);
									if(!empty($file)):?>
									<a target="_blank" class="btn btn-xs btn-success" href="<?php echo base_url(); ?>uploads/form_entry/<?php echo json_decode(@$object->RN_LETTER_ISSUE_DESCRIPTION); ?>"><i class="fa fa-eye"></i> View</a>
									<b><i>*if you do not want to change the file do not upload</i></b>
									<?php endif; ?>
									<input <?php echo (empty($file) ? 'style="display:none;"' : ''); ?> type="file" name="rn_letter_issue_description" />
								</td>
							</tr>
						</table>
						<script type="text/javascript">
							function check_letter(e) {
								var select_letter = $(e).val();
								if(select_letter == "yes") {
									$("input[name=rn_letter_issue_description]").show();
								} else {
									$("input[name=rn_letter_issue_description]").hide();
								}
							}
						</script>
					</td>
				</tr>
				<tr>
					<td style="width:150px;">Statement of Facts issued?</td>
					<td>
						<table id="tb_statement" style="width:100%;">
							<tr>
								<td style="width:100px;">
									<input onclick="check_statement(this)" type="radio" name="rn_statement_issue" value="yes" <?php echo (@$object->RN_STATEMENT_ISSUE == 'yes' ? 'checked' : '') ?> />Yes
									<input onclick="check_statement(this)" type="radio" name="rn_statement_issue" value="no"  <?php echo (@$object->RN_STATEMENT_ISSUE == 'no' ? 'checked' : '') ?> />No
								</td>
								<td>
									<?php 
									$file = json_decode(@$object->RN_STATEMENT_ISSUE_DESCRIPTION);
									if(!empty($file)):?>
									<a target="_blank" class="btn btn-xs btn-success" href="<?php echo base_url(); ?>uploads/form_entry/<?php echo json_decode(@$object->RN_STATEMENT_ISSUE_DESCRIPTION); ?>"><i class="fa fa-eye"></i> View</a>
									<b><i>*if you do not want to change the file do not upload</i></b>
									<?php endif; ?>

									<input <?php echo (empty($file) ? 'style="display:none;"' : ''); ?>" type="file" name="rn_statement_issue_description" />
								</td>
							</tr>
						</table>
						<script type="text/javascript">
							function check_statement(e) {
								var select_statement = $(e).val();
								if(select_statement == "yes") {
									$("input[name=rn_statement_issue_description]").show();
								} else {
									$("input[name=rn_statement_issue_description]").hide();
								}
							}
						</script>
					</td>
				</tr>
				<tr>
					<td style="width:150px;">Bunker onboard</td>
					<td colspan="2">
						<table style="border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
							<tr>
								<td style="width:100px;">On Arrival</td>
								<td>MFO/metric ton <input style="width:100px;" type="text" class="" name="bo_mfo_on_arrival" value="<?php echo @$object->BO_MFO_ON_ARRIVAL; ?>" />&nbsp;&nbsp;MDO/metric ton <input style="width:100px;" type="text" class="" name="bo_mdo_on_arrival" value="<?php echo @$object->BO_MDO_ON_ARRIVAL; ?>" /></td>
							</tr>
							<tr>
								<td style="width:100px;">On Departure</td>
								<td>MFO/metric ton <input style="width:100px;" type="text" class="" name="bo_mfo_on_departure" value="<?php echo @$object->BO_MFO_ON_DEPARTURE; ?>" />&nbsp;&nbsp;MDO/metric ton <input style="width:100px;" type="text" class="" name="bo_mdo_on_departure" value="<?php echo @$object->BO_MDO_ON_DEPARTURE; ?>" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td style="width:150px;">Ships & Sea Condition</td>
					<td colspan="2">
						<table style="border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
							<tr>
								<td style="width:100px;">On Arrival</td>
								<td>DRAFT/meter FWD <input style="width:70px;" type="text" class="" name="sc_on_arrival_draft_fwd" value="<?php echo @$object->SC_ON_ARRIVAL_DRAFT_FWD; ?>" /></td>
								<td>DRAFT/meter AFT <input style="width:70px;" type="text" class="" name="sc_on_arrival_draft_aft" value="<?php echo @$object->SC_ON_ARRIVAL_DRAFT_AFT; ?>" /></td>
								<td>LIST <input style="width:70px;" type="text" class="" name="sc_on_arrival_draft_list" value="<?php echo @$object->SC_ON_ARRIVAL_DRAFT_LIST; ?>" /></td>
							</tr>
							<tr>
								<td style="width:100px;">On Departure</td>
								<td>DRAFT/meter FWD <input style="width:70px;" type="text" class="" name="sc_on_departure_draft_fwd" value="<?php echo @$object->SC_ON_DEPARTURE_DRAFT_FWD; ?>" /></td>
								<td>DRAFT/meter AFT <input style="width:70px;" type="text" class="" name="sc_on_departure_draft_aft" value="<?php echo @$object->SC_ON_DEPARTURE_DRAFT_AFT; ?>" /></td>
								<td>LIST <input style="width:70px;" type="text" class="" name="sc_on_departure_draft_list" value="<?php echo @$object->SC_ON_DEPARTURE_DRAFT_LIST; ?>" /></td>
							</tr>
							<tr>
								<td style="width:100px;">Sea Condition</td>
								<td colspan="3"><input style="width:100%" type="text" class="" name="sc" value="<?php echo @$object->SC; ?>" /></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<button type="reset" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-success">Submit</button>
		</td>
	</tr>
</table>
<?php echo form_close(); ?>

<!--END CONTAINER -->
                </div>
			</div>
		</div>
	</div>
</div>     
<?php 
} else {
	echo "<center><h3>Data Not found!</h3><a href='".base_url()."index.php/form_entry' class='btn btn-sm btn-primary'><i class='fa fa-arrow-left'></i> Back</a></center>";
}?>