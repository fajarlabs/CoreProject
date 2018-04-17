<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Position_model extends CI_Model 
{

	private $table = "REF_POSITION";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function get_item_by_id($id) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('ID_REF_POSITION', $id); 
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

     public  function get_table_name($table,$col_name='',$order_type='',$where_col='',$where_data='') 
    {
        $this->db->select('*');
        $this->db->from($table);
        if(!empty($where_col) and !empty($where_data)){    
            $this->db->where($where_col, $where_data);
        }
        if(!empty($col_name) and !empty($order_type)){
          $this->db->order_by($col_name, 'ASC');
        }  

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

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('ID_REF_POSITION' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('ID_REF_POSITION', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
