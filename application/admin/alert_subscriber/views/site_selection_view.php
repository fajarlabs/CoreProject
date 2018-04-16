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
                    <h4 class="panel-title">Select Site</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<?php echo form_open('alert_subscriber/set_site',array('id' => 'site_selection')); ?>
					<table style="width:100%;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
						<tr>
							<td>
							<?php echo form_label('Pilih Lokasi Proyek : ') ?>
							<?php
							$site_array = array();
							$site_array[] = '--Select Site--';
							if($sites->num_rows() > 0) {
								foreach($sites->result() as $row) {
									$site_array[$row->CLIENT_SITE_ID] = $row->CLIENT_SITE_NAME;
								}
							}
							echo form_dropdown('site_id', $site_array, '', 'style="height:30px;width:150px;"'); ?>
							<?php echo form_submit('form_entry', 'Submit Form', 'class="btn btn-sm btn-primary" style="margin-top:-4px;"');?>
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