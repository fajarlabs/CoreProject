<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Form Wizard <small>Function to create form dynamic</small></h1>
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
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Form Wizard</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<?php 
                	/* sebelumnya form_entry/tables */
                	echo form_open('form_entry/create',array('method'=>'get')); 
                	?>
					<table>
						<tr>
							<td>
								<table style="border-spacing: 10px;border-collapse: separate;">
									<tr>
										<td>
											<select onchange="get_intervention(this)" class="form-control" style="width:200px;" name="product_type">
												<option value="0">--Choose Product--</option>
												<?php 
												foreach($product->result() as $row) :
													echo "<option value=".$row->PRODUCT_ID.">".$row->PRODUCT_NAME."</option>";
												endforeach;
												?>
											</select>
										</td>
										<td>
											<?php 
											$intervention_array = array();
											$intervention_array[] = '--Choose Intervention--';
											echo form_dropdown('select_intervention', $intervention_array, '', 'style="width:200px;"  class="form-control"',' required="required"'); ?>	
										</td>
										<td>
											<?php echo form_submit('', 'Create', 'class="btn btn-sm btn-primary" style="margin-top:0px;height:33px;"');?>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>
					<table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
					url="<?php echo base_url(); ?>index.php/form_entry/list_rest"
					toolbar="#toolbar" pagination="true"
					rownumbers="true" fitColumns="true" singleSelect="true">
					<thead>
						<tr>
							<th field="AREA" width="30">AREA</th>
							<th field="FILE_ORDER" width="30">FILE ORDER</th>
							<th field="IWO" width="30">IWO</th>
							<th field="KONTRAK" width="30">KONTRAK</th>
							<th field="SPK" width="30">SPK</th>
							<th field="SURVEYOR_IN_CHARGE" width="30">SURVEYOR</th>
							<th field="PRODUCT_NAME" width="20">PRODUCT</th>
							<th field="INTERVENTION_NAME" width="28">INTERVENTION</th>
							<th field="CTIME" width="35">DATE/TIME</th>
							<th field="FUNGSI" width="30" align="center">FUNCTION</th>
						</tr>
					</thead>
				</table>
                </div>
			</div>
		</div>
	</div>
</div>               
<script type="text/javascript">
	function get_intervention(e) {
		$el_product = $(e);
		var el = $('select[name="select_intervention"]');
		el.empty();
		el.append('<option value="0">--Choose Intervention--</option>');
		$.getJSON( "<?php echo base_url(); ?>index.php/form_entry/get_intervention/"+$el_product.val(), function( data ) {
			if(data.length > 0) {
				for(var i=0; i < data.length; i++) {
					el.append('<option value="'+data[i].ID+'">'+data[i].INTERVENTION_NAME+'</option>');
				}
			}
		});
	}
	 (function defer() {
 	    if (window.jQuery) {
 	    	$("form").on("submit",function() {
 	    		var select_site = $("select[name=site_id]").val();
 	    		if(select_site == 0) {
 	    			alert("Lokasi proyek belum dipilih!");
 	    			return false;
 	    		}
 	    	});	
        } else {
           setTimeout(function() { defer() }, 2000);
        }
	 })();
</script>  