<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alert_subscriber_model extends CI_Model 
{

	private $table = "ALERT_SUBSCRIBER";

	public function get_all_items()
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
		$this->db->where('ALERT_SUBSCRIBER_ID', $id); 
		return $this->db->get();
    }

    public  function get_item_by_ref_id($ref_id=0) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('ALERT_SUBSCRIBER_ID', $ref_id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('ALERT_SUBSCRIBER_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('ALERT_SUBSCRIBER_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    public function update_by_ref($array_col_val = array(), $ref_id)
    {
		$this->db->where('ALERT_SUBSCRIBER_ID', $ref_id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    public function update_all($array_col_val = array())
    {
        $this->db->update($this->table, $array_col_val); 
    }

    public function get_subscriber($site_id=0)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->join('APP_CLIENT_USER', $this->table.'.USER_ID = APP_CLIENT_USER.USER_ID','left');
        $this->db->where($this->table.'.CLIENT_SITE_ID',$site_id);
        return $this->db->get();
    }

    public function search_by_fullname($client_site_id=0,$q='')
    {
        return $this->db->query('SELECT * FROM "APP_CLIENT_USER" WHERE "CLIENT_SITE_ID" = \''.$client_site_id.'\' AND LOWER(CAST(CONCAT("FIRST_NAME", "LAST_NAME") as TEXT)) LIKE \'%'.strtolower($q).'%\'');
    }

    public function check_user($client_site_id=0,$first_name, $last_name, $phone_number) 
    {
        return $this->db->query('SELECT * FROM "APP_CLIENT_USER" WHERE "CLIENT_SITE_ID" = \''.$client_site_id.'\' AND LOWER("FIRST_NAME") = \''.strtolower($first_name).'\'  AND LOWER("LAST_NAME") = \''.strtolower($last_name).'\' AND "PHONE" = \''.$phone_number.'\'');
    }

    public function check_user_subscriber($user_id=0) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('USER_ID', $user_id); 
        return $this->db->get(); 
    }
}
