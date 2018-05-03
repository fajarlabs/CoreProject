<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Tool Management <small>Function to edit tool</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/tool/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Tool Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('tool/update/'.$id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Type*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'value' => @$item->result()[0]->JENIS, 'name' => 'jenis','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Name*') ?></td>
							<td><?php echo form_input(array('type' => 'text','value' => @$item->result()[0]->NAMA, 'name' => 'nama','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Last Update Calibration*') ?></td>
							<td><?php echo form_input(array('value' => check_exist_date(@$item->result()[0]->TGL_END_KALIBRASI), 'type' => 'text', 'name' => 'date_calibration','class' => 'form-control datepicker','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Location*') ?></td>
							<td>
								<input required onclick="get_type_location()" <?Php if(@$item->result()[0]->TYPE_LOCATION=="1") echo "checked"; ?> type="radio" value="1" name="type_location" id="type_location"> Kantor Pusat
								<input required onclick="get_type_location()" <?Php if(@$item->result()[0]->TYPE_LOCATION=="2") echo "checked"; ?> type="radio" value="2" name="type_location" id="type_location"> Cabang <br/><br/>
								<select name="sbu" id="sbu" class="form-control" <?Php if(@$item->result()[0]->TYPE_LOCATION!="1") echo "style='display:none' "; ?>>
									<option value="">--Choose Strategi Business Unit--</option>
									<?php foreach($sbu as $sb){ ?>
										<option <?Php if(@$item->result()[0]->ID_SBU==$sb->ID) echo "selected"; ?> value='<?php echo $sb->ID ?>'><?php echo $sb->NAMA_SBU ?></option>
									<?php } ?>
								</select>
								<select name="cabang" id="cabang" class="form-control"  <?Php if(@$item->result()[0]->TYPE_LOCATION!="2") echo "style='display:none' "; ?>>
									<option value="">--Choose Branch--</option>
									<?php foreach($cabang as $cb){ ?>
										<option <?Php if(@$item->result()[0]->ID_CABANG==$cb->CABANG_ID) echo "selected"; ?>  value='<?php echo $cb->CABANG_ID ?>'><?php echo $cb->BRANCH_NAME ?></option>
									<?php } ?>
								</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Total*') ?></td>
							<td><?php echo form_input(array('type' => 'number','value' => @$item->result()[0]->JUMLAH, 'name' => 'jumlah','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Condition*') ?></td>
							<td>
								<select name="condition" class="form-control" required="">
									<option value="">--Choose Condition--</option>
									<option  <?Php if(@$item->result()[0]->KONDISI=="1") echo "selected"; ?> value="1">Very Good</option>
									<option  <?Php if(@$item->result()[0]->KONDISI=="2") echo "selected"; ?>  value="2">Good</option>
									<option  <?Php if(@$item->result()[0]->KONDISI=="3") echo "selected"; ?>  value="3">Bad</option>
									<option <?Php  if(@$item->result()[0]->KONDISI=="4") echo "selected"; ?> value="4">Very Bad</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Photo *') ?></td>
							<td>
								<?php echo form_upload(array('type' => 'file', 'name' => 'file_upload','class' => 'file','id' => 'upload_file')); ?>
								* 5MB Maximum for Attachment File Size
								<br /><br />
								<?php echo anchor(base_url().'uploads/tool_files/'.@$item->result()[0]->UPLOAD_SERTIFIKAT, 'Preview or download', 'class="btn btn-xs btn-success" title="Preview or download"'); ?>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/tool','Back', array('title' => 'Back to Tool list', 'class' => 'btn btn-sm btn-primary')); ?>
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
<script>
	$('.datepicker').datepicker();
	function get_type_location(){
		var type =	$('input[name=type_location]:checked', '#form_add').val();
		if(type=="1"){
			$("#sbu").show();
			$("#sbu").val("");
			$("#cabang").hide();
			$("#cabang").val("");
		}
		else if(type=="2"){
			$("#cabang").show();
			$("#cabang").val("");
			$("#sbu").hide();
			$("#sbu").val("");
		}
	}
	
	
</script>