<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Template_model extends CI_Model 
{

	private $table = "APP_CLIENT_TEMPLATE";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public function get_all_items_join_menu()
    {
        $this->db->select('*');
        $this->db->from($this->table .' act');
        $this->db->join('APP_CLIENT_MENU acm', 'acm.MENU_ID = act.MENU_ID','left');
        $this->db->order_by('act.MENU_ID');
        return $this->db->get();
    }

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('CLIENT_TEMPLATE_ID', $id); 
		return $this->db->get();
    }

    public  function get_item_by_template_name($field_name) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('TEMPLATE_NAME', $field_name); 
        return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('CLIENT_TEMPLATE_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('CLIENT_TEMPLATE_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
