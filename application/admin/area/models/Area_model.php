<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Area_model extends CI_Model 
{

	private $table = "MASTER_AREA";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

	public function search_by_area_name($area_name = "")
	{
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->like('LOWER("AREA_NAME")', strtolower($area_name)); 
		return $this->db->get();	
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('AREA_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id('AREA_ID');
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('AREA_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('AREA_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
