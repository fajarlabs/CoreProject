<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tool_model extends CI_Model 
{

	private $table = "MASTER_TOOL";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function get_item_table_by_id($table,$where,$id) 
    {
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where($where,$id); 
        return $this->db->get();
    }

    public  function get_table_name($table,$col_name='',$order_type='',$where_col='',$where_data='') 
    {
        $this->db->select('*');
        $this->db->from($table);
        if(!empty($where_col) and !empty($where_data)){    
            $this->db->where($where_col, $where_data);
        }
        if(!empty($col_name) and !empty($order_type)){
          $this->db->order_by($col_name, $order_type);
        } 

        return $this->db->get()->result();
    }

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
