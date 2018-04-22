<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form_entry_model extends CI_Model 
{

	private $table = "FORM_ENTRY_FIELD";

    public function get_all_items($offset=0,$limit=0,$filter_rules=array())
    {               
        $query = "SELECT *, \"fef\".\"CREATE_TIME\" \"CTIME\", \"fef\".\"ID\" \"FEFID\" FROM \"$this->table\" \"fef\" ";
        $filter_rules = json_decode($filter_rules);
        $count = count($filter_rules);
        $cp_count = $count;
        $query .= "left join \"MASTER_INTERVENTION\" \"mi\" ON \"fef\".\"SELECT_INTERVENTION\" = \"mi\".\"ID\" ";
        $query .= "left join \"MASTER_PRODUCT\" \"mp\" ON \"fef\".\"PRODUCT_TYPE\"::int = \"mp\".\"PRODUCT_ID\" WHERE ";
        
        if($count > 0) {
            foreach($filter_rules as $row) {
                if($row->field == "CTIME") {
                    $array_datetime = explode(" ",$row->value);
                    $array_endtime  = explode(" ",$row->value);

                    if(count($array_datetime) > 1) {
                        $array_date = explode("-",$array_datetime[0]);
                        $array_date = array_reverse($array_date);
                        $array_datetime[0] = implode("-",$array_date);
                    }
                    $array_datetime = implode(" ",$array_datetime);

                    if(count($array_endtime) > 1) {
                        $array_date = explode("-",$array_endtime[0]);
                        $array_date = array_reverse($array_date);
                        $array_endtime[0] = implode("-",$array_date);
                        $array_endtime[1] = "23:59:59";
                    }
                    $array_endtime = implode(" ",$array_endtime);

                    $query .= "\"fef\".\"CREATE_TIME\" >= timestamp '".$array_datetime."' AND \"fef\".\"CREATE_TIME\" < timestamp '".$array_endtime."' ";
                }
                if($row->field == "SPK") {
                    $query .= "\"fef\".\"SPK\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "AREA") {
                    $query .= "\"fef\".\"AREA\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "KONTRAK") {
                    $query .= "\"fef\".\"KONTRAK\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "INTERVENTION_NAME") {
                    $query .= "\"mi\".\"INTERVENTION_NAME\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "PRODUCT_NAME") {
                    $query .= "\"mp\".\"PRODUCT_NAME\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "FILE_ORDER") {
                    $query .= "\"fef\".\"FILE_ORDER\" LIKE '%".$row->value."%' ";
                }   
                if($row->field == "IWO") {
                    $query .= "\"fef\".\"IWO\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "SURVEYOR_IN_CHARGE") {
                    $query .= "\"fef\".\"SURVEYOR_IN_CHARGE\" LIKE '%".$row->value."%' ";
                }
                if($count > 1) {
                    $query .= "AND ";
                }
                $count--;
            }
        }

        $query .= ($cp_count > 0 ? "AND " : " ")." \"fef\".\"IS_DELETE\" = '0' ORDER BY \"fef\".\"ID\" DESC LIMIT $limit OFFSET $offset ";

        return $this->db->query($query);
    }

    public function count_all_items($filter_rules=array())
    {               
        $query = "SELECT *, \"fef\".\"CREATE_TIME\" \"CTIME\", \"fef\".\"ID\" \"FEFID\" FROM \"$this->table\" \"fef\" ";
        $filter_rules = json_decode($filter_rules);
        $count = count($filter_rules);
        $cp_count = $count;
        $query .= "left join \"MASTER_INTERVENTION\" \"mi\" ON \"fef\".\"SELECT_INTERVENTION\" = \"mi\".\"ID\" ";
        $query .= "left join \"MASTER_PRODUCT\" \"mp\" ON \"fef\".\"PRODUCT_TYPE\"::int = \"mp\".\"PRODUCT_ID\" WHERE ";
        
        if($count > 0) {
            foreach($filter_rules as $row) {
                if($row->field == "CTIME") {
                    $array_datetime = explode(" ",$row->value);
                    $array_endtime  = explode(" ",$row->value);

                    if(count($array_datetime) > 1) {
                        $array_date = explode("-",$array_datetime[0]);
                        $array_date = array_reverse($array_date);
                        $array_datetime[0] = implode("-",$array_date);
                    }
                    $array_datetime = implode(" ",$array_datetime);

                    if(count($array_endtime) > 1) {
                        $array_date = explode("-",$array_endtime[0]);
                        $array_date = array_reverse($array_date);
                        $array_endtime[0] = implode("-",$array_date);
                        $array_endtime[1] = "23:59:59";
                    }
                    $array_endtime = implode(" ",$array_endtime);

                    $query .= "\"fef\".\"CREATE_TIME\" >= timestamp '".$array_datetime."' AND \"fef\".\"CREATE_TIME\" < timestamp '".$array_endtime."' ";
                }
                if($row->field == "SPK") {
                    $query .= "\"fef\".\"SPK\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "AREA") {
                    $query .= "\"fef\".\"AREA\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "KONTRAK") {
                    $query .= "\"fef\".\"KONTRAK\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "INTERVENTION_NAME") {
                    $query .= "\"mi\".\"INTERVENTION_NAME\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "PRODUCT_NAME") {
                    $query .= "\"mp\".\"PRODUCT_NAME\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "FILE_ORDER") {
                    $query .= "\"fef\".\"FILE_ORDER\" LIKE '%".$row->value."%' ";
                }   
                if($row->field == "IWO") {
                    $query .= "\"fef\".\"IWO\" LIKE '%".$row->value."%' ";
                }
                if($row->field == "SURVEYOR_IN_CHARGE") {
                    $query .= "\"fef\".\"SURVEYOR_IN_CHARGE\" LIKE '%".$row->value."%' ";
                }
                if($count > 1) {
                    $query .= "AND ";
                }
                $count--;
            }
        }

        $query .= ($cp_count > 0 ? "AND " : " ")." \"fef\".\"IS_DELETE\" = '0' ";
        return $this->db->query($query)->num_rows();
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

    public function update($array_col_val = array(), $id)
    {
        $this->db->where('ID', $id);
        $this->db->update($this->table, $array_col_val); 
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('ID' => $id));
    }
}
