<!-- begin #content -->
<div id="content" class="content">

	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Template Component Management <small>Function to create port</small></h1>
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
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Template Component Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<div id="base-form" style="display:none;">
						<div id="row" class="row" style="margin-bottom:2px;">
							<div class="col-xs-11">
								<input id="key_field" type="hidden" name="key_field[]" class="form-control" value="" />
								<input id="val_field" type="text" name="val_field[]" class="form-control" value="" />
							</div>
							<div class="col-xs-1">
								<a id="remove" onclick="remove_field(this)" class="btn btn-danger form-control"><i class="fa fa-trash-o"></i></a>
							</div>
						</div>
                	</div>
                	<?php echo form_open_multipart('template_component/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Template Name *') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'template_name','class' => 'form-control')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Menu *') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'menu_id','class' => 'form-control', 'id' => 'menu')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Field Name*') ?></td>
							<td>
								<a href="javascript:;" onclick="add_field('','');" class="btn btn-sm btn-success form-control"><i class="fa fa-plus"></i> Add Field</a>
								<br /><br />
								<div id="field">
								</div>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/template_component','Back', array('title' => 'Back to Template Component list', 'class' => 'btn btn-sm btn-primary')); ?>
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