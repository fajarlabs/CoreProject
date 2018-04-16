<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model 
{

	private $table = "INFO_CLIENT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

	public function loading_stats($start_date='',$end_date='',$client_site_id=0,$vessel="",$produk="") 
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
				WHERE "IS_DELETE" = \'0\' AND "CLIENT_SITE_ID" = \''.$client_site_id.'\' 
				AND "CREATE_TIME" >= timestamp \''.$start_date.' 00:00:00\' 
				AND "CREATE_TIME" < timestamp \''.$end_date.' 23:59:59\' 
				'.$str_vessel.'  
				'.$str_produk.'  
				GROUP BY "AREA"';

		return $this->db->query($sql);
	}

	public function discharge_stats($start_date='',$end_date='',$client_site_id=0,$vessel="",$produk="") 
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
				WHERE "IS_DELETE" = \'0\' AND "CLIENT_SITE_ID" = \''.$client_site_id.'\' 
				AND "CREATE_TIME" >= timestamp \''.$start_date.' 00:00:00\' 
				AND "CREATE_TIME" < timestamp \''.$end_date.' 23:59:59\' 
				'.$str_vessel.'  
				'.$str_produk.'  
				GROUP BY "AREA"';

		return $this->db->query($sql);
	}
}

