<style type="text/css">
.hr_black {
    display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #ccc;
    margin: 1em 0;
    padding: 0; 
}
</style>
<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Personil Management <small>Function to create Personil</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/personil/newpersonil/" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Personil Management - Table</h4>
                </div>


                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('personil/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Name*') ?></td>
							<td>

								<div class="row">
									<div class="col-md-8">
										<?php echo form_input(array('type' => 'text', 'name' => 'nama','class' => 'form-control','required' => 'required')); ?>
									</div>
									<div class="col-md-4">
										<input type="radio" value="L" name="gender" required=""> Male &nbsp;
										<input type="radio" value="P" name="gender" required> Female
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Birthdate*') ?></td>
							<td>
								<div class="row">
									<div class="col-md-8">
										<?php echo form_input(array('type' => 'text', 'name' => 'placedate','class' => 'form-control','required' => 'required','placeholder' => 'Place of birth','maxlength' => 100)); ?>
									</div>
									<div class="col-md-4">
										<?php echo form_input(array('type' => 'text', 'name' => 'birthdate','class' => 'form-control mydatepicker','required' => 'required','placeholder' => 'Birthdate')); ?>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('E-mail*') ?></td>
							<td><?php echo form_input(array('type' => 'email', 'name' => 'email','class' => 'form-control','required' => 'required','maxlength' => 150)); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Position*') ?></td>
							<td>
								<select name="position" class="form-control" required="">
									<option value="">--Choose Position--</option>
									<?php foreach($position as $pst){ ?>
										<option value='<?php echo $pst->ID_REF_POSITION ?>'><?php echo $pst->POSITION ?></option>
									<?php } ?>
								</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Location*') ?></td>
							<td> 
								<input onclick="get_type_location('1')" type="radio" value="1" name="type_location" id="type_location"> Pusat
								<input  onclick="get_type_location('2')" type="radio" value="2" name="type_location" id="type_location"> Cabang
								<select style="display:none;" name="sbu" id="sbu" class="form-control" >
									<option value="">--Choose Strategi Business Unit--</option>
									<?php foreach($sbu as $sb){ ?>
										<option value='<?php echo $sb->ID ?>'><?php echo $sb->NAMA_SBU ?></option>
									<?php } ?>
								</select>
								<select style="display:none;" name="cabang" id="cabang" class="form-control" >
									<option value="">--Choose Branch--</option>
									<?php foreach($cabang as $cb){ ?>
										<option value='<?php echo $cb->CABANG_ID ?>'><?php echo $cb->BRANCH_NAME ?></option>
									<?php } ?>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/personil','Back', array('title' => 'Back to Personil list', 'class' => 'btn btn-sm btn-primary')); ?>
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
			$('.mydatepicker').datepicker({
				    format: 'dd/mm/yyyy',
				    changeMonth: true,
					changeYear: true,
					yearRange: "-100:+0"
			});	
		} else {
           setTimeout(function() { defer() }, 1000);
        }
	 })();

	function get_type_location(type){
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