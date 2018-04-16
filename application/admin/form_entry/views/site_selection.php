<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Select Site <small>Choose a project location</small></h1>
	<!-- end page-header -->

    <!-- begin front message -->
    <?php echo (isset($front_message) ? $front_message : ""); ?>
    <!-- end front message -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
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
					<table style="width:100%;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
						<tr>
							<td>
								<table style="border-spacing: 10px;border-collapse: separate;">
									<tr>
										<td>
											<select class="form-control" style="width:200px;" name="product_type">
												<option value="">--Choose Product--</option>
												<option value="crude">Crude</option>
												<option value="product">Product</option>
												<option value="petrokimia">Petrokimia</option>
												<option value="gas">Gas</option>
											</select>
										</td>
										<td>
											<?php 
											$intervention_array = array();
											$intervention_array[] = '--Choose Intervention--';
											if($intervention_list->num_rows() > 0) {
												foreach($intervention_list->result() as $row_intervention) {
													$intervention_array[$row_intervention->INTERVENTION_NAME] = $row_intervention->INTERVENTION_NAME;
												}
											}?>
											<?php echo form_dropdown('select_intervention', $intervention_array, '', 'style="width:200px;"  class="form-control"',' required="required"'); ?>	
										</td>
										<td>
											<?php echo form_submit('', 'Form Create', 'class="btn btn-sm btn-primary" style="margin-top:0px;height:33px;"');?>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>
                </div>
			</div>
		</div>
	</div>
</div>               
<script type="text/javascript">
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