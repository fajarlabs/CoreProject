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
	<h1 class="page-header">Skill & Experience Management <small>Function to create Skill & Experience</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/skill/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Region Management - Table</h4>
                </div>


                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('skill/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Skill & Experience*') ?></td>
							<td>

								<div class="row">
									<div class="col-md-12">
										<?php echo form_input(array('type' => 'text', 'name' => 'skill','class' => 'form-control','required' => 'required','maxlength' => 50)); ?>
									</div>
								</div>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/skill','Back', array('title' => 'Back to Skill & Experience list', 'class' => 'btn btn-sm btn-primary')); ?>
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
	var Ids4 = 1;
	var Ids3 = 1;
	var Ids2 = 1;
	var Ids = 1;
	function generate_certificate(){
		var  html ='<div id="row_certificate_'+Ids4+'"><div class="row"><hr class="hr_black">';
					html +='<div class="col-md-6">';
					html +='  <input name="certificate_name[]" value="" class="form-control"  maxlength="150" placeholder="Certificate Name" type="text">';
					html +='				</div>';
					html +='				<div class="col-md-6">';
					html +='					<input name="expired_date_certificate[]" value="" class="form-control datepicker" placeholder="Expired Certificate" type="text">';
					html +=		'				</div>';
					html +='			</div><br>';
					html +='			<div class="row">';
					html +='				<div class="col-md-6">';
					html +='					<input name="certificate_from[]" value="" class="form-control" placeholder="Certificate from" type="text">';
					html +='				</div>';
					html +='				<div class="col-md-5">';
					html +='				<input name="certificate_file[]" value="" type="file">';
					html +='				</div>';
					html+=	'<div class="col-md-1">';
					html+=	'	<button type="button" onclick="removeRow(\'row_certificate_\','+Ids4+')" class="btn btn-danger">X</button>';
					html+=	'</div>';
					html +='			</div>';
			$("#data_certificate").append(html);
			$('.datepicker').datepicker();
			Ids4++;
	}
	function generate_work(){
		var  html ='<div id="row_work_'+Ids3+'"><div class="row"><hr class="hr_black">';
						html +='			<div class="col-md-6">';
						html +='				<input name="company_name[]" value="" class="form-control"  maxlength="150" placeholder="Company" type="text">';
						html +='			</div>';
						html +='			<div class="col-md-6">';
						html +='				<input name="position_work[]" value="" class="form-control"  maxlength="50" placeholder="Position" type="text">';
						html +='			</div>';
						html +='		</div><br>';
						html +='		<div class="row">';
						html +='			<div class="col-md-1">';
						html +='				<input name="start_work[]" value="" class="form-control datepicker"  readonly="true" placeholder="Start Work" style="background-color:white" type="text">';
						html +='			</div>';
						html +='			<div class="col-md-5">&nbsp;&nbsp;</div>';
						html +='			<div class="col-md-1">';
						html +='				<input name="end_work[]" value="" class="form-control datepicker" readonly="true" placeholder="End Work" style="background-color:white" type="text">';
						html +='			</div>';
						html +='		</div><br>';
						html +='		<div class="row">';
						html +='			<div class="col-md-11">';
						html +='				<textarea class="form-control" name="desc_work[]" placeholder="Describe your work"></textarea>';
						html +='			</div>';
						html+=	'<div class="col-md-1">';
						html+=	'	<button type="button" onclick="removeRow(\'row_work_\','+Ids3+')" class="btn btn-danger">X</button>';
						html+=	'</div>';
						html +='		</div>';
					html +='	</div>';			
					html +=	'</div>';
			$("#data_work").append(html);
			$('.datepicker').datepicker();
			Ids3++;
	}
	function generate_edu(){
		var  html ='<div class="row" id="row_edu_'+Ids+'"><br/>';
					 	html+=	'<div class="col-md-3">';
						html+=	'<select name="edu[]" class="form-control" required>';
						html+=		'<option value="">--Choose Education--</option>';
								<?php foreach($education as $edu){ ?>
						html+=		'<option value="<?php echo $edu->ID_REF_EDUCATION ?>"><?php echo $edu->EDUCATION_TYPE ?></option>';
								<?php } ?>
						html+=	'</select>';
						html+=  '</div>';
						html+= '<div class="col-md-8">';
						html+= '<input placeholder="School Name" name="edu_text[]"  class="form-control"  type="text" required>';
						html+='</div>';
						html+=	'<div class="col-md-1">';
						html+=	'	<button type="button" onclick="removeRow(\'row_edu_\','+Ids+')" class="btn btn-danger">X</button>';
						html+=	'</div>';
			html+='</div>';
			$("#data_edu").append(html);
			Ids++;
	}

	function generate_exp(){
		var  html ='<div class="row" id="row_exp_'+Ids2+'"><br/>';
					 	html+=	'<div class="col-md-8">';
						html+=	'<select name="exp[]" class="form-control">';
						html+=		'<option value="">--Choose Experience--</option>';
								<?php foreach($experience as $exp){ ?>
						html+=		'<option value="<?php echo $exp->ID_REF_EXP ?>"><?php echo $exp->EXP_TYPE ?></option>';
								<?php } ?>
						html+=	'</select>';
						html+=  '</div>';
						html+=	'<div class="col-md-3">';
						html+=	'	<select name="exp_lvl[]" class="form-control">';
						html+=	'		<option value="1">Beginner</option>';
						html+=	'		<option value="2">Intermediate</option>';
						html+=	'		<option value="3">Advanced</option>';
						html+=	'	</select>';
						html+=	'</div>';
						html+=	'<div class="col-md-1">';
						html+=	'	<button type="button" onclick="removeRow(\'row_exp_\','+Ids2+')" class="btn btn-danger">X</button>';
						html+=	'</div>';
						html+='</div>';
			html+='</div>';
			$("#data_exp").append(html);
			Ids2++;
	}

	function removeRow(id_div,myIds){
			$("#"+id_div+myIds).slideUp('slow');
			setTimeout(function(){ $("#"+id_div+myIds).remove(); }, 1000);
	}	
</script>