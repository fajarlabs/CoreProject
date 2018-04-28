<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Product Management <small>Function to edit product</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/product/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Menu Management - Table</h4>
                </div>
                <div class="panel-body">
					<form id="userRegisterForm" method="post" action="<?php echo base_url(); ?>index.php/product/update/<?php echo @$id; ?>">

						<table class="table table-striped  table-bordered">
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Product Reference') ?></td>
								<td><?php echo form_input(array('type' => 'text','style'=>'width: 100%; height: 35px;', 'name' => 'product_reference','class' => 'easyui-combotree form-control', 'data-options' => 'url:\''.base_url().'index.php/product/list_menu_ref_rest\',method:\'get\',label:\'Select Menu Reference\',labelPosition:\'top\',value:\''.@$item->result()[0]->REFERENCE.'\'')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Product Name') ?></td>
								<td><?php echo form_input(array('value' => @$item->result()[0]->PRODUCT_NAME,'id' => 'title','type' => 'text', 'name' => 'product_name','class' => 'form-control','required' => 'required')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Product Position') ?></td>
								<td><?php echo form_input(array('value' => @$item->result()[0]->WEIGHT ,'id' => 'weight','type' => 'number', 'name' => 'weight','class' => 'form-control')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Show') ?></td>
								<td>
									<?php echo form_dropdown('show', array(1 => 'Yes', 0 => 'No'), @$item->result()[0]->SHOW, 'id="show" class="form-control"'); ?>
								</td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Intervention Reference') ?></td>
								<td>
									* <strong><small>For product reference and intervention on entry form</small></strong><br />
									<?php 
									$array_intv_ref = json_decode(@$item->result()[0]->INTERVENTION_REFERENCE);
									if ($intervention_items != NULL) : 
										foreach($intervention_items as $row) : 
											$cheked = '';
											if(count($array_intv_ref) > 0):
											    foreach($array_intv_ref as $k => $v) :
											    	if($v == $row->ID) $cheked = 'checked';
											    endforeach;
											endif;
											echo '<input name="intervention_reference[]" type="checkbox" value="'.$row->ID.'" '.$cheked.'/>';
											echo $row->INTERVENTION_NAME."&nbsp;&nbsp;&nbsp;";
										endforeach;
									endif; 
									?>
								</td>
							</tr>
							<tr style="display: none;">
								<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="<?php echo base_url(); ?>index.php/product/" class="btn btn-primary btn-sm button-back">Back</a>
									<input type="submit" id="saveUser" class="btn btn-sm btn-primary"
										value="Save" />
								</td>
							</tr>
						</table>
					</form>
                </div>
            </div>
        </div>
    </div>
</div>