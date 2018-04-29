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

    public  function get_item_by_name($area) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('AREA_NAME', $area); 
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
	
    // ini adalah fungsi untuk menyimpan history transaksi area
    // pada form entry
    public function save_area_history($area='') {
        $area  = trim($area);
        $array_col_val = array();
        $array_col_val['AREA_NAME'] = $area;

        if($this->get_item_by_name($area)->num_rows() < 1) {
            $this->db->insert($this->table,$array_col_val);
            return $this->db->insert_id('AREA_ID');    
        }

        return NULL;  
    }
}
