<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model 
{

	private $table = "INFO_CLIENT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}


    public  function get_table_name($table,$col_name='',$order_type='',$where_col='',$where_data='') {
        $this->db->select('*');
        $this->db->from($table);
        if(!empty($where_col) and !empty($where_data)){    
            $this->db->where($where_col, $where_data);
        }
        if(!empty($col_name) and !empty($order_type)){
          $this->db->order_by($col_name, $order_type);
        }  

        return $this->db->get()->result();
    } 

     public  function get_table_group_by($table,$col_name='') {
        $this->db->select($col_name);
        $this->db->from($table);
        $this->db->group_by($col_name);
        return $this->db->get()->result();
    } 

    public  function get_table_name_one($table) {
        $this->db->select('*');
        $this->db->from($table);
		$this->db->limit('1');
        return $this->db->get()->result();
    }
	


	public function loading_stats($month='',$year='',$vessel="",$produk="") 
	{
		/* field acuan */
		/**
		 * loading product
		 * Ship's Loaded vs Bill of Lading (R1)
		 * SL_VS_BOL_R1_KLOBS
		 * SL_VS_BOL_R1_KL15
		 * SL_VS_BOL_R1_BBLS
		 * SL_VS_BOL_R1_LONGTON
		 * SL_VS_BOL_R1_METRICTON
		 * 
		 * Ship's Loaded (VEF applied) vs Bill of Lading (R1)
		 * SL_VEF_APPLIED_VS_BOL_KLOBS
		 * SL_VEF_APPLIED_VS_BOL_KL15
		 * SL_VEF_APPLIED_VS_BOL_BBLS
		 * SL_VEF_APPLIED_VS_BOL_LONGTON
		 * SL_VEF_APPLIED_VS_BOL_METRICTON
		 */

		$str_vessel = $vessel != "" ? "AND \"VESSEL\" LIKE '%$vessel'" : "";
		$str_produk = $produk != "" ? "AND \"PRODUCT\" LIKE '%$produk'" : "";
		
		$param="";
		if($month!='' and $year!=''){
			$param = ' AND "CREATE_TIME" like \'%'.$month."-".$year.'%\'';
		}
		$sql = 'SELECT "AREA", 
				SUM(cast("SL_VS_BOL_R1_KLOBS" as double precision)) "R1_KLOBS",
				SUM(cast("SL_VS_BOL_R1_KL15" as double precision)) "R1_KL15",
				SUM(cast("SL_VS_BOL_R1_BBLS" as double precision)) "R1_BBLS",
				SUM(cast("SL_VS_BOL_R1_LONGTON" as double precision)) "R1_LONGTON",
				SUM(cast("SL_VS_BOL_R1_METRICTON" as double precision)) "R1_METRICTON",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_KLOBS" as double precision)) "R1_VEF_KLOBS",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_KL15" as double precision)) "R1_VEF_KL15",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_BBLS" as double precision)) "R1_VEF_BBLS",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_LONGTON" as double precision)) "R1_VEF_LONGTON",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_METRICTON" as double precision)) "R1_VEF_METRICTON"
				FROM "FORM_ENTRY_FIELD"
				WHERE "IS_DELETE" = \'0\' 
				'.$str_vessel.'  
				'.$str_produk.'  
				GROUP BY "AREA"';

		return $this->db->query($sql);
	}

	public function discharge_stats($month='',$year='',$vessel="",$produk="") 
	{
		/* field acuan */
		/**
		 * Ship's Loaded vs Bill of Lading (R1)
		 * SLVS_BOL_R1_KLOBS
		 * SLVS_BOL_R1_KL15
		 * SLVS_BOL_R1_BBLS
		 * SLVS_BOL_R1_LONGTON
		 * SLVS_BOL_R1_METRICTON
		 * 
		 * Ship's Fig. After Loading vs Ship's Fig. Before Discharge (R2)
		 * SFAL_VS_SFBD_R2_KLOBS
		 * SFAL_VS_SFBD_R2_KL15
		 * SFAL_VS_SFBD_R2_BBLS
		 * SFAL_VS_SFBD_R2_LONGTON
		 * SFAL_VS_SFBD_R2_METRICTON
		 *
		 * Ship's Fig. Before Discharge vs Shore Received (R3)
		 * SFBD_VS_SR_R3_KLOBS
		 * SFBD_VS_SR_R3_KL15
		 * SFBD_VS_SR_R3_BBLS
		 * SFBD_VS_SR_R3_LONGTON
		 * SFBD_VS_SR_R3_METRICTON
		 *
		 * Shore Received vs Bill of Lading (R4)
		 * SR_VS_BOL_R4_KLOBS
		 * SR_VS_BOL_R4_KL15
		 * SR_VS_BOL_R4_BBLS
		 * SR_VS_BOL_R4_LONGTON
		 * SR_VS_BOL_R4_METRICTON
		 */

		$str_vessel = $vessel != "" ? "AND \"VESSEL\" LIKE '%$vessel'" : "";
		$str_produk = $produk != "" ? "AND \"PRODUCT\" LIKE '%$produk'" : "";
		$param="";
		if($month!='' and $year!=''){
			$param = ' AND "CREATE_TIME" like \'%'.$month."-".$year.'%\'';
		}
		$sql = 'SELECT "AREA", 
				SUM(cast("SLVS_BOL_R1_KLOBS" as double precision)) "R1_KLOBS",
				SUM(cast("SLVS_BOL_R1_KL15" as double precision)) "R1_KL15",
				SUM(cast("SLVS_BOL_R1_BBLS" as double precision)) "R1_BBLS",
				SUM(cast("SLVS_BOL_R1_LONGTON" as double precision)) "R1_LONGTON",
				SUM(cast("SLVS_BOL_R1_METRICTON" as double precision)) "R1_METRICTON",

				SUM(cast("SFAL_VS_SFBD_R2_KLOBS" as double precision)) "R2_KLOBS",
				SUM(cast("SFAL_VS_SFBD_R2_KL15" as double precision)) "R2_KL15",
				SUM(cast("SFAL_VS_SFBD_R2_BBLS" as double precision)) "R2_BBLS",
				SUM(cast("SFAL_VS_SFBD_R2_LONGTON" as double precision)) "R2_LONGTON",
				SUM(cast("SFAL_VS_SFBD_R2_METRICTON" as double precision)) "R2_METRICTON",

				SUM(cast("SFBD_VS_SR_R3_KLOBS" as double precision)) "R3_KLOBS",
				SUM(cast("SFBD_VS_SR_R3_KL15" as double precision)) "R3_KL15",
				SUM(cast("SFBD_VS_SR_R3_BBLS" as double precision)) "R3_BBLS",
				SUM(cast("SFBD_VS_SR_R3_LONGTON" as double precision)) "R3_LONGTON",
				SUM(cast("SFBD_VS_SR_R3_METRICTON" as double precision)) "R3_METRICTON",

				SUM(cast("SR_VS_BOL_R4_KLOBS" as double precision)) "R4_KLOBS",
				SUM(cast("SR_VS_BOL_R4_KL15" as double precision)) "R4_KL15",
				SUM(cast("SR_VS_BOL_R4_BBLS" as double precision)) "R4_BBLS",
				SUM(cast("SR_VS_BOL_R4_LONGTON" as double precision)) "R4_LONGTON",
				SUM(cast("SR_VS_BOL_R4_METRICTON" as double precision)) "R4_METRICTON"

				FROM "FORM_ENTRY_FIELD"
				WHERE "IS_DELETE" = \'0\' 
				'.$str_vessel.'  
				'.$str_produk.'  
				GROUP BY "AREA"';

		return $this->db->query($sql);
	}
}

