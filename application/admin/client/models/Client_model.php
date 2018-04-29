<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_model extends CI_Model 
{

	private $table = "MASTER_CLIENT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('CLIENT_ID', $id); 
		return $this->db->get();
	}

    public  function get_item_by_name($name) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('CLIENT_NAME', $name); 
		return $this->db->get();
	}
	
	public function search_by_client_name($client_name = "")
	{
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->like('LOWER("CLIENT_NAME")', strtolower($client_name)); 
		return $this->db->get();	
	}

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id('CLIENT_ID');
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('CLIENT_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('CLIENT_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
	}
	
    // ini adalah fungsi untuk menyimpan history transaksi client
    // pada form entry
    public function save_client_history($client='') {
        $client  = trim($client);
        $array_col_val = array();
        $array_col_val['CLIENT_NAME'] = $client;

        if($this->get_item_by_name($client)->num_rows() < 1) {
            $this->db->insert($this->table,$array_col_val);
            return $this->db->insert_id('CLIENT_ID');    
        }

        return NULL;  
    }
}