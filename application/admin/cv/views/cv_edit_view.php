<?php 
//CV Experience data
$i = 0;
$exp = array();
foreach($cv_exp as $my_cv_exp){
	$exp[$i] = $my_cv_exp;
	$i++;
}

//CV Education
$j = 0;
$edu = array();
foreach($cv_edu as $my_cv_edu){
	$edu[$j] = $my_cv_edu;
	$j++;
}

//CV History
$k = 0;
$work = array();
foreach($cv_work as $my_cv_work){
	$work[$k] = $my_cv_work;
	$k++;
}

//CV Certificate
$l = 0;
$cr = array();
foreach($cv_cr as $my_cv_cr){
	$cr[$l] = $my_cv_cr;
	$l++;
}
?>

<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Cv Management <small>Function to edit cv</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/cv/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Cv Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('cv/update/'.$id,array('id' => 'form_add')); ?>
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
										<?php echo form_input(array('type' => 'text', 'name' => 'birthdate','class' => 'form-control datepicker2','required' => 'required','value' => check_exist_date(@$item->result()[0]->BIRTHDATE),'placeholder' => 'Birthdate')); ?>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('E-mail*') ?></td>
							<td><?php echo form_input(array('type' => 'email', 'name' => 'email','class' => 'form-control','value' => @$item->result()[0]->EMAIL,'required' => 'required','maxlength' => 150)); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Contact *') ?></td>
							<td>
								<div class="row">
									<div class="col-md-6">
										<?php echo form_input(array('type' => 'text', 'name' => 'contact_1','class' => 'form-control','required' => 'required','value' => @$item->result()[0]->CONTACT_1,'placeholder' => 'Contact 1 *','maxlength' => 30)); ?>
									</div>
									<div class="col-md-6">
										<?php echo form_input(array('type' => 'text', 'name' => 'contact_2','value' => @$item->result()[0]->CONTACT_2,'class' => 'form-control','placeholder' => 'Contact 2','maxlength' => 30)); ?>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Address*') ?></td>
							<td>
								<?php echo form_input(array('type' => 'text','value' => @$item->result()[0]->ADDRESS, 'name' => 'address','class' => 'form-control','required' => 'required')); ?>
							</td>
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
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Education') ?></td>
							<td>
								<div id="data_edu">
									
								</div><br/>
								<center>
								  <button type="button" onclick="generate_edu()" class="btn btn-success">+ Add Education</button>
								</center>		
							</td>
						</tr>
						<tr>
							<td width="150px"  style="padding-top:15px;"><?php echo form_label('Experience') ?></td>
							<td>
								<div id="data_exp"></div>
								<center><br/>
								  <button type="button" onclick="generate_exp()" class="btn btn-success">+ Add Experience</button>
								</center>		
							</td>
						</tr>
						<tr>
							<td width="150px"  style="padding-top:15px;"><?php echo form_label('History Of Work') ?></td>
							<td>
								<div id="data_work"></div>
								<center><br/>
								  <button type="button" onclick="generate_work()" class="btn btn-success">+ Add History Of Work</button>
								</center>		
							</td>
						</tr>
						<tr>
							<td width="150px"  style="padding-top:15px;"><?php echo form_label('Certificate') ?></td>
							<td>
								<div id="data_certificate"></div>
								<center><br/>
								  <button type="button" onclick="generate_certificate()" class="btn btn-success">+ Add Certificate</button>
								</center>		
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Photo*') ?></td>
							<td>
								<?php echo form_upload(array('type' => 'file', 'name' => 'photo','class' => 'file','id' => 'photo')); ?>
								* 5MB Maximum for Attachment File Size
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('File Upload*') ?></td>
							<td>
								<?php echo form_upload(array('type' => 'file', 'name' => 'file_upload','class' => 'file','id' => 'upload_file')); ?>
								* 5MB Maximum for Attachment File Size
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/cv','Back', array('title' => 'Back to Cv list', 'class' => 'btn btn-sm btn-primary')); ?>
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
		return dd+"/"+mm+"/"+yy;
	}
	
	(function defer() {
 	    if (window.jQuery) {

	 	$('.datepicker2').datepicker({
		    format: 'dd/mm/yyyy',
		    changeMonth: true,
    		changeYear: true
		 }); 	   	
	var data_cr 	 = <?php echo json_encode($cr); ?>;
	var data_exp 	 = <?php echo json_encode($exp); ?>;
	var data_history = <?php echo json_encode($work); ?>;
	var data_edu	 = <?php echo json_encode($edu); ?>;

	function showCertificate( data_cr )
	{
		for( var i = 0; i < data_cr.length; i++ )
		{
			var  html ='<div id="row_certificate_'+Ids4+'"><div class="row"><hr class="hr_black">';
				html +='<div class="col-md-6">';
				html +='  <input id="certificate_name_'+Ids4+'" name="certificate_name_id[]" value="" class="form-control"  maxlength="150" placeholder="Certificate Name" type="text">';
				html +='				</div>';
				html +='				<div class="col-md-6">';
				html +='					<input id="expired_date_certificate_'+Ids4+'" name="expired_date_certificate_id[]" value="" class="form-control datepicker" placeholder="Expired Certificate" type="text">';
				html +=		'				</div>';
				html +='			</div><br>';
				html +='			<div class="row">';
				html +='				<div class="col-md-6">';
				html +='					<input id="certificate_from_'+Ids4+'" name="certificate_from_id[]" value="" class="form-control" placeholder="Certificate from" type="text">';
				html +='					<input id="certificate_id_'+Ids4+'" name="certificate_id[]"  type="hidden">';
				html +='				</div>';
				html +='				<div class="col-md-5">';
				html +='				<input id="certificate_file_'+Ids4+'"  name="certificate_file_id[]" value="" type="file">';
				html +='				</div>';
				html+=	'<div class="col-md-1">';
				html+=	'	<button type="button" onClick="removeRowdata('+data_cr[i].ID+',\'row_certificate_'+Ids4+'\',\'certificate\');return false;"  class="btn btn-danger">X</button>';
				html+=	'</div>';
				html +='			</div>';
				$("#data_certificate").after(html);
				$('.datepicker').datepicker({
				    format: 'dd/mm/yyyy',
				    changeMonth: true,
    				changeYear: true
				 });
				$('#certificate_id_'+Ids4).val(data_cr[i].ID)
				$('#certificate_name_'+Ids4).val(data_cr[i].CERTIFICATE_NAME)
				$('#expired_date_certificate_'+Ids4).val(convert_date(data_cr[i].CERITIFICATE_EXPIRED))
				$('#certificate_from_'+Ids4).val(data_cr[i].CERITIFICATE_FROM)
				Ids4++;
		}
	}

	function showEdu( data_edu )
	{
		for( var i = 0; i < data_edu.length; i++ )
		{
				var  html ='<div class="row" id="row_edu_'+Ids+'"><br/>';
					 	html+=	'<div class="col-md-3">';
						html+=	'<select id="edu_'+Ids+'" name="edu[]" class="form-control" required>';
						html+=		'<option value="">--Choose Education--</option>';
								<?php foreach($education as $edu){ ?>
						html+=		'<option value="<?php echo $edu->ID_REF_EDUCATION ?>"><?php echo $edu->EDUCATION_TYPE ?></option>';
								<?php } ?>
						html+=	'</select>';
						html+=  '</div>';
						html+= '<div class="col-md-8">';
						html+= '<input id="edu_text_'+Ids+'" placeholder="School Name" name="edu_text[]"  class="form-control"  type="text" required>';
						html+='</div>';
						html+=	'<div class="col-md-1">';
						html+=	'	<button type="button" onClick="removeRowdata('+data_edu[i].ID+',\'row_edu_'+Ids+'\',\'edu\');return false;" class="btn btn-danger">X</button>';
						html+=	'</div>';
				html+='</div>';
					$("#data_edu").after(html);
					$('#edu_'+Ids).val(data_edu[i].ID_REF_EDUCATION)
					$('#edu_text_'+Ids).val(data_edu[i].SCHOOL)
					Ids++;
		}
	}

	function showHistory( data_history )
	{
		for( var i = 0; i < data_history.length; i++ )
		{
				var  html ='<div id="row_work_'+Ids3+'"><div class="row"><hr class="hr_black">';
						html +='			<div class="col-md-6">';
						html +='				<input id="company_name_'+Ids3+'" name="company_name[]" value="" class="form-control"  maxlength="150" placeholder="Company" type="text">';
						html +='			</div>';
						html +='			<div class="col-md-6">';
						html +='				<input id="position_work_'+Ids3+'" name="position_work[]" value="" class="form-control"  maxlength="50" placeholder="Position" type="text">';
						html +='			</div>';
						html +='		</div><br>';
						html +='		<div class="row">';
						html +='			<div class="col-md-1">';
						html +='				<input id="start_work_'+Ids3+'"  name="start_work[]" value="" class="form-control datepicker"  readonly="true" placeholder="Start Work" style="background-color:white" type="text">';
						html +='			</div>';
						html +='			<div class="col-md-5">&nbsp;&nbsp;</div>';
						html +='			<div class="col-md-1">';
						html +='				<input id="end_work_'+Ids3+'" name="end_work[]" value="" class="form-control datepicker" readonly="true" placeholder="End Work" style="background-color:white" type="text">';
						html +='			</div>';
						html +='		</div><br>';
						html +='		<div class="row">';
						html +='			<div class="col-md-11">';
						html +='				<textarea id="desc_work_'+Ids3+'" class="form-control" name="desc_work[]" placeholder="Describe your work"></textarea>';
						html +='			</div>';
						html+=	'<div class="col-md-1">';
						html+=	'	<button type="button" onClick="removeRowdata('+data_history[i].ID+',\'row_work_'+Ids3+'\',\'history\');return false;" class="btn btn-danger">X</button>';
						html+=	'</div>';
						html +='		</div>';
					html +='	</div>';			
					html +=	'</div>';
					$("#data_work").after(html);
					$('.datepicker').datepicker({
					    format: 'dd/mm/yyyy',
					    changeMonth: true,
  						changeYear: true,
					    autoUpdateInput: false
					});
					$('#desc_work_'+Ids3).val(data_history[i].DESCRIPTION)
					$('#start_work_'+Ids3).val(convert_date(data_history[i].FROM))
					$('#end_work_'+Ids3).val(convert_date(data_history[i].END))
					$('#position_work_'+Ids3).val(data_history[i].POSITION)
					$('#company_name_'+Ids3).val(data_history[i].COMPANY_NAME)
					Ids3++;
		}
	}

	function showExp( data_exp )
	{
		for( var i = 0; i < data_exp.length; i++ )
		{
				var  html ='<div class="row" id="row_exp_'+Ids2+'"><br/>';
					 	html+=	'<div class="col-md-8">';
						html+=	'<select id="exp_'+Ids2+'" name="exp[]" class="form-control">';
						html+=		'<option value="">--Choose Experience--</option>';
								<?php foreach($experience as $exp){ ?>
						html+=		'<option value="<?php echo $exp->ID_REF_EXP ?>"><?php echo $exp->EXP_TYPE ?></option>';
								<?php } ?>
						html+=	'</select>';
						html+=  '</div>';
						html+=	'<div class="col-md-3">';
						html+=	'	<select id="exp_lvl_'+Ids2+'"  name="exp_lvl[]" class="form-control">';
						html+=	'		<option value="1">Beginner</option>';
						html+=	'		<option value="2">Intermediate</option>';
						html+=	'		<option value="3">Advanced</option>';
						html+=	'	</select>';
						html+=	'</div>';
						html+=	'<div class="col-md-1">';
						html+=	'	<button type="button" onClick="removeRowdata('+data_exp[i].ID+',\'row_exp_'+Ids2+'\',\'exp\');return false;"   class="btn btn-danger">X</button>';
						html+=	'</div>';
						html+='</div>';
			html+='</div>';
					$("#data_exp").after(html);
					$('#exp_'+Ids2).val(data_exp[i].ID_REF_EXPERIENCE)
					$('#exp_lvl_'+Ids2).val(data_exp[i].LEVEL)
					Ids2++;
		}
	}

	$( window ).load(showEdu(data_edu));
	$( window ).load(showExp(data_exp));
	$( window ).load(showHistory(data_history));
	$( window ).load(showCertificate(data_cr));

 	} else {
           setTimeout(function() { defer() }, 2000);
        }

	 })();

	 function removeRowdata(Ids,divId,jenis)
		{
			var judul;
			var judul_text;
			var url_action;
			if(jenis=="exp"){
				judul = "Remove Skill & Experience";
				judul_text = "Are you sure want to remove Skill & Experience ? ";
				url_action = "../remove_ex/"+Ids;
			}
			else if(jenis=="history"){
				judul = "Remove History of Work";
				judul_text = "Are you sure want to remove History of Work ? ";
				url_action = "../remove_history/"+Ids;
			}
			else if(jenis=="edu"){
				judul = "Remove Education";
				judul_text = "Are you sure want to remove Education ? ";
				url_action = "../remove_education/"+Ids;
			}
			else if(jenis=="certificate"){
				judul = "Remove Certificate";
				judul_text = "Are you sure want to remove Certificate ? ";
				url_action = "../remove_certificate/"+Ids;
			}
			swal({
			  title: judul,
			  text: judul_text,
			  type: "warning",
			  showCancelButton: true,
			  closeOnConfirm: false,
			  showLoaderOnConfirm: true,
			},function(){
				$.ajax({
					url: url_action, 
					type: 'POST',
					success: function(data) {
						if(data=="ok" || data=="OK" || data=="Ok" || data=="oK")
						{
							swal({
								title: 'Success',
								type: 'success',
								showCancelButton: false,
								closeOnConfirm: true,
								showLoaderOnConfirm: false,
							  },function(){
								$('#'+divId).slideUp('slow');
								setTimeout(function(){ $('#'+Ids).remove(); }, 1000);
							});
						}
						else
						{
							swal({
								title: 'Error',
								text: data,
								type: 'error',
								showCancelButton: false,
								closeOnConfirm: false,
								showLoaderOnConfirm: false,
							  });
						}
					}
				});
			});
		}	

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