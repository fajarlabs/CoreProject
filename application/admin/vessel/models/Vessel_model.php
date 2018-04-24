<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vessel_model extends CI_Model 
{

	private $table = "MASTER_VESSEL";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function search_by_vessel_name($vessel) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->like('VESSEL_NAME', $vessel); 
        return $this->db->get();
    }

    // ini adalah fungsi untuk menyimpan history transaksi vessel
    // pada form entry
    public function save_vessel_history($vessel='') {
        $vessel  = trim($vessel);
        $array_col_val = array();
        $array_col_val['VESSEL_NAME'] = $vessel;

        if($this->get_item_by_name($vessel)->num_rows() < 1) {
            $this->db->insert($this->table,$array_col_val);
            return $this->db->insert_id();    
        }

        return NULL;  
    }

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('VESSEL_ID', $id); 
		return $this->db->get();
    }

    public  function get_item_by_name($vessel) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('VESSEL_NAME', $vessel); 
        return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('VESSEL_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('VESSEL_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
