<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Slider_model extends CI_Model 
{

	private $table = "WEBSITE_SLIDER";

	public function get_all_items($limit=100,$offset=0)
	{
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->limit($limit,$offset);
        return $this->db->get();
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('SLIDER_ID', $id); 
		return $this->db->get();
    }

    public function get_item_active()
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('STATUS', 'Y'); 
        return $this->db->get(); 
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('SLIDER_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('SLIDER_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    public function update_all($array_col_val = array())
    {
        $this->db->update($this->table, $array_col_val); 
    }
}
