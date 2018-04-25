<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model 
{

	private $table = "MASTER_PRODUCT";

	public function get_all_items()
	{
		return $this->db->get($this->table);
	}

    public  function get_menu_by_reference($reference=0) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('PRODUCT_REFERENCE', $reference); 
		return $this->db->get();
    }

    public  function get_product_by_name($name=0) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('PRODUCT_NAME', $name); 
        return $this->db->get();
    }

    public  function get_item_by_menu_id($menu_id=0) {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('PRODUCT_ID', $menu_id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('PRODUCT_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('PRODUCT_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    // ini adalah fungsi untuk menyimpan history transaksi produk
    // pada form entry
    public function save_product_history($product_name='',$product_level=2,$product_reference=7,$weight=1,$show=1) {
        $product_name  = trim($product_name);
        $array_col_val = array();
        $array_col_val['PRODUCT_NAME']      = $product_name;
        $array_col_val['PRODUCT_LEVEL']     = $product_level;
        $array_col_val['PRODUCT_REFERENCE'] = $product_reference; // 7 is product
        $array_col_val['WEIGHT'] = $weight;
        $array_col_val['SHOW']   = $show;

        if($this->get_product_by_name($product_name)->num_rows() < 1) {
            $this->db->insert($this->table,$array_col_val);
            return $this->db->insert_id();    
        }

        return NULL;  
    }

    public function get_product_search_by_name($product_name='',$product_level=2,$product_reference=7) {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('PRODUCT_LEVEL', $product_level); 
        $this->db->where('PRODUCT_REFERENCE', $product_reference); 
        $this->db->like('lower("PRODUCT_NAME")', strtolower($product_name)); 
        return $this->db->get();
    }

}
