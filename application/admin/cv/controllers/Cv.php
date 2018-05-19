<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cv extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Cv_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newCv()
				{
					window.open("'.base_url().'index.php/cv/add","_self");
				}

				function editCv()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/cv/edit/"+row.ID,"_self");
				}

				function destroyCv()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/cv/delete/"+row.ID,"_self");
					}
				}

			</script>';	
		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);

		$this->data['osess'] = $this->session->userdata("osess");
		$this->data['error_message'] = $this->session->flashdata("error_message");
	}

	public function get_surveyor() 
	{
		$query = trim($this->input->get('q', TRUE));
		$locid = (int)trim($this->input->get('l', TRUE));
		$query = $this->Cv_model->get_personil_by_name_location($query,$locid);
		$json_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->label = $row->NAMA ." - ".$row->NAMA_SBU;
				//$o->value = $row->ID;
				$o->id = $row->ID;
				$json_array[] = $o;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}

	public function index()
	{
		$this->data['title'] = "Cv Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('cv_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	// public function add()
	// {
	// 	$this->data['title'] = "Cv Management";
	// 	$this->data['position'] = $this->Cv_model->get_table_name('REF_POSITION');
	// 	$this->data['region'] = $this->Cv_model->get_table_name('REF_REGION','REGION','asc');
	// 	$this->data['education'] = $this->Cv_model->get_table_name('REF_EDUCATION','ID_REF_EDUCATION','asc');
	// 	$this->data['experience'] = $this->Cv_model->get_table_name('REF_EXP','EXP_TYPE','asc');
	// 	$this->data['cabang'] = $this->Cv_model->get_table_name('MASTER_CABANG');
	// 	$this->data['sbu'] = $this->Cv_model->get_table_name('MASTER_SBU');
	// 	$this->load->view('admin/header',$this->data);
	// 	$this->load->view('cv_add_view',$this->data);
	// 	$this->load->view('admin/footer',$this->data);
	// }

	public function edit($id=0)
	{
		$this->data['title'] = "Cv Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Cv_model->get_item_by_id($id);
		$this->data['position'] = $this->Cv_model->get_table_name('REF_POSITION');
		$this->data['region'] = $this->Cv_model->get_table_name('REF_REGION','REGION','asc');
		$this->data['education'] = $this->Cv_model->get_table_name('REF_EDUCATION','ID_REF_EDUCATION','asc');
		$this->data['cv_cr'] = $this->Cv_model->get_table_name('MASTER_CV_CERTIFICATE','ID','desc','ID_CV',$id);
		$this->data['cv_exp'] = $this->Cv_model->get_table_name('MASTER_CV_EXPERIENCE','ID','desc','ID_CV',$id);
		$this->data['cv_edu'] = $this->Cv_model->get_table_name('MASTER_CV_EDUCATION','ID_REF_EDUCATION','DESC','ID_CV',$id);
		$this->data['cv_work'] = $this->Cv_model->get_table_name('MASTER_CV_HISTORY_OF_WORK','ID','DESC','ID_CV',$id);
		$this->data['experience'] = $this->Cv_model->get_table_name('REF_EXP','EXP_TYPE','desc');
		$this->data['cabang'] = $this->Cv_model->get_table_name('MASTER_CABANG');
		$this->data['sbu'] = $this->Cv_model->get_table_name('MASTER_SBU');
		$this->load->view('admin/header',$this->data);
		$this->load->view('cv_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function update($id=0) 
	{
		$file_upload =  $_FILES['file_upload']['name'];
        $photo 		 =  $_FILES['photo']['name'];

		//CV Config File
        $config['upload_path']         	 	 = './uploads/cv_files';
        $config['allowed_types']        	 = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']            	 	 = 5000; // 5Mb
        $config['file_name']     = date("ymdhis")."_cv_".uniqid()."_".$file_upload;

        //Photo Config File
        $config_photo['upload_path']          = './uploads/cv_files_photo';
        $config_photo['allowed_types']        = 'jpg|jpeg|png';
        $config_photo['max_size']             = 5000; // 5Mb
        $config_photo['file_name']            = date("ymdhis")."_photo_".uniqid()."_".$photo;

        $msg_upload  = array();
        $msg_upload2 = array();

        //Cv Upload
        if($file_upload!=""){
        	$this->load->library('upload', $config,'cv_upload');
        	$this->cv_upload->initialize($config);
	        if ( ! $this->cv_upload->do_upload('file_upload')) {
	                $msg_upload = array('error' => $this->cv_upload->display_errors());
	        } else {
	                $msg_upload = array('upload_data' => $this->cv_upload->data());
	                //Remove Old CV
					$this->data['photo_cv'] = $this->Cv_model->get_table_name('MASTER_CV','ID','ASC','ID',$id);
					$cv_old = $this->data['photo_cv'][0]->UPLOAD_FILE;
					if(!empty($photo)){
						$path  = "./uploads/cv_files/".$cv_old;
						unlink($path);
					}
	        }
        }
        
        //Photo Upload
        if($photo!=""){
	        $this->load->library('upload', $config_photo, 'photo_upload');
	        $this->photo_upload->initialize($config_photo);
	        if ( ! $this->photo_upload->do_upload('photo')) {
	                $msg_upload2 = array('error' => $this->photo_upload->display_errors());
	        } else {
	                $msg_upload2 = array('upload_data' => $this->photo_upload->data());

	                //Remove Old Photo
					$this->data['photo_peg'] = $this->Cv_model->get_table_name('MASTER_CV','ID','ASC','ID',$id);
					$photo_old = $this->data['photo_peg'][0]->PHOTO_FILE;
					if(!empty($photo)){
						$path  = "./uploads/cv_files_photo/".$photo_old;
						unlink($path);
					}

	        }
   		}

        $position 			 = $this->input->post('position');
		$contact_1     		 = $this->input->post('contact_1');
		$contact_2     		 = @$this->input->post('contact_2');
		$address     		 = $this->input->post('address');
		$gender     		 = $this->input->post('gender');
		$region     		 = $this->input->post('region');

		
		$array_col_val = array(
				'POSISI' => $position,
				'CONTACT_1'=>$contact_1,
				'CONTACT_2'=>$contact_2,
				'ADDRESS'=>$address,
				'REGION'=>$region,
				'IS_DELETE'   => 0,
		);


		$arr = $array_col_val;
		$new_array = array();
		if($file_upload!=""){;
			$new_array["UPLOAD_FILE"]= $config['file_name'];
			$arr = array_merge($new_array,$arr);
		}

		if($photo!=""){
			$new_array["PHOTO_FILE"]= $config_photo['file_name'];
			$arr = array_merge($new_array,$arr);
		}

		$this->Cv_model->update($arr,$id);


			//Insert Region
        	$array_col_val_reg = array(							
        		'ID_REF_REGION' => $region,
				'ID_CV' => $id,
			);
			$this->Cv_model->save_table('MASTER_CV_REGION',$array_col_val_reg);


			//Remove Education
			$edu_name = @$_POST['edu'];
		    $hitung_edu = count($edu_name);
		    if($hitung_edu>0){
				$this->Cv_model->delete_table_param_by_id('MASTER_CV_EDUCATION','ID_CV',$id);
				//Insert Education
				$edu 	  = $_POST['edu']; 
			  	$edu_text = $_POST['edu_text'];
			  	$i=0; 
			    foreach ($edu as $ed){ 
			        	$array_col_val_edu = array(
							'ID_REF_EDUCATION' => $ed,
							'SCHOOL' => $edu_text[$i],
							'ID_CV' => $id,
						);
			        $this->Cv_model->save_table('MASTER_CV_EDUCATION',$array_col_val_edu);
			        $i++;
			    }
		    }

		    $exp_name = @$_POST['exp'];
		    $hitung_exp = count($exp_name);
		    if($hitung_exp>0){
			    //Remove Experience
				$this->Cv_model->delete_table_param_by_id('MASTER_CV_EXPERIENCE','ID_CV',$id);
				//Insert Experience
				$exp = array_filter($_POST['exp']);
				if(!empty($exp)){
				  	$exp_lvl = $_POST['exp_lvl'];
				  	$z=0; 
					    foreach ($exp as $ex){ 
					    	echo $ex."<br/>";
					    	echo $exp_lvl[$z]."<br/>";
				        	$array_col_val_exp = array(
								'ID_REF_EXPERIENCE' => $ex,
								'LEVEL' => $exp_lvl[$z],
								'ID_CV' => $id,
							);
					        $this->Cv_model->save_table('MASTER_CV_EXPERIENCE',$array_col_val_exp);
					        $z++;
					    }
				}
			}

			 //Insert Certificate
		    $cmp_name = @$_POST['company_name'];
		    $hitung_cmp = count($cmp_name);
		    if($hitung_cmp>0){
				//Remove History Of Work
				$this->Cv_model->delete_table_param_by_id('MASTER_CV_HISTORY_OF_WORK','ID_CV',$id);
				//Insert History Of Work
				$cmp_wrk = array_filter($_POST['company_name']);
				if(!empty($cmp_wrk)){
				  	$pst_wrk 	 = $_POST['position_work'];
				  	$start_wrk	 = $_POST['start_work'];
				  	$end_wrk	 = $_POST['end_work'];
				  	$desc_wrk	 = $_POST['desc_work'];
					$y=0; 
				    foreach ($cmp_wrk as $wr){ 
			        	$array_col_val_wrk = array(
							'COMPANY_NAME' => $wr,
							'POSITION' => $pst_wrk[$y],
							'FROM' => ($start_wrk[$y]!="" ? convert_date($start_wrk[$y],'Y-m-d') : NULL),
							'END' => ($end_wrk[$y]!="" ? convert_date($end_wrk[$y],'Y-m-d') : NULL),
							'DESCRIPTION' => $desc_wrk[$y],
							'ID_CV' => $id,
						);

				        $this->Cv_model->save_table('MASTER_CV_HISTORY_OF_WORK',$array_col_val_wrk);
				        $y++;
				    }
			    }
		    }

		    //Insert Certificate
		    $crt_name = @$_POST['certificate_name'];
		    $hitung_crt = count($crt_name);
			if($hitung_crt>0){
				$cr_name = array_filter($_POST['certificate_name']);
				if(!empty($cr_name)){
				  	$cr_exp   = $_POST['expired_date_certificate'];
				  	$cr_from  = $_POST['certificate_from'];
				  	$h=0; 
				  	$files = $_FILES;
				  	$dataInfo = array();
					    foreach ($cr_name as $cr){ 

				     
				        $_FILES['certificate_file']['name']		= $files['certificate_file']['name'][$h];
				        $_FILES['certificate_file']['type']		= $files['certificate_file']['type'][$h];
				        $_FILES['certificate_file']['tmp_name']	= $files['certificate_file']['tmp_name'][$h];
				        $_FILES['certificate_file']['error']	= $files['certificate_file']['error'][$h];
				        $_FILES['certificate_file']['size']		= $files['certificate_file']['size'][$h];    


				      	//Certificate Config File
						$config_certificate['upload_path']          = './uploads/cv_files_certificate';
						$config_certificate['allowed_types']        = 'jpg|jpeg|png|pdf';
						$config_certificate['max_size']             = 5000; // 5Mb
						$config_certificate['file_name']            = date("ymdhis")."_certificate_".uniqid()."_".$_FILES['certificate_file']['name'];
						
				    	//Certificate Upload
							$msg_cr_upload="";
					        if($_FILES['certificate_file']['name']!=""){
						        $this->load->library('upload', $config_certificate, 'certificate_upload');
						        $this->certificate_upload->initialize($config_certificate);
						        if (!$this->certificate_upload->do_upload('certificate_file')) {
						           $msg_cr_upload = NULL;
						        } else {
						            $msg_cr_upload = array('upload_data' => $this->certificate_upload->data());
						        }
					   		}

				        	$array_col_val_cr = array(
								'CERTIFICATE_NAME' => $cr,
								'CERITIFICATE_EXPIRED' =>  ($cr_exp[$h]!="" ? convert_date($cr_exp[$h],'Y-m-d') : NULL),
								'CERITIFICATE_FROM' => $cr_from[$h],
								'ID_CV' => $id,
								'CERITIFICATE_FILE' =>  (is_array($msg_cr_upload) ? $msg_cr_upload['upload_data']['file_name'] : ''),
							);
					        $this->Cv_model->save_table('MASTER_CV_CERTIFICATE',$array_col_val_cr);

					        $h++;
					    }
				} 
			}
			

			//Update Certificate
					$crt_id = array_filter($_POST['certificate_id']);
			  		   $cr_exp   = $_POST['expired_date_certificate_id'];
					  	$cr_from  = $_POST['certificate_from_id'];
					  	$cr_name  = $_POST['certificate_name_id'];
					  	$g=0; 
					  	$updt_files = $_FILES;
				    foreach ($crt_id as $my_certificate_id){ 

				    	$_FILES['certificate_file_id']['name']		= $updt_files['certificate_file_id']['name'][$g];
				        $_FILES['certificate_file_id']['type']		= $updt_files['certificate_file_id']['type'][$g];
				        $_FILES['certificate_file_id']['tmp_name']	= $updt_files['certificate_file_id']['tmp_name'][$g];
				        $_FILES['certificate_file_id']['error']		= $updt_files['certificate_file_id']['error'][$g];
				        $_FILES['certificate_file_id']['size']		= $updt_files['certificate_file_id']['size'][$g];    

				        //Certificate Config File
						$config_certificate_updt['upload_path']          = './uploads/cv_files_certificate';
						$config_certificate_updt['allowed_types']        = 'jpg|jpeg|png|pdf';
						$config_certificate_updt['max_size']             = 5000; // 5Mb
						$config_certificate_updt['file_name']            = date("ymdhis")."_certificate_".uniqid()."_".$_FILES['certificate_file_id']['name'];

						//Certificate Upload
						$msg_cr_upload_updt="";
				        if($_FILES['certificate_file_id']['name']!=""){
					        $this->load->library('upload', $config_certificate_updt, 'certificate_upload_updt');
					        $this->certificate_upload_updt->initialize($config_certificate_updt);
					        if (!$this->certificate_upload_updt->do_upload('certificate_file')) {
					           $msg_cr_upload_updt = NULL;
					        } else {
					            $msg_cr_upload_updt = array('upload_data' => $this->certificate_upload_updt->data());
					        }

					        //remove old ceritificate
							$this->data['cv_certificate'] = $this->Cv_model->get_table_name('MASTER_CV_CERTIFICATE','ID','ASC','ID',$my_certificate_id);
							$cr_old = $this->data['cv_certificate'][0]->CERITIFICATE_FILE;
							if(!empty($cr_old)){
								$path  = "./uploads/cv_files_certificate/".$cr_old;
								unlink($path);
							}

					        $array_col_val_cr_updt = array(
							'CERTIFICATE_NAME' => $cr_name[$g],
							'CERITIFICATE_EXPIRED' =>  ($cr_exp[$g]!="" ? convert_date($cr_exp[$g],'Y-m-d') : NULL),
							'CERITIFICATE_FROM' => $cr_from[$g],
							'CERITIFICATE_FILE' =>  (is_array($msg_cr_upload_updt) ? $msg_cr_upload_updt['upload_data']['file_name'] : ''),
							);
				   		}

				   		else {
				   			$array_col_val_cr_updt = array(
							'CERTIFICATE_NAME' => $cr_name[$g],
							'CERITIFICATE_EXPIRED' =>  ($cr_exp[$g]!="" ? convert_date($cr_exp[$g],'Y-m-d') : NULL),
							'CERITIFICATE_FROM' => $cr_from[$g],
							);
				   		}

				   		 $this->Cv_model->update_table($array_col_val_cr_updt,'MASTER_CV_CERTIFICATE',$my_certificate_id);

				   		$g++;
				    }
			
		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}

		
		redirect("cv");
	}

	public function save()
	{
        $file_upload =  $_FILES['file_upload']['name'];
        $photo 		 =  $_FILES['photo']['name'];

		//CV Config File
        $config['upload_path']         	 	 = './uploads/cv_files';
        $config['allowed_types']        	 = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']            	 	 = 5000; // 5Mb
        $config['file_name']     = date("ymdhis")."_cv_".uniqid()."_".$file_upload;

        //Photo Config File
        $config_photo['upload_path']          = './uploads/cv_files_photo';
        $config_photo['allowed_types']        = 'jpg|jpeg|png';
        $config_photo['max_size']             = 5000; // 5Mb
        $config_photo['file_name']            = date("ymdhis")."_photo_".uniqid()."_".$photo;


        //Cv Upload
        if($file_upload!=""){
        	$this->load->library('upload', $config,'cv_upload');
        	$this->cv_upload->initialize($config);
	        if ( ! $this->cv_upload->do_upload('file_upload')) {
	                $msg_upload = array('error' => $this->cv_upload->display_errors());
	        } else {
	                $msg_upload = array('upload_data' => $this->cv_upload->data());
	        }
        }
        
        //Photo Upload
        if($photo!=""){
	        $this->load->library('upload', $config_photo, 'photo_upload');
	        $this->photo_upload->initialize($config_photo);
	        if ( ! $this->photo_upload->do_upload('photo')) {
	                $msg_upload2 = array('error' => $this->photo_upload->display_errors());
	        } else {
	                $msg_upload2 = array('upload_data' => $this->photo_upload->data());
	        }
   		}

		$position 			 = $this->input->post('position');
		$name     			 = $this->input->post('nama');
		$email     			 = $this->input->post('email');
		$birthdate     		 = $this->input->post('birthdate');
		$birthdate_place     = $this->input->post('placedate');
		$contact_1     		 = $this->input->post('contact_1');
		$contact_2     		 = @$this->input->post('contact_2');
		$address     		 = $this->input->post('address');
		$gender     		 = $this->input->post('gender');
		$region     		 = $this->input->post('region');
		$type_location    	 = $this->input->post('type_location');	
		$sbu    			 = (!empty($this->input->post('sbu'))  ? $this->input->post('sbu') : null);	 
		$cabang    			 = (!empty($this->input->post('cabang'))  ? $this->input->post('cabang') : null);


		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload['error']));
		}
		else if(isset($msg_upload2['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload2['error']));
		} 
		else {
			$array_col_val = array(
				'POSISI' => $position,
				'NAMA' => $name,
				'EMAIL' => $email,
				'BIRTHDATE'=>convert_date($birthdate,'Y-m-d'),
				'PLACE_BIRTHDATE'=>$birthdate_place,
				'CONTACT_1'=>$contact_1,
				'CONTACT_2'=>$contact_2,
				'ADDRESS'=>$address,
				'GENDER'=>$gender,
				'REGION'=>$region,
				'TYPE_LOCATION' => $type_location,
				'ID_SBU' => $sbu,
				'ID_CABANG' => $cabang,
				'UPLOAD_FILE' => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : ''),
				'PHOTO_FILE' => (is_array($msg_upload2) ? $msg_upload2['upload_data']['file_name'] : ''),
				'IS_DELETE'   => 0,
			);

			$this->Cv_model->save($array_col_val);

			//Get Last ID CV
			$id_cv  = $this->Cv_model->get_last_record('MASTER_CV','ID','DESC');
        	$last_id_cv = @$id_cv[0]->ID;


        	//Insert Certificate
			$cr_name = array_filter($_POST['certificate_name']);
			if(!empty($cr_name)){
			  	$cr_exp   = $_POST['expired_date_certificate'];
			  	$cr_from  = $_POST['certificate_from'];
			  	$h=0; 
			  	$files = $_FILES;
			  	$dataInfo = array();
				    foreach ($cr_name as $cr){ 

			     
			        $_FILES['certificate_file']['name']		= $files['certificate_file']['name'][$h];
			        $_FILES['certificate_file']['type']		= $files['certificate_file']['type'][$h];
			        $_FILES['certificate_file']['tmp_name']	= $files['certificate_file']['tmp_name'][$h];
			        $_FILES['certificate_file']['error']	= $files['certificate_file']['error'][$h];
			        $_FILES['certificate_file']['size']		= $files['certificate_file']['size'][$h];    


			      	//Certificate Config File
					$config_certificate['upload_path']          = './uploads/cv_files_certificate';
					$config_certificate['allowed_types']        = 'jpg|jpeg|png|pdf';
					$config_certificate['max_size']             = 5000; // 5Mb
					$config_certificate['file_name']            = date("ymdhis")."_certificate_".uniqid()."_".$_FILES['certificate_file']['name'];
					
			    	//Certificate Upload
						$msg_cr_upload="";
				        if($_FILES['certificate_file']['name']!=""){
					        $this->load->library('upload', $config_certificate, 'certificate_upload');
					        $this->certificate_upload->initialize($config_certificate);
					        if (!$this->certificate_upload->do_upload('certificate_file')) {
					           $msg_cr_upload = NULL;
					        } else {
					            $msg_cr_upload = array('upload_data' => $this->certificate_upload->data());
					        }
				   		}

			        	$array_col_val_cr = array(
							'CERTIFICATE_NAME' => $cr,
							'CERITIFICATE_EXPIRED' =>  ($cr_exp[$h]!="" ? convert_date($cr_exp[$h],'Y-m-d') : NULL),
							'CERITIFICATE_FROM' => $cr_from[$h],
							'ID_CV' => $last_id_cv,
							'CERITIFICATE_FILE' =>  (is_array($msg_cr_upload) ? $msg_cr_upload['upload_data']['file_name'] : ''),
						);
				        $this->Cv_model->save_table('MASTER_CV_CERTIFICATE',$array_col_val_cr);

				        $h++;
				    }
			}


        	//Insert Region
        	$array_col_val_reg = array(							
        		'ID_REF_REGION' => $region,
				'ID_CV' => $id,
			);
			$this->Cv_model->save_table('MASTER_CV_REGION',$array_col_val_reg);



			//Insert Education
			$edu 	  = $_POST['edu']; 
		  	$edu_text = $_POST['edu_text'];
		  	$i=0; 
		    foreach ($edu as $id){ 
		        	$array_col_val_edu = array(
						'ID_REF_EDUCATION' => $id,
						'SCHOOL' => $edu_text[$i],
						'ID_CV' => $last_id_cv,
					);
		        $this->Cv_model->save_table('MASTER_CV_EDUCATION',$array_col_val_edu);
		        $i++;
		    }

			//Insert Experience
			$exp = array_filter($_POST['exp']);
			if(!empty($exp)){
			  	$exp_lvl = $_POST['exp_lvl'];
			  	$z=0; 
				    foreach ($exp as $ex){ 
				    	echo $ex."<br/>";
				    	echo $exp_lvl[$z]."<br/>";
			        	$array_col_val_exp = array(
							'ID_REF_EXPERIENCE' => $ex,
							'LEVEL' => $exp_lvl[$z],
							'ID_CV' => $last_id_cv,
						);
				        $this->Cv_model->save_table('MASTER_CV_EXPERIENCE',$array_col_val_exp);
				        $z++;
				    }
			}

		

			//Insert History Of Work
			$cmp_wrk = array_filter($_POST['company_name']);
			if(!empty($cmp_wrk)){
			  	$pst_wrk 	 = $_POST['position_work'];
			  	$start_wrk	 = $_POST['start_work'];
			  	$end_wrk	 = $_POST['end_work'];
			  	$desc_wrk	 = $_POST['desc_work'];
				$y=0; 
			    foreach ($cmp_wrk as $wr){ 
		        	$array_col_val_wrk = array(
						'COMPANY_NAME' => $wr,
						'POSITION' => $pst_wrk[$y],
						'FROM' => ($start_wrk[$y]!="" ? convert_date($start_wrk[$y],'Y-m-d') : NULL),
						'END' => ($end_wrk[$y]!="" ? convert_date($end_wrk[$y],'Y-m-d') : NULL),
						'DESCRIPTION' => $desc_wrk[$y],
						'ID_CV' => $last_id_cv,
					);

			        $this->Cv_model->save_table('MASTER_CV_HISTORY_OF_WORK',$array_col_val_wrk);
			        $y++;
			    }
		    }

			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("cv");	
	}

	

	public function page_list_rest()
	{
		$query = $this->Cv_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->UPLOAD_FILE = '<a target="blank" class="btn btn-xs btn-success" href="'.base_url().'index.php/cv/view/'.$result[$i]->ID.'"><i class="fa fa-eye"></i> View CV</a>';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function remove_history($id)
	{
		$this->Cv_model->delete_table_param_by_id('MASTER_CV_HISTORY_OF_WORK','ID',$id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		echo "OK";
	}

	public function remove_certificate($id)
	{
		//ceritificate
		$this->data['cv_certificate'] = $this->Cv_model->get_table_name('MASTER_CV_CERTIFICATE','ID','ASC','ID',$id);

		$photo = $this->data['cv_certificate'][0]->CERITIFICATE_FILE;
		if(!empty($photo)){
			$path  = "./uploads/cv_files_certificate/".$photo;
			unlink($path);
		}

		$this->Cv_model->delete_table_param_by_id('MASTER_CV_CERTIFICATE','ID',$id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		echo "OK";
	}

	public function remove_ex($id)
	{
		$this->Cv_model->delete_table_param_by_id('MASTER_CV_EXPERIENCE','ID',$id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		echo "OK";
	}

	public function remove_education($id)
	{
		$this->Cv_model->delete_table_param_by_id('MASTER_CV_EDUCATION','ID',$id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		echo "OK";
	}

	// public function delete($id)
	// {
	// 	$this->Cv_model->delete_by_id($id);
	// 	$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
	// 	redirect('Cv');
	// }

	public function view($id)
	{
		$this->data['id']    = $id;
		$this->data['item']  = $this->Cv_model->get_item_by_id($id);
		
		
		$this->data['posisi']  = $this->Cv_model->get_item_table_by_id('REF_POSITION','ID_REF_POSITION',$this->data['item']->result()[0]->POSISI);


		$this->data['region']  = $this->Cv_model->get_item_table_by_id('REF_REGION','ID_REF_REGION',$this->data['item']->result()[0]->REGION);
		
		//history work
		$this->data['cv_work'] = $this->Cv_model->get_table_name('MASTER_CV_HISTORY_OF_WORK','ID','ASC','ID_CV',$id);

		//ceritificate
		$this->data['cv_certificate'] = $this->Cv_model->get_table_name('MASTER_CV_CERTIFICATE','ID','ASC','ID_CV',$id);

		//education
		$this->data['cv_edu'] = $this->Cv_model->get_table_name('MASTER_CV_EDUCATION','ID','ASC','ID_CV',$id);

		// list_history_work
		$this->data['list_history_work'] = $this->Cv_model->get_table_name('FORM_ENTRY_FIELD','ID','ASC','SURVEYOR_IN_CHARGE',$this->data['item']->result()[0]->NAMA,'like');

		

		//education
		$arrx = array();
		foreach ($this->data['cv_edu'] as $key => $value) {
			$query  = $this->Cv_model->get_table_name('REF_EDUCATION','EDUCATION_TYPE','asc','ID_REF_EDUCATION',$value->ID_REF_EDUCATION);
			foreach ($query as $row) {
				
			}
			 $row->EDUCATION_TYPE = $row->EDUCATION_TYPE."$$$".$value->SCHOOL;
			 $arrx[] = $row;
		}
		$this->data['edu_data']  = $arrx;

		//experience
		$this->data['cv_exp'] = $this->Cv_model->get_table_name('MASTER_CV_EXPERIENCE','ID','desc','ID_CV',$id);
		$arr = array();
		foreach ($this->data['cv_exp'] as $key => $value) {
			$query  = $this->Cv_model->get_table_name('REF_EXP','EXP_TYPE','asc','ID_REF_EXP',$value->ID_REF_EXPERIENCE);
			foreach ($query as $row) {
				
			}
			 $row->EXP_TYPE = $row->EXP_TYPE."$".$value->LEVEL;
			 $arr[] = $row;
		}

		$this->data['exp_data']  = $arr;

		$this->data['cv_edu'] = $this->Cv_model->get_table_name('MASTER_CV_EDUCATION','ID_REF_EDUCATION','desc','ID_CV',$id);
		$this->data['cv_work'] = $this->Cv_model->get_table_name('MASTER_CV_HISTORY_OF_WORK','ID','desc','ID_CV',$id);
		$this->load->view('cv_detail',$this->data);
	}

	public function view_print($id)
	{
		$this->data['id']    = $id;
		$this->data['item']  = $this->Cv_model->get_item_by_id($id);
		
		
		$this->data['posisi']  = $this->Cv_model->get_item_table_by_id('REF_POSITION','ID_REF_POSITION',$this->data['item']->result()[0]->POSISI);


		$this->data['region']  = $this->Cv_model->get_item_table_by_id('REF_REGION','ID_REF_REGION',$this->data['item']->result()[0]->REGION);
		
		//history work
		$this->data['cv_work'] = $this->Cv_model->get_table_name('MASTER_CV_HISTORY_OF_WORK','ID','ASC','ID_CV',$id);

		//ceritificate
		$this->data['cv_certificate'] = $this->Cv_model->get_table_name('MASTER_CV_CERTIFICATE','ID','ASC','ID_CV',$id);

		//education
		$this->data['cv_edu'] = $this->Cv_model->get_table_name('MASTER_CV_EDUCATION','ID','ASC','ID_CV',$id);

		// list_history_work
		$this->data['list_history_work'] = $this->Cv_model->get_table_name('FORM_ENTRY_FIELD','ID','ASC','SURVEYOR_IN_CHARGE',$this->data['item']->result()[0]->NAMA,'like');

		

		//education
		$arrx = array();
		foreach ($this->data['cv_edu'] as $key => $value) {
			$query  = $this->Cv_model->get_table_name('REF_EDUCATION','EDUCATION_TYPE','asc','ID_REF_EDUCATION',$value->ID_REF_EDUCATION);
			foreach ($query as $row) {
				
			}
			 $row->EDUCATION_TYPE = $row->EDUCATION_TYPE."$$$".$value->SCHOOL;
			 $arrx[] = $row;
		}
		$this->data['edu_data']  = $arrx;

		//experience
		$this->data['cv_exp'] = $this->Cv_model->get_table_name('MASTER_CV_EXPERIENCE','ID','desc','ID_CV',$id);
		$arr = array();
		foreach ($this->data['cv_exp'] as $key => $value) {
			$query  = $this->Cv_model->get_table_name('REF_EXP','EXP_TYPE','asc','ID_REF_EXP',$value->ID_REF_EXPERIENCE);
			foreach ($query as $row) {
				
			}
			 $row->EXP_TYPE = $row->EXP_TYPE."$".$value->LEVEL;
			 $arr[] = $row;
		}

		$this->data['exp_data']  = $arr;

		$this->data['cv_edu'] = $this->Cv_model->get_table_name('MASTER_CV_EDUCATION','ID_REF_EDUCATION','desc','ID_CV',$id);
		$this->data['cv_work'] = $this->Cv_model->get_table_name('MASTER_CV_HISTORY_OF_WORK','ID','desc','ID_CV',$id);
		$this->load->view('cv_print',$this->data);
	}

}