<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template_component_model extends CI_Model 
{

	private $table = "APP_CLIENT_TEMPLATE_COMPONENT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('CLIENT_TEMPLATE_COMPONENT_ID', $id); 
		return $this->db->get();
    }

    public  function get_item_by_template_id($id) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('CLIENT_TEMPLATE_ID', $id); 
        return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('CLIENT_TEMPLATE_COMPONENT_ID' => $id));
    }

    public function delete_not_in_component_id($array_template_id, $id)
    {
        $this->db->where_not_in('CLIENT_TEMPLATE_COMPONENT_ID', $array_template_id);
        $this->db->delete($this->table, array('CLIENT_TEMPLATE_ID' => $id));
    }

    public function delete_by_client_template_id($id)
    {
        $this->db->delete($this->table, array('CLIENT_TEMPLATE_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('CLIENT_TEMPLATE_COMPONENT_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
