<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Setup Element Management <small>Function to create setup element</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/element_connection/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Setup Element Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open('element_connection/update/'.$id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Title*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->NAME ,'id' => 'title','type' => 'text', 'name' => 'title','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Product*') ?></td>
							<td>
							<select name="product" class="form-control">
								<option value="0">--Choose Product--</option>
							<?php if($product->num_rows() > 0) : 
								foreach($product->result() as $row) :
									echo '<option value="'.$row->PRODUCT_ID.'" '.(@$item->result()[0]->PRODUCT_ID == $row->PRODUCT_ID ? 'selected' : '').'>'.$row->PRODUCT_NAME.'</option>';
								endforeach;
							endif; ?>
							</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Intervention*') ?></td>
							<td>
							<select name="intervention" class="form-control">
								<option value="0">--Choose Intervention--</option>
							<?php if($intervention->num_rows() > 0) : 
								foreach($intervention->result() as $row) :
									echo '<option value="'.$row->ID.'" '.(@$item->result()[0]->INTERVENTION_ID == $row->ID ? 'selected' : '').'>'.$row->INTERVENTION_NAME.'</option>';
								endforeach;
							endif; ?>
							</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Element Timelog*') ?></td>
							<td>
							<select name="element_timelog" class="form-control">
								<option value="0">--Choose Element--</option>
							<?php if($element->num_rows() > 0) : 
								foreach($element->result() as $row) :
									echo '<option value="'.$row->ID.'" '.(@$item->result()[0]->ELEMENT_TIMELOG_ID == $row->ID ? 'selected' : '').'>'.$row->NAME.'</option>';
								endforeach;
							endif; ?>
							</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Element Quality*') ?></td>
							<td>
							<select name="element_quality" class="form-control">
								<option value="0">--Choose Element--</option>
							<?php if($element->num_rows() > 0) : 
								foreach($element->result() as $row) :
									echo '<option value="'.$row->ID.'" '.(@$item->result()[0]->ELEMENT_QUALITY_ID == $row->ID ? 'selected' : '').'>'.$row->NAME.'</option>';
								endforeach;
							endif; ?>
							</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Description*') ?></td>
							<td><?php echo form_textarea(array('id'=>'mytextarea','type' => 'text', 'name' => 'content','class' => 'form-control', 'value' =>  '<template>'.html_entity_decode(stripslashes(@$item->result()[0]->DATA)).'</template>' )); ?></td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/element_connection','Back', array('title' => 'Back to html element list', 'class' => 'btn btn-sm btn-primary')); ?>
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