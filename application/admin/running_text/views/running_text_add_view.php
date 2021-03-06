<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Running Text List <small>Function to create & view running text</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/running_text/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Running Text List - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('running_text/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Message*') ?></td>
							<td><?php echo form_textarea(array('type' => 'text', 'name' => 'message','class' => 'form-control')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Start Display Time') ?></td>
							<td>
								<?php datetimepicker('start_time',date('d/m/Y H:i')); ?>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Stop Display Time') ?></td>
							<td>
								<?php datetimepicker('stop_time',date('d/m/Y H:i')); ?>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Client Site*') ?></td>
							<td><?php
							$client_site_array = array();
							if($client_site->num_rows() > 0) {
								foreach($client_site->result() as $row_client_site) {
									$client_site_array[$row_client_site->CLIENT_SITE_ID] = $row_client_site->CLIENT_SITE_NAME;
								}
							}
							echo form_dropdown('client_site_id', $client_site_array, '', 'class="form-control"'); ?></td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/running_text','Back', array('title' => 'Back to Barge list', 'class' => 'btn btn-sm btn-primary')); ?>
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