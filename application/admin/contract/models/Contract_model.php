<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contract_model extends CI_Model 
{

	private $table = "MASTER_CONTRACT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
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

    public function search_by_contract_name($match) {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->like('CONTRACT', $match); 
        return $this->db->get(); 
    }
}
