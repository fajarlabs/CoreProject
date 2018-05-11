<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tool extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Tool_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newTool()
				{
					window.open("'.base_url().'index.php/tool/add","_self");
				}

				function editTool()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/tool/edit/"+row.ID,"_self");
				}

				function destroyTool()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/tool/delete/"+row.ID,"_self");
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

	public function index()
	{
		$this->data['title'] = "Tool Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('tool_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		
		$this->data['title'] = "Tool Management";
		$this->data['cabang'] = $this->Tool_model->get_table_name('MASTER_CABANG');
		$this->data['sbu'] = $this->Tool_model->get_table_name('MASTER_SBU');
		$this->load->view('admin/header',$this->data);
		$this->load->view('tool_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Tool Management";
		$this->data['id']    = $id;
		$this->data['cabang'] = $this->Tool_model->get_table_name('MASTER_CABANG');
		$this->data['sbu'] = $this->Tool_model->get_table_name('MASTER_SBU');
		$this->data['item']  = $this->Tool_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('tool_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
        $config['upload_path']   = './uploads/tool_files';
        $config['allowed_types'] = 'gif|jpg|jpeg|png|doc|docx';
        $config['max_size']      = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$type     = $this->input->post('jenis');
		$name     = $this->input->post('nama');
		$total    = $this->input->post('jumlah');	
		$date_calibration   = $this->input->post('date_calibration');	
		$type_location    	= $this->input->post('type_location');	
		$sbu    			= (!empty($this->input->post('sbu'))  ? $this->input->post('sbu') : null);	 
		$cabang    			= (!empty($this->input->post('cabang'))  ? $this->input->post('cabang') : null);
		$condition    		= $this->input->post('condition');	

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload['error']));
		} else {
			$array_col_val = array(
				'JENIS'  => $type,
				'NAMA'   => $name,
				'JUMLAH' => $total,
				'KONDISI' => $condition,
				'TYPE_LOCATION' => $type_location,
				'ID_SBU' => $sbu,
				'ID_CABANG' => $cabang,
				'TGL_END_KALIBRASI' => convert_date($date_calibration,'Y-m-d'),
				'UPLOAD_SERTIFIKAT' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
				'IS_DELETE'   => 0,
			);

			$this->Tool_model->save($array_col_val);
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("tool");	
	}

	public function update($id=0) 
	{
		$type     = $this->input->post('jenis');
		$name     = $this->input->post('nama');
		$total    = $this->input->post('jumlah');	
		$date_calibration   = $this->input->post('date_calibration');	
		$type_location    	= $this->input->post('type_location');	
		$sbu    			= (!empty($this->input->post('sbu'))  ? $this->input->post('sbu') : null);	 
		$cabang    			= (!empty($this->input->post('cabang'))  ? $this->input->post('cabang') : null);
		$condition    		= $this->input->post('condition');	

        $config['upload_path']   = './uploads/tool_files';
        $config['allowed_types'] = 'gif|jpg|jpeg|png|doc|docx';
        $config['max_size']      = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$array_col_val = array(
			'JENIS'  => $type,
			'NAMA'   => $name,
			'KONDISI' => $condition,
			'TYPE_LOCATION' => $type_location,
			'ID_SBU' => $sbu,
			'ID_CABANG' => $cabang,
			'TGL_END_KALIBRASI' => convert_date($date_calibration,'Y-m-d'),
			'JUMLAH' => $total,
			'UPLOAD_SERTIFIKAT' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
			'IS_DELETE'   => 0,
		);

		if(isset($msg_upload['error'])) {
			unset($array_col_val['UPLOAD_SERTIFIKAT']);
		}

		$this->Tool_model->update($array_col_val,$id);

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}
		
		redirect("tool");
	}

	public function page_list_rest()
	{
		$query = $this->Tool_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->UPLOAD_SERTIFIKAT = '<a onclick="detail('.$result[$i]->ID.')" class="btn btn-xs btn-success" data-toggle="modal" data-target="#myModal" ><i class="fa fa-eye"></i> View</a>';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Tool_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('tool');
	}

	public function detail_gbr($id)
	{
		$this->data['item']  = $this->Tool_model->get_item_by_id($id);

		$sbu ="-";
		$this->data['sbu']  = $this->Tool_model->get_item_table_by_id('MASTER_SBU','ID',$this->data['item']->result()[0]->ID_SBU);
		if(!empty($this->data['sbu']->result()[0]->NAMA_SBU)){
			$sbu = $this->data['sbu']->result()[0]->NAMA_SBU;
		}


		$cbg ="-";
		$this->data['cabang']  = $this->Tool_model->get_item_table_by_id('MASTER_CABANG','CABANG_ID',$this->data['item']->result()[0]->ID_CABANG);
		if(!empty($this->data['cabang']->result()[0]->BRANCH_NAME)){
			$cbg = $this->data['cabang']->result()[0]->BRANCH_NAME;
		}

		$kondisi = "";
		if($this->data['item']->result()[0]->KONDISI=="1"){
			$kondisi = "<font color='#00B16A'><b>Very Good</b></font>";
		}
		else if($this->data['item']->result()[0]->KONDISI=="2"){
			$kondisi = "<font color='#26C281'><b>Good</b></font>";
		}
		else if($this->data['item']->result()[0]->KONDISI=="3"){
			$kondisi = "<font color='orange'><b>Bad</b></font>";
		}
		else if($this->data['item']->result()[0]->KONDISI=="4"){
			$kondisi = "<font color='red'><b>Very Bad</b></font>";
		}




		echo $this->data['item']->result()[0]->NAMA."@@@".$this->data['item']->result()[0]->JUMLAH."@@@".$this->data['item']->result()[0]->UPLOAD_SERTIFIKAT."@@@".$this->data['item']->result()[0]->TGL_END_KALIBRASI."@@@".$kondisi."@@@".$this->data['item']->result()[0]->TYPE_LOCATION."@@@".$cbg."@@@".$sbu;
	}
}