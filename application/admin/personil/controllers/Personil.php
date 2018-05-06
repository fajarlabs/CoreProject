<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Personil extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Personil_model"));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newCv(id)
				{
					window.open("'.base_url().'index.php/personil/add/"+id,"_self");
				}

				function editCv()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/personil/edit/"+row.ID,"_self");
				}

				function destroyCv(type)
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/personil/delete/"+row.ID+"/"+type,"_self");
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
		$query = $this->Personil_model->get_personil_by_name_location($query,$locid);
		$json_array = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$o = new stdClass();
				$o->label = $row->NAMA ." - ".$row->NAMA_SBU;
				//$o->value = $row->ID;
				$o->query = $this->db->last_query();
				$json_array[] = $o;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}

	public function index()
	{
		$this->data['title'] = "Personil Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('personil_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add($id)
	{
		$this->data['id'] = $id;
		if($id=="1"){
			$this->data['jenis'] = "Kantor Pusat";
		}
		else if($id=="2"){
			$this->data['jenis'] = "Cabang";
		}
		$this->data['title'] = "Personil Management";
		$this->data['position'] = $this->Personil_model->get_table_name('REF_POSITION');
		$this->data['region'] = $this->Personil_model->get_table_name('REF_REGION','REGION','asc');
		$this->data['cabang'] = $this->Personil_model->get_table_name('MASTER_CABANG');
		$this->data['sbu'] = $this->Personil_model->get_table_name('MASTER_SBU');
		$this->load->view('admin/header',$this->data);
		$this->load->view('personil_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Personil Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Personil_model->get_item_by_id($id);
		$this->data['position'] = $this->Personil_model->get_table_name('REF_POSITION');
		$this->data['region'] = $this->Personil_model->get_table_name('REF_REGION','REGION','asc');
		$this->data['cabang'] = $this->Personil_model->get_table_name('MASTER_CABANG');
		$this->data['sbu'] = $this->Personil_model->get_table_name('MASTER_SBU');
		$this->load->view('admin/header',$this->data);
		$this->load->view('personil_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function update($id=0) 
	{

        $position 			 = $this->input->post('position');
		$name     			 = $this->input->post('nama');
		$email     			 = $this->input->post('email');
		$gender     		 = $this->input->post('gender');
		$birthdate     		 = $this->input->post('birthdate');
		$birthdate_place     = $this->input->post('placedate');
		$type_location    	 = $this->input->post('type_location');	
		$sbu    			 = (!empty($this->input->post('sbu'))  ? $this->input->post('sbu') : null);	 
		$cabang    			 = (!empty($this->input->post('cabang'))  ? $this->input->post('cabang') : null);

		
		$array_col_val = array(
				'POSISI' => $position,
				'NAMA' => $name,
				'EMAIL' => $email,
				'BIRTHDATE'=>convert_date($birthdate,'Y-m-d'),
				'PLACE_BIRTHDATE'=>$birthdate_place,
				'TYPE_LOCATION' => $type_location,
				'ID_SBU' => $sbu,
				'ID_CABANG' => $cabang,
				'GENDER'=>$gender,
				'IS_DELETE'   => 0,
		);
		$this->Personil_model->update($array_col_val,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("personil/detail/".$type_location);	
	}

	public function save()
	{
       
		$position 			 = $this->input->post('position');
		$name     			 = $this->input->post('nama');
		$email     			 = $this->input->post('email');
		$birthdate     		 = $this->input->post('birthdate');
		$birthdate_place     = $this->input->post('placedate');
		$gender     		 = $this->input->post('gender');
		$type_location    	 = $this->input->post('type_location');	
		$sbu    			 = (!empty($this->input->post('sbu'))  ? $this->input->post('sbu') : null);	 
		$cabang    			 = (!empty($this->input->post('cabang'))  ? $this->input->post('cabang') : null);

			$array_col_val = array(
				'POSISI' => $position,
				'NAMA' => $name,
				'EMAIL' => $email,
				'BIRTHDATE'=>convert_date($birthdate,'Y-m-d'),
				'PLACE_BIRTHDATE'=>$birthdate_place,
				'GENDER'=>$gender,
				'REGION'=>$region,
				'TYPE_LOCATION' => $type_location,
				'ID_SBU' => $sbu,
				'ID_CABANG' => $cabang,
				'IS_DELETE'   => 0,
			);
		$this->Personil_model->save($array_col_val);
		redirect("personil/detail/".$type_location);	
	}


	public function page_list_rest()
	{
		$query = $this->Personil_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->link = '<a class="btn btn-xs btn-success" href="'.base_url().'index.php/personil/detail/'.$result[$i]->TYPE_LOCATION.'"><i class="fa fa-eye"></i> Detail</a>';

				$branch ="";
				if($result[$i]->TYPE_LOCATION=="1"){
					$branch = "Pusat";
				}
				else if($result[$i]->TYPE_LOCATION=="2"){
					$branch = "Cabang";
				}

				$result[$i]->TYPE_LOCATION = $branch;
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}	

	public function page_list_rest_detail($id)
	{
		$area="";
		$query = $this->Personil_model->get_all_items_by_area($id);
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				if($id=="1"){
					$result[$i]->TYPE_LOCATION  =  $this->get_area(1,$result[$i]->ID_SBU);	
				}
				else if($id=="2") {
					$result[$i]->TYPE_LOCATION  = $this->get_area(2,$result[$i]->ID_CABANG);	
				}
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function get_area($id_loc,$id){
			$data ="";
			if($id_loc=="1"){ //Pusat
				$arr = $this->Personil_model->get_area($id_loc,$id);
				foreach ($arr as $key => $value) {
				 	$data =  $value->NAMA_SBU;
				}
			}
			else if($id_loc=="2"){ // Cabang
				$arr = $this->Personil_model->get_area($id_loc,$id);
				foreach ($arr as $key => $value) {
				 	$data = $value->BRANCH_NAME;
				}
			}
			return $data;
	}


	public function delete($id,$type)
	{
		$this->Personil_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("personil/detail/".$type);	
	}

	public function detail($id)
	{
		$this->data['id']    = $id;
		if($id=="1"){
			$this->data['jenis'] = "Kantor Pusat";
		}
		else if($id=="2"){
			$this->data['jenis'] = "Cabang";
		}
		$this->load->view('admin/header',$this->data);
		$this->load->view('personil_detail_view',$this->data);
		$this->load->view('admin/footer',$this->data);

	}
	public function view($id)
	{
		$this->data['id']    = $id;
		$this->data['item']  = $this->Personil_model->get_item_by_id($id);
		
		
		$this->data['posisi']  = $this->Personil_model->get_item_table_by_id('REF_POSITION','ID_REF_POSITION',$this->data['item']->result()[0]->POSISI);


		$this->data['region']  = $this->Personil_model->get_item_table_by_id('REF_REGION','ID_REF_REGION',$this->data['item']->result()[0]->REGION);
		
		//history work
		$this->data['cv_work'] = $this->Personil_model->get_table_name('MASTER_CV_HISTORY_OF_WORK','ID','ASC','ID_CV',$id);

		//ceritificate
		$this->data['cv_certificate'] = $this->Personil_model->get_table_name('MASTER_CV_CERTIFICATE','ID','ASC','ID_CV',$id);

		//education
		$this->data['cv_edu'] = $this->Personil_model->get_table_name('MASTER_CV_EDUCATION','ID','ASC','ID_CV',$id);

		// list_history_work
		$this->data['list_history_work'] = $this->Personil_model->get_table_name('FORM_ENTRY_FIELD','ID','ASC','SURVEYOR_IN_CHARGE',$this->data['item']->result()[0]->NAMA,'like');

		

		//education
		$arrx = array();
		foreach ($this->data['cv_edu'] as $key => $value) {
			$query  = $this->Personil_model->get_table_name('REF_EDUCATION','EDUCATION_TYPE','asc','ID_REF_EDUCATION',$value->ID_REF_EDUCATION);
			foreach ($query as $row) {
				
			}
			 $row->EDUCATION_TYPE = $row->EDUCATION_TYPE."$$$".$value->SCHOOL;
			 $arrx[] = $row;
		}
		$this->data['edu_data']  = $arrx;

		//experience
		$this->data['cv_exp'] = $this->Personil_model->get_table_name('MASTER_CV_EXPERIENCE','ID','desc','ID_CV',$id);
		$arr = array();
		foreach ($this->data['cv_exp'] as $key => $value) {
			$query  = $this->Personil_model->get_table_name('REF_EXP','EXP_TYPE','asc','ID_REF_EXP',$value->ID_REF_EXPERIENCE);
			foreach ($query as $row) {
				
			}
			 $row->EXP_TYPE = $row->EXP_TYPE."$".$value->LEVEL;
			 $arr[] = $row;
		}

		$this->data['exp_data']  = $arr;

		$this->data['cv_edu'] = $this->Personil_model->get_table_name('MASTER_CV_EDUCATION','ID_REF_EDUCATION','desc','ID_CV',$id);
		$this->data['cv_work'] = $this->Personil_model->get_table_name('MASTER_CV_HISTORY_OF_WORK','ID','desc','ID_CV',$id);
		$this->load->view('cv_detail',$this->data);
	}


}