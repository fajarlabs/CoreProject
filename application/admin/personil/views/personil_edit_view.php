

<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Personil Management <small>Function to edit personil</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/personil/add/<?Php echo @$item->result()[0]->TYPE_LOCATION ?>" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Personil Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('personil/update/'.$id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Name*') ?></td>
							<td>

								<div class="row">
									<div class="col-md-8">
										<?php echo form_input(array('type' => 'text', 'name' => 'nama','class' => 'form-control','value' => @$item->result()[0]->NAMA,'required' => 'required')); ?>
									</div>
									<div class="col-md-4">
										<input <?PHP if(@$item->result()[0]->GENDER=="L") echo "checked"; ?> type="radio" value="L" name="gender" required=""> Male &nbsp;
										<input <?PHP if(@$item->result()[0]->GENDER=="P") echo "checked"; ?> type="radio" value="P" name="gender" required> Female
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Birthdate*') ?></td>
							<td>
								<div class="row">
									<div class="col-md-8">
										<?php echo form_input(array('type' => 'text', 'name' => 'placedate','class' => 'form-control','required' => 'required','value' => @$item->result()[0]->PLACE_BIRTHDATE,'placeholder' => 'Place of birth','maxlength' => 100)); ?>
									</div>
									<div class="col-md-4">
										<?php echo form_input(array('type' => 'text', 'name' => 'birthdate', 'id' => 'birthdate','class' => 'form-control mydatepicker','required' => 'required','placeholder' => 'Birthdate')); ?>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('E-mail*') ?></td>
							<td><?php echo form_input(array('type' => 'email', 'name' => 'email','class' => 'form-control','value' => @$item->result()[0]->EMAIL,'required' => 'required','maxlength' => 150)); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Position*') ?></td>
							<td>
								<select name="position" class="form-control" required="">
									<option value="">--Choose Position--</option>
									<?php foreach($position as $pst){ ?>
										<option <?php if(@$item->result()[0]->POSISI==$pst->ID_REF_POSITION) echo "selected"; ?> value='<?php echo $pst->ID_REF_POSITION ?>'><?php echo $pst->POSITION ?></option>
									<?php } ?>
								</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Location*') ?> </td>
							<td>
								<input required  type="hidden" value="<?Php echo @$item->result()[0]->TYPE_LOCATION ?>" name="type_location" id="type_location"> 
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
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/personil/detail/'.@$item->result()[0]->TYPE_LOCATION,'Back', array('title' => 'Back to Cv list', 'class' => 'btn btn-sm btn-primary')); ?>
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

	
	function convert_date(date){
		var d=new Date(date.split("/").reverse().join("-"));
		var dd=d.getDate();
		var month = d.getMonth()+1;
		var bln=0;
		if(month<10) { 
			bln = 0+""+month;
		}
		else {
		 bln = month;
		}

		if(dd<10) { 
			dd = 0+""+d.getDate();
		}
		else {
		 dd = d.getDate();
		}
		var mm=  bln;
		var yy=d.getFullYear();
		return mm+"/"+dd+"/"+yy;
	}
	
	(function defer() {
 	    if (window.jQuery) {
 	   	var tgl = convert_date('<?Php echo @$item->result()[0]->BIRTHDATE ?>');	
 	    $("#birthdate").val(tgl);	
	 	$('.mydatepicker').datepicker({
		    dateFormat: 'dd/mm/yy',
		    changeMonth: true,
    		changeYear: true,
    		yearRange: "-100:+0"
		 }); 

 	} else {
           setTimeout(function() { defer() }, 1000);
        }

	 })();


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