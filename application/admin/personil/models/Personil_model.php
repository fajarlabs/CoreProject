<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Personil_model extends CI_Model 
{

	private $table = "MASTER_CV";

	public function get_all_items()
    {
        $this->db->select('count(*) as total,"TYPE_LOCATION","TYPE_LOCATION" as link '); 
        $this->db->group_by('"TYPE_LOCATION"');    
        return $this->db->get($this->table);
    }
    


    public function get_all_items_by_area($id)
	{
        $this->db->select('*'); 
        $this->db->where('"TYPE_LOCATION"', $id); 
        return $this->db->get($this->table);
	}

    public function get_personil_by_name_location($query_name, $location) {
        $this->db->select('"cv"."ID","cv"."NAMA", "sbu"."NAMA_SBU"');
        $this->db->from($this->table." cv");
        $this->db->join('"MASTER_SBU" sbu','"sbu"."ID" = "cv"."ID_SBU"');
        $this->db->like('lower("cv"."NAMA")', strtolower($query_name)); 
        $this->db->where('"cv"."TYPE_LOCATION"', $location); 
        return $this->db->get();
    }

    public  function get_item_by_id($id) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('ID', $id); 
        return $this->db->get();
    }
 
    public  function get_personil_id($id) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('ID', $id); 
        return $this->db->get();
    }

    public  function get_item_table_by_id($table,$where,$id) 
    {
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($where,$id); 
        return $this->db->get();
    }


    public  function get_last_record($table_name,$col_name='', $order_type='') 
    {
		$this->db->select('*');
		$this->db->from($table_name);
		$this->db->order_by($col_name,$order_type);
        $this->db->limit(1);  
		return $this->db->get()->result();
    }

     public  function get_table_name($table,$col_name='',$order_type='',$where_col='',$where_data='',$where_type='') 
    {
        $this->db->select('*');
        $this->db->from($table);
        if(!empty($where_col) and !empty($where_data)){ 
            if(empty($where_type)){
                 $this->db->where($where_col, $where_data);
            } 
            else if($where_type=="like"){
                 $this->db->like('lower("'.$where_col.'")', strtolower($where_data)); 
            }   
           
        }
        if(!empty($col_name) and !empty($order_type)){
          $this->db->order_by($col_name, $order_type);
        }  

        return $this->db->get()->result();
    } 

    public  function get_area($id_loc,$id) 
    {
        $table="";
        $where_col="";
        if($id_loc=="1"){
            $table ="MASTER_SBU";            
            $where_col ="ID";            
        }
        else if($id_loc=="2"){
            $table ="MASTER_CABANG";   
            $where_col ="CABANG_ID";   
        }

        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($where_col, $id);   
        return $this->db->get()->result();
    }

     public function save_table($table_name,$array_col_val = array())
    {
        $this->db->insert($table_name,$array_col_val);
        return $this->db->insert_id();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

     public function delete_table_param_by_id($table_name,$col,$id)
    {
        $this->db->delete($table_name, array($col => $id));
    }


    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('ID' => $id));
    }

    public function update_table($array_col_val_cr_updt = array(),$table_name,$id)
    {
        $this->db->where('ID', $id);
        $this->db->update($table_name, $array_col_val_cr_updt); 
        return $id;
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
