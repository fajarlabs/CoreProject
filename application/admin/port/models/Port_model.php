<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Port_model extends CI_Model 
{

	private $table = "MASTER_PORT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public function search_by_port_name($port_name='') {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->like('PORT_NAME', $port_name); 
        return $this->db->get();
    }

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('PORT_ID', $id); 
		return $this->db->get();
    }

    public  function get_item_by_name($name) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('PORT_NAME', $name); 
        return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('PORT_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('PORT_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    // ini adalah fungsi untuk menyimpan history transaksi port
    // pada form entry
    public function save_port_history($port_name='') {
        $port_name  = trim($port_name);
        $array_col_val = array();
        $array_col_val['PORT_NAME'] = $port_name;

        if($this->get_item_by_name($port_name)->num_rows() < 1) {
            $this->db->insert($this->table,$array_col_val);
            return $this->db->insert_id();    
        }

        return NULL;  
    }
}
