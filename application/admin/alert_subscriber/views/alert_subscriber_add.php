<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Alert Subscriber <small>Function to create subscriber</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
			<?php echo $error_message; ?>
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/alert_subscriber/tables" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-reply"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Alert Subscriber Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open('',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('User Name*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'user_name','class' => 'form-control fullname_autocomplete','required' => 'required')); ?></td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/alert_subscriber/tables','Back', array('title' => 'Back to Bbm list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
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
			$('.fullname_autocomplete').autoComplete({
			    source: function(term, response){
			        $.getJSON('<?php echo base_url(); ?>index.php/alert_subscriber/search_fullname', { q: term }, function(data){ 
			        	response(data)});
			    }
			});

			$("#form_add").on("submit",function() {
				$.get('<?php echo base_url(); ?>index.php/alert_subscriber/check_user?q='+$('input[name=user_name]').val(),function(json) {
					alert(json.message);
					if(json.status) {
						window.location = '<?php echo base_url(); ?>index.php/alert_subscriber/tables';
					}
				});
				return false;
			});
        } else {
           setTimeout(function() { defer() }, 2000);
        }
	 })();
</script>