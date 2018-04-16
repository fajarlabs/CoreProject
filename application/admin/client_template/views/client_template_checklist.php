<!-- begin #content -->
<div id="content" class="content">
	
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Client Template Form Management <small>Function to checklist template</small></h1>
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
                    <h4 class="panel-title">Client Template Form Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('client_template/save_checklist/',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Template Name*') ?></td>
							<td><?php
							$template_array = array();
							if(@$item->num_rows() > 0) {
								foreach($item->result() as $row_template) {
									$template_array[$row_template->CLIENT_TEMPLATE_ID] = $row_template->TEMPLATE_NAME;
								}
							}
							echo form_dropdown('template_id', $template_array, @$template_id->result()[0]->CLIENT_TEMPLATE_ID, 'class="form-control" id="template_id"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Tree Menu*') ?></td>
							<td>
						    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
						            url="" pageList="[50,100,400]"
						            toolbar="#toolbar" pagination="true"
						            rownumbers="true" fitColumns="true" singleSelect="true">
			                    <thead>
			                        <tr>
			                            <th field="FIELD_NAME" width="85%">Field Name</th>
			                            <th field="BTN_ACCESS" align="center" width="10%"><center>Access</center></th>
			                        </tr>
			                    </thead>
			                    </table>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2">
								<?php e(form_hidden('client_site_id',$client_site_id)); ?>
								<?php e(form_hidden('menu_id',$menu_id)); ?>
								<?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/client_template/setting/'.@$client_site_id,'Back', array('title' => 'Back to Client Site list', 'class' => 'btn btn-sm btn-primary')); ?>
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