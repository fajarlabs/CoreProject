<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_template_access_model extends CI_Model 
{

	private $table = "APP_CLIENT_TEMPLATE_ACCESS";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public function get_item_by_ctci_hai($client_template_component_id, $header_access_id)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('CLIENT_TEMPLATE_COMPONENT_ID', $client_template_component_id); 
        $this->db->where('HEADER_ACCESS_ID', $header_access_id); 
        return $this->db->get();
    }

    public function get_all_items_join_template_access_site_id($client_template_id, $client_site_id)
    {
        $this->db->select('*,actc.CLIENT_TEMPLATE_COMPONENT_ID ALIAS_TEMPLATE_COMPONENT_ID');
        $this->db->from('APP_CLIENT_TEMPLATE_COMPONENT actc');
        $this->db->join($this->table.' acta', 'acta.CLIENT_TEMPLATE_COMPONENT_ID = actc.CLIENT_TEMPLATE_COMPONENT_ID', 'left');
        $this->db->join('APP_CLIENT_HEADER_ACCESS acha', 'acha.HEADER_ACCESS_ID = acta.HEADER_ACCESS_ID', 'left');
        $this->db->where('actc.CLIENT_TEMPLATE_ID', $client_template_id);
        $this->db->where('acha.CLIENT_SITE_ID', $client_site_id);
        $this->db->order_by('actc.CLIENT_TEMPLATE_ID','asc');
        return $this->db->get(); 
    }

    public function get_all_items_join_template_access($client_template_id)
    {
        $this->db->select('*,actc.CLIENT_TEMPLATE_COMPONENT_ID ALIAS_TEMPLATE_COMPONENT_ID');
        $this->db->from('APP_CLIENT_TEMPLATE_COMPONENT actc');
        $this->db->join($this->table.' acta', 'acta.CLIENT_TEMPLATE_COMPONENT_ID = actc.CLIENT_TEMPLATE_COMPONENT_ID', 'left');
        $this->db->join('APP_CLIENT_HEADER_ACCESS acha', 'acha.HEADER_ACCESS_ID = acta.HEADER_ACCESS_ID', 'left');
        $this->db->where('actc.CLIENT_TEMPLATE_ID', $client_template_id);
        $this->db->order_by('actc.CLIENT_TEMPLATE_ID','asc');
        return $this->db->get(); 
    }

    public function get_field_name_access($client_site_id,$menu_id)
    {
        $this->db->select('actc.FIELD_NAME, acta.ACCESS_STATUS');
        $this->db->from($this->table.' acta');
        $this->db->join('APP_CLIENT_HEADER_ACCESS acha', 'acta.HEADER_ACCESS_ID = acha.HEADER_ACCESS_ID', 'left');
        $this->db->join('APP_CLIENT_TEMPLATE_COMPONENT actc', 'actc.CLIENT_TEMPLATE_COMPONENT_ID = acta.CLIENT_TEMPLATE_COMPONENT_ID', 'left');
        $this->db->where('acha.MENU_ID', $menu_id);
        $this->db->where('acha.CLIENT_SITE_ID', $client_site_id);
        return $this->db->get(); 
    }

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('TEMPLATE_ACCESS_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('TEMPLATE_ACCESS_ID' => $id));
    }

    public function delete_by_template_component_id($id)
    {
        $this->db->delete($this->table, array('CLIENT_TEMPLATE_COMPONENT_ID' => $id));
    }

    public function delete_by_header_access_id($id)
    {
        $this->db->delete($this->table, array('HEADER_ACCESS_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('TEMPLATE_ACCESS_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    public function update_by_header_access_id($array_col_val = array(), $id)
    {
        $this->db->where('HEADER_ACCESS_ID', $id);
        $this->db->update($this->table, $array_col_val); 
        return $id;
    }
}
