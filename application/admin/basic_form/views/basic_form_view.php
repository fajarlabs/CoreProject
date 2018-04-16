<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Basic Form <small>Form to create base form</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/basic_form/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Basic Form - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('basic_form/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Text Input') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'textinput','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Masking Input') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'textinput','class' => 'form-control format-date','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Text Input') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'textinput','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Start Date') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'start_date','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('End Date') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'end_date','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Password') ?></td>
							<td><?php echo form_input(array('type' => 'password', 'name' => 'password','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Combo Box') ?></td>
							<td><?php
							$dropdown_user_group = array();
							$dropdown_user_group['Y'] = 'Yes';
							$dropdown_user_group['N'] = 'No';
							echo form_dropdown('combobox', $dropdown_user_group, '', 'class="form-control"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Remark') ?></td>
							<td><?php echo form_textarea(array('name' => 'remark', 'class' => 'form-control')) ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Upload File') ?></td>
							<td>
								<?php echo form_upload(array('type' => 'file', 'name' => 'upload_file','class' => 'file')); ?>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/basic_form','Back', array('title' => 'Back to Basic list', 'class' => 'btn btn-sm btn-primary')); ?>
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