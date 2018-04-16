<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bbm_model extends CI_Model 
{

	private $table = "MASTER_BBM";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('BBM_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('BBM_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('BBM_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
