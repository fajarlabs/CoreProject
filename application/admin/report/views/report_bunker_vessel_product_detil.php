<style>
	.sub_table {
		padding-left: 20px;
	}
</style>
<!-- begin #content -->
<div id="content" class="content">
  <!-- marquee text -->  
  <!-- begin breadcrumb -->
  <?php echo create_breadcrumb('Home'); ?>
  <!-- end breadcrumb -->
  

<style type="text/css">
  .span {
     font-family: Arial;
     font-size : 16px;
  } 
  .my_space_height{
	  line-height:6px;
  }
</style>

  <!-- begin page-header -->
  <h1 class="page-header"><?php e($site_name); ?><small> Report data <?php e($site_name); ?></small></h1>
  <!-- end page-header -->
  <!-- begin row -->
  <div class="row">
    <!-- begin col-12 -->
    <div class="col-xs-12">
      <!-- begin panel -->
      <div class="panel panel-inverse">
        <div class="panel-heading">
          <div class="panel-heading-btn">
            <a href="<?php echo base_url(); ?>index.php/form_entry/index" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-reply"></i></a>
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
          </div>
          <h4 class="panel-title"><?php e($site_name); ?> - Data Report </h4>
        </div>
        <div class="panel-body" style="background-color:#D1DFED;overflow-x: hidden; alignment-baseline:middle;">
        <table align="center" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr >
    <td>&nbsp;</td>
    <td align="center">
    <table border="1" cellspacing="20" cellpadding="10" style="background-color: white;">
    <tr><td style="padding-left:20px;">
    <table width="700" border="0">
  <tr>
    <td class="span" colspan="6"><strong>PT. SUPERINTENDING COMPANY OF INDONESIA<br>
	<span class="span" style="margin-left: 50px;">SBU Hulu Migas Dan Produk Migas</span><br/>
    <span class="span" style="line-height: 3;margin-left: 60px;">PRODUCT BUNKER VESSEL SUMMARY</span></strong></td>
	<td width="307" align="center"><img src="<?php echo base_url(); ?>/assets/admin/images/logo_suco_report.png" width="150px"/></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="21">&nbsp;</td>
    <td width="109">&nbsp;</td>
    <td width="104">&nbsp;</td>
    <td width="144">&nbsp;</td>
    <td width="97">&nbsp;</td>
    <td width="88">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" style="width: 20%;">Referensi</td>
    <td class="span">:</td>
    <td class="span" colspan="5">
    REPORT-00000<?php echo check_exist($item->result()[0]->ID) ?>
	
	
	</td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" rowspan="4">Principal</td>
    <td class="span" rowspan="4">:</td>
    <td class="span" colspan="5">
      <?php 
      $data_client ="";
	  $cl_count=0;
      $arr_pr =  json_decode(@$item->result()[0]->CLIENTS);
	  if(isset($suplier)){
		  echo "- Client  :";
		    foreach ($arr_pr as $key => $value) {
		$join=""; 
		// Supplier
		$suplier  = json_decode(@$item->result()[0]->SUPPLIER,true);
		$sup 	  = isset($suplier[$cl_count]) ? $suplier[$cl_count] : 0;
		$sup_data = ($sup=="on"  ? 'Supplier, ' : '');
		$join 	 .= $sup_data;
		
		// Trader
		$trader   = json_decode(@$item->result()[0]->TRADER,true);
		$trd 	  = isset($trader[$cl_count]) ? $trader[$cl_count] : 0;
		$trd_data = ($trd=="on"  ? 'Trader, ' : '');
		$join 	 .= $trd_data;
		
		// Buyer
		$buyer    = json_decode(@$item->result()[0]->BUYER,true);
		$byr 	  = isset($buyer[$cl_count]) ? $buyer[$cl_count] : 0;
		$br_data  = ($byr=="on"  ? 'Buyer, ' : '');
		$join 	 .= $br_data;
		
		// Seller
		$seller   = json_decode(@$item->result()[0]->SELLER,true);
		$slr 	  = isset($seller[$cl_count]) ? $seller[$cl_count] : 0;
		$slr_data = ($slr=="on"  ? 'Seller, ' : '');
		$join 	 .= $slr_data;
		
		// Sharing Fee
		$sharing_fee    = json_decode(@$item->result()[0]->SHARING_FEE,true);
		$shr 	  		= isset($sharing_fee[$cl_count]) ? $sharing_fee[$cl_count] : 0;
		$shr_data 		= (!empty($shr)  ? 'Sharing Fee '.$shr.'%, ' : '');
		$join 	 		.= $shr_data;
		
		$join    = rtrim($join,', ');
        $data_client .= "<br/> &nbsp;&nbsp; - ".$value." <br/> &nbsp;&nbsp; &nbsp;&nbsp; ".$join." <br/>";
		$cl_count++;
      }
      echo  rtrim($data_client, '<br/>');
	  }
    ?> 
    </td>
  </tr>
  <tr>
    <td class="span" colspan="5">
	   - Kontrak :
      <?php 
      $data_pr ="";
      $arr_pr =  json_decode(@$item->result()[0]->KONTRAK);
      foreach ($arr_pr as $key => $value) {
        $data_pr .=$value.", ";
      }
      echo  rtrim($data_pr, ', ');
    ?>
    </td>
  </tr>
  <tr>
    <td class="span" colspan="5">
	   - LOI/SPK/PO/WO/NOA :
      <?php 
      $data_pr ="";
      $arr_pr =  json_decode(@$item->result()[0]->SPK);
      foreach ($arr_pr as $key => $value) {
        $data_pr .=$value.", ";
      }
      echo  rtrim($data_pr, ', ');
    ?>
    </td>
  </tr>
  <tr>
    <td class="span" colspan="5">
	   - Voy. /Trip No :
      <?php 
      $data_pr ="";
      $arr_pr =  json_decode(@$item->result()[0]->VOY);
      foreach ($arr_pr as $key => $value) {
        $data_pr .=$value.", ";
      }
      echo  rtrim($data_pr, ', ');
     ?>
    </td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" rowspan="2">Internal</td>
    <td class="span" rowspan="2">:</td>
    <td class="span" colspan="5">
	   - File Order :
      <?php echo @$item->result()[0]->FILE_ORDER; ?>
    </td>
  </tr>
  <tr>
    <td class="span" colspan="5">
	   - IWO :
     <?php echo @$item->result()[0]->IWO; ?>
    </td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">Vessel</td>
    <td class="span">:</td>
    <td class="span" colspan="5">
	<?php echo @$item->result()[0]->VESSEL; ?></td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Location</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->AREA; ?></td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Port Terminal</td>
    <td class="span">:</td>
    <td class="span"  align="left" colspan="5">
	 <?php 
	  $arr_prod=json_decode(@$item->result()[0]->PORT_TERMINAL);
	  if (is_array($arr_prod) || is_object($arr_prod))
	  {
	  $take=0;
	  echo'<ol>';
	  foreach($arr_prod as $key => $value){
		 $take='<li>'.$value.'</li>';
		echo $take;
		}
	   echo'</ol>';
	  } else {
		echo @$item->result()[0]->PORT_TERMINAL;
	  }
	  ?>
	</td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" valign="top">Product</td>
    <td class="span" valign="top">:</td>
    <td class="span" colspan="2" align="left" valign="top">
	<?php 
	  $arr_prod=json_decode(@$item->result()[0]->PRODUCT);
	  if (is_array($arr_prod) || is_object($arr_prod))
	  {
	  $take=0;
	  echo'<ol>';
	  foreach($arr_prod as $key => $value){
		 $take='<li>'.$value.'</li>';
		echo $take;
		}
	   echo'</ol>';
	  } else {
		echo @$item->result()[0]->PRODUCT;
	  }
	  ?>
    
  </td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">Loading Date</td>
    <td class="span">:</td>
    <td class="span" colspan="2">
      <?php echo check_exist_date($item->result()[0]->LOADING_START_DATE) ?> 
      <?php echo check_exist($item->result()[0]->LOADING_START_TIME) ?>
    </td>
    <td class="span" colspan="3">s/d &nbsp;
      <?php echo check_exist_date($item->result()[0]->LOADING_COMPLETE_DATE) ?>
      <?php echo check_exist($item->result()[0]->LOADING_COMPLETE_TIME) ?>
    </td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">BL Date</td>
    <td class="span">:</td>
    <td class="span" colspan="2">
      <?php echo check_exist_date($item->result()[0]->BL_START_DATE) ?> 
      <?php echo check_exist($item->result()[0]->BL_START_TIME) ?>
    </td>
    <td class="span" colspan="3">
    </td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" valign="top">Surveyor in charge</td>
    <td class="span" valign="top">:</td>
    <td class="span" colspan="5"> <?php 
  $tes=json_decode(@$item->result()[0]->SURVEYOR_IN_CHARGE);    
  if (is_array($tes) || is_object($tes))
  { 
  $take=0;
  echo'<ol>';
  foreach($tes as $key => $value){
     $take='<li>'.$value.'</li>';
    echo $take;
    }
   echo'</ol>'; 
  }  else {
    echo @$item->result()[0]->SURVEYOR_IN_CHARGE;
  }
  ?></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
 
 <tr>
    <td class="span" colspan="7"><strong>II. DISCHARGE MONITORING</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>A. TIME  LOG</strong></td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3" class="span"><strong>Description</strong></td>
    <td class="span"><strong>Time</strong></td>
    <td class="span"><strong>Date</strong></td>
    <td class="span" colspan="2"><strong>Remarks/Delays/Etc</strong></td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   
  <?php  foreach($el_connection_timelog as $key => $value){  
		$label = str_replace('_',' ',substr($value[0],5));
  ?>
  <tr>
    <td class="span" colspan="3"><?php echo ucwords(strtolower($label)); ?></td>
    <td class="span"><?php echo check_exist($item->result()[0]->$value[0]); ?></td>
    <td class="span"><?php echo convertDateDBFormat(check_exist_date($item->result()[0]->$value[1]),1); ?></td>
    <td class="span" colspan="2"><?php echo check_exist($item->result()[0]->$value[2]); ?></td>
  </tr>
  <tr>
    <td class="my_space_height" colspan="7">&nbsp;</td>
  </tr>
<?php 	} ?>
	
    <tr>
    <td class="span" colspan="3">Remarks</td>
    <td colspan="4" class="span" >
      : <?php echo check_exist($item->result()[0]->ACTIVITIES_REMARKS); ?></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  
  <tr>
    <td colspan="7" class="span"><strong>B. QUANTITY</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" colspan="4">&nbsp;</td>
    <td class="span" align="center"><b>K/L Obsv.</b></td>
    <td class="span" align="center"><b>K/L @15 oC</b></td>
    <td class="span" align="center"><b>Metric Ton</b></td>
  </tr>
  <tr>
    <td colspan="7" class="span"><strong>Delivery Order (DO)</strong></td>
  </tr>
  <?php 
      $INITIAL_READOUT_KLOBS = number_format((float)$item->result()[0]->INITIAL_READOUT_KLOBS, 3, '.', '');
      $INITIAL_READOUT_KL15 = number_format((float)$item->result()[0]->INITIAL_READOUT_KL15, 3, '.', '');
      $INITIAL_READOUT_METRIC_TONS = number_format((float)$item->result()[0]->INITIAL_READOUT_METRIC_TONS, 3, '.', '');
    ?>  
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">a) Initial Readout</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($INITIAL_READOUT_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($INITIAL_READOUT_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($INITIAL_READOUT_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $FINAL_READOUT_KLOBS = number_format((float)$item->result()[0]->FINAL_READOUT_KLOBS, 3, '.', '');
      $FINAL_READOUT_KL15 = number_format((float)$item->result()[0]->FINAL_READOUT_KL15, 3, '.', '');
      $FINAL_READOUT_METRIC_TONS = number_format((float)$item->result()[0]->FINAL_READOUT_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">b) Final Readout</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($FINAL_READOUT_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($FINAL_READOUT_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($FINAL_READOUT_METRIC_TONS); ?></td>
  </tr>
   <?php 
      $DIFFERENCE_KLOBS = number_format((float)$item->result()[0]->DIFFERENCE_KLOBS, 3, '.', '');
      $DIFFERENCE_KL15 = number_format((float)$item->result()[0]->DIFFERENCE_KL15, 3, '.', '');
      $DIFFERENCE_METRIC_TONS = number_format((float)$item->result()[0]->DIFFERENCE_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">c) Difference</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($DIFFERENCE_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($DIFFERENCE_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($DIFFERENCE_METRIC_TONS); ?></td>
  </tr>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
  <tr>
	 <?php 
      $METER_FACTOR_KLOBS = number_format((float)$item->result()[0]->METER_FACTOR_KLOBS, 3, '.', '');
    ?>  
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">d) Meter Factor</td>
    <td class="span" align="center" style="font-size: 13px;font-family: arial;"><?php echo check_exist($METER_FACTOR_KLOBS); ?></td>
    <td class="span" align="center"></td>
    <td class="span" align="center"></td>
    <td class="span" align="center"></td>
    <td class="span" align="center"></td>
  </tr>
  <?php 
      $CORD_VOL_DELIVERED_KLOBS = number_format((float)$item->result()[0]->CORD_VOL_DELIVERED_KLOBS, 3, '.', '');
      $CORD_VOL_DELIVERED_KL15 = number_format((float)$item->result()[0]->CORD_VOL_DELIVERED_KL15, 3, '.', '');
      $CORD_VOL_DELIVERED_METRIC_TONS = number_format((float)$item->result()[0]->CORD_VOL_DELIVERED_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">e) Cord. Vol.Delivered</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($CORD_VOL_DELIVERED_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($CORD_VOL_DELIVERED_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($CORD_VOL_DELIVERED_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $DENSITY15DEG_KLOBS = number_format((float)$item->result()[0]->DENSITY15DEG_KLOBS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">f) Density @15deg C</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($DENSITY15DEG_KLOBS); ?></td>
    <td class="span" align="center"></td>
    <td class="span" align="center"></td>
  </tr>
  
   <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>

<tr>
    <td class="span" colspan="7"><strong>Transporter (Barge Quantity)</strong></td>
  </tr>
  <?php 
      $BARGE_BEFORE_LOADING_KLOBS = number_format((float)$item->result()[0]->BARGE_BEFORE_LOADING_KLOBS, 3, '.', '');
      $BARGE_BEFORE_LOADING_KL15 = number_format((float)$item->result()[0]->BARGE_BEFORE_LOADING_KL15, 3, '.', '');
      $BARGE_BEFORE_LOADING_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_BEFORE_LOADING_METRIC_TONS, 3, '.', '');
    ?>  
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">a) Loading - Barge Before Loading</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_LOADING_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_LOADING_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_LOADING_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $BARGE_AFTER_LOADING_KLOBS = number_format((float)$item->result()[0]->BARGE_AFTER_LOADING_KLOBS, 3, '.', '');
      $BARGE_AFTER_LOADING_KL15 = number_format((float)$item->result()[0]->BARGE_AFTER_LOADING_KL15, 3, '.', '');
      $BARGE_AFTER_LOADING_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_AFTER_LOADING_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">b) @loading - Barge After Loading</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_LOADING_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_LOADING_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_LOADING_METRIC_TONS); ?></td>
  </tr>
   <?php 
      $BARGE_LOADED_KLOBS = number_format((float)$item->result()[0]->BARGE_LOADED_KLOBS, 3, '.', '');
      $BARGE_LOADED_KL15 = number_format((float)$item->result()[0]->BARGE_LOADED_KL15, 3, '.', '');
      $BARGE_LOADED_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_LOADED_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">c) @loading - Barge Loaded</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_LOADED_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_LOADED_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_LOADED_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $BARGE_BEFORE_DISCHARGE_KLOBS = number_format((float)$item->result()[0]->BARGE_BEFORE_DISCHARGE_KLOBS, 3, '.', '');
      $BARGE_BEFORE_DISCHARGE_KL15 = number_format((float)$item->result()[0]->BARGE_BEFORE_DISCHARGE_KL15, 3, '.', '');
      $BARGE_BEFORE_DISCHARGE_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_BEFORE_DISCHARGE_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">a) @discharge - Barge Before discharge</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_DISCHARGE_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_DISCHARGE_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_DISCHARGE_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $BARGE_AFTER_DISCHARGE_KLOBS = number_format((float)$item->result()[0]->BARGE_AFTER_DISCHARGE_KLOBS, 3, '.', '');
      $BARGE_AFTER_DISCHARGE_KL15 = number_format((float)$item->result()[0]->BARGE_AFTER_DISCHARGE_KL15, 3, '.', '');
      $BARGE_AFTER_DISCHARGE_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_AFTER_DISCHARGE_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">b) @discharge - Barge After discharge</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_DISCHARGE_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_DISCHARGE_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_DISCHARGE_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $BARGE_DISCHARGE_KLOBS = number_format((float)$item->result()[0]->BARGE_DISCHARGE_KLOBS, 3, '.', '');
      $BARGE_DISCHARGE_KL15 = number_format((float)$item->result()[0]->BARGE_DISCHARGE_KL15, 3, '.', '');
      $BARGE_DISCHARGE_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_DISCHARGE_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">c) @discharge - Barge Discharged</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_DISCHARGE_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_DISCHARGE_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_DISCHARGE_METRIC_TONS); ?></td>
  </tr>
  
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>
  
  
  <tr>
    <td class="span" colspan="7"><strong>Outturn (Ship''s Quantity)</strong></td>
  </tr>
  <?php 
      $BARGE_BEFORE_RECEIVE_KLOBS = number_format((float)$item->result()[0]->BARGE_BEFORE_RECEIVE_KLOBS, 3, '.', '');
      $BARGE_BEFORE_RECEIVE_KL15 = number_format((float)$item->result()[0]->BARGE_BEFORE_RECEIVE_KL15, 3, '.', '');
      $BARGE_BEFORE_RECEIVE_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_BEFORE_RECEIVE_METRIC_TONS, 3, '.', '');
    ?>  
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">a) Ship Before Receive</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_RECEIVE_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_RECEIVE_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_BEFORE_RECEIVE_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $BARGE_AFTER_RECEIVE_KLOBS = number_format((float)$item->result()[0]->BARGE_AFTER_RECEIVE_KLOBS, 3, '.', '');
      $BARGE_AFTER_RECEIVE_KL15 = number_format((float)$item->result()[0]->BARGE_AFTER_RECEIVE_KL15, 3, '.', '');
      $BARGE_AFTER_RECEIVE_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_AFTER_RECEIVE_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">b) Ship After Receive</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_RECEIVE_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_RECEIVE_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_AFTER_RECEIVE_METRIC_TONS); ?></td>
  </tr>
   <?php 
      $BARGE_RECEIVE_KLOBS = number_format((float)$item->result()[0]->BARGE_RECEIVE_KLOBS, 3, '.', '');
      $BARGE_RECEIVE_KL15 = number_format((float)$item->result()[0]->BARGE_RECEIVE_KL15, 3, '.', '');
      $BARGE_RECEIVE_METRIC_TONS = number_format((float)$item->result()[0]->BARGE_RECEIVE_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">c) Ship Received</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_RECEIVE_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_RECEIVE_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($BARGE_RECEIVE_METRIC_TONS); ?></td>
  </tr>

  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>
  
  <tr>
    <td class="span" colspan="7"><strong>Discrepancy</strong></td>
  </tr>
  <?php 
      $LOADING_LOSS_R1_KLOBS = number_format((float)$item->result()[0]->LOADING_LOSS_R1_KLOBS, 3, '.', '');
      $LOADING_LOSS_R1_KL15 = number_format((float)$item->result()[0]->LOADING_LOSS_R1_KL15, 3, '.', '');
      $LOADING_LOSS_R1_METRIC_TONS = number_format((float)$item->result()[0]->LOADING_LOSS_R1_METRIC_TONS, 3, '.', '');
    ?>  
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">a) Loading Loss (R1)</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($LOADING_LOSS_R1_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($LOADING_LOSS_R1_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($LOADING_LOSS_R1_METRIC_TONS); ?></td>
  </tr>
  <?php 
      $TRANSPORTATION_LOSS_R2_KLOBS = number_format((float)$item->result()[0]->TRANSPORTATION_LOSS_R2_KLOBS, 3, '.', '');
      $TRANSPORTATION_LOSS_R2_KL15 = number_format((float)$item->result()[0]->TRANSPORTATION_LOSS_R2_KL15, 3, '.', '');
      $TRANSPORTATION_LOSS_R2_METRIC_TONS = number_format((float)$item->result()[0]->TRANSPORTATION_LOSS_R2_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">b) Transportation Loss (R2)</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($TRANSPORTATION_LOSS_R2_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($TRANSPORTATION_LOSS_R2_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($TRANSPORTATION_LOSS_R2_METRIC_TONS); ?></td>
  </tr>
   <?php 
      $DISCHARGE_LOSS_R3_KLOBS = number_format((float)$item->result()[0]->DISCHARGE_LOSS_R3_KLOBS, 3, '.', '');
      $DISCHARGE_LOSS_R3_KL15 = number_format((float)$item->result()[0]->DISCHARGE_LOSS_R3_KL15, 3, '.', '');
      $DISCHARGE_LOSS_R3_METRIC_TONS = number_format((float)$item->result()[0]->DISCHARGE_LOSS_R3_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">c) Discharge Loss (R3)</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($DISCHARGE_LOSS_R3_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($DISCHARGE_LOSS_R3_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($DISCHARGE_LOSS_R3_METRIC_TONS); ?></td>
  </tr>
   <?php 
      $SUPPLY_LOSS_R4_KLOBS = number_format((float)$item->result()[0]->SUPPLY_LOSS_R4_KLOBS, 3, '.', '');
      $SUPPLY_LOSS_R4_KL15 = number_format((float)$item->result()[0]->SUPPLY_LOSS_R4_KL15, 3, '.', '');
      $SUPPLY_LOSS_R4_METRIC_TONS = number_format((float)$item->result()[0]->SUPPLY_LOSS_R4_METRIC_TONS, 3, '.', '');
    ?>
  <tr>
    <td colspan="7" class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">d) Supply Loss (R4)</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($SUPPLY_LOSS_R4_KLOBS); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($SUPPLY_LOSS_R4_KL15); ?> </td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"><?php echo check_exist($SUPPLY_LOSS_R4_METRIC_TONS); ?></td>
  </tr>

  
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr> 
  
  <tr>
    <td class="span" colspan="7"><strong>Quality</strong></td>
  </tr>
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="4">In Any</td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"></td>
    <td class="span" style="font-size: 13px;font-family: arial;" align="center"></td>
  </tr>
 
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>

 
  <tr>
    <td  colspan="7"  class="span"><strong>C. REMARKS  NOTE</strong></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td  colspan="7"  class="span"><strong>Non Nominated Tanks</strong></td>
  </tr>
   <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;">Notice of Apparent Discrepancies issued?</td>
    <td class="span"></td>
    <td class="span" colspan="3" style="font-size: 13px;font-family: arial;"><?php echo ucwords(@$item->result()[0]->RN_NOTICE_ISSUE) ?>
	<?php
		if(@$item->result()[0]->RN_NOTICE_ISSUE_DESCRIPTION!='""'){
			echo ' - <a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.str_replace('"','',@$item->result()[0]->RN_NOTICE_ISSUE_DESCRIPTION).'">'. str_replace('"','',@$item->result()[0]->RN_NOTICE_ISSUE_DESCRIPTION).'</a>';
		}
	?>
	</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;">Letter of Protests isued? </td>
    <td class="span"></td>
    <td class="span" colspan="3" style="font-size: 13px;font-family: arial;"><?php echo ucwords(@$item->result()[0]->RN_LETTER_ISSUE) ?>
	<?php
		if(@$item->result()[0]->RN_LETTER_ISSUE_DESCRIPTION!='""'){
			echo ' - <a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.str_replace('"','',@$item->result()[0]->RN_LETTER_ISSUE_DESCRIPTION).'">'.str_replace('"','',@$item->result()[0]->RN_LETTER_ISSUE_DESCRIPTION).'</a>';
		}
	?>
	</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;">Statement of Facts issued?</td>
    <td class="span"></td>
    <td class="span" colspan="3" style="font-size: 13px;font-family: arial;">
	<?php echo ucwords(@$item->result()[0]->RN_STATEMENT_ISSUE) ?>
	<?php
		if(@$item->result()[0]->RN_STATEMENT_ISSUE_DESCRIPTION!='""'){
			echo ' - <a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.str_replace('"','',@$item->result()[0]->RN_STATEMENT_ISSUE_DESCRIPTION).'">'.str_replace('"','',@$item->result()[0]->RN_STATEMENT_ISSUE_DESCRIPTION).'</a>';
		}
	?>
	</td>
    <td class="span" colspan="2">
	</td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td class="span" colspan="7"><strong>Bunker onboard</strong></td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
   <tr>
    <td class="span" style="font-size: 13px;font-family: arial;">On Arrival</td>
    <td class="span">:</td>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="2">MFO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MFO_ON_ARRIVAL); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="2">MDO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MDO_ON_ARRIVAL); ?></td>
    <td class="span">&nbsp;</td>
  </tr> 
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;">On Departure</td>
    <td class="span">:</td>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="2">MFO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MFO_ON_DEPARTURE); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="2">MDO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MDO_ON_DEPARTURE); ?></td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td class="span" colspan="7"><strong>Ships & Sea Condition</strong></td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
    <td class="span" style="font-size: 13px;font-family: arial;">On Arrival</td>
    <td class="span">:</td>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="2">DRAFT/meter FWD &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_ARRIVAL_DRAFT_FWD); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;" colspan="2">DRAFT/meter AFT &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_ARRIVAL_DRAFT_AFT); ?></td>
    <td class="span" style="font-size: 13px;font-family: arial;">LIST &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_ARRIVAL_DRAFT_LIST); ?></td>
  </tr> 
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
  <tr>
      <td class="span" style="font-size: 13px;font-family: arial;">On Departure</td>
      <td class="span">:</td>
      <td class="span" style="font-size: 13px;font-family: arial;"  colspan="2">DRAFT/meter FWD &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_DEPARTURE_DRAFT_FWD); ?></td>
      <td class="span" style="font-size: 13px;font-family: arial;"  colspan="2">DRAFT/meter AFT &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_DEPARTURE_DRAFT_AFT); ?></td>
      <td class="span" style="font-size: 13px;font-family: arial;">LIST &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_DEPARTURE_DRAFT_LIST); ?></td>
  </tr>
  <tr>
    <td class="span" style="height:5px"></td>
  </tr>
    <tr>
      <td class="span" colspan="1" style="font-size: 13px;font-family: arial;">Ships & Sea Condition</td>
      <td class="span" colspan="1" style="font-size: 13px;font-family: arial;">: </td>
      <td class="span" colspan="5" style="font-size: 13px;font-family: arial;"><?php echo check_exist($item->result()[0]->SC); ?></td>
    </tr>
    <tr style="height:100px"> 
  </tr>
  
  
  
</table>
 </td></tr>
    </table></td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
</table>

        
          
        </div>
    </div>
  </div>
</div>
</div>