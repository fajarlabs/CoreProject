
<!-- begin #content -->
<div id="content" class="content">
  <!-- marquee text -->  
  <!-- begin breadcrumb -->
  <?php echo create_breadcrumb('Home'); ?>
  <!-- end breadcrumb -->
  

<style type="text/css">
  .span {
     font-family: OpenSans-Regular;
     font-size : 16px;
     src: url('<?php echo base_url(); ?>assets/fonts/OpenSans/OpenSans-Regular.ttf'); 
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
    <td width="307"><img src="<?php echo base_url(); ?>/assets/admin/images/logo_suco_report.png" width="150px"/></td>
    <td class="span" colspan="6"><strong>PT. SUPERINTENDING COMPANY OF INDONESIA<br>SBU Hulu Migas Dan Produk Migas<br>
    LOADING SUMMARY</strong></td>
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
    <td class="span">Referensi</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->KONTRAK; ?></td>
  </tr>
  <tr>
    <td class="span">Principal</td>
    <td class="span">:</td>
    <td class="span" colspan="5">tester saja</td>
  </tr>
  <tr>
    <td class="span">Vessel</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->VOY; ?></td>
  </tr>
  <tr>
    <td class="span">Location</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->AREA; ?></td>
  </tr>
  <tr>
    <td class="span" valign="top">Product      </td>
    <td class="span" valign="top">:</td>
    <td class="span" colspan="2" align="left" valign="top"><?php 
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
    <td class="span">Loading Date</td>
    <td class="span">:</td>
    <td class="span"><?php echo @$item->result()[0]->lsd; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <!--<tr>
    <td>Discharge Date</td>
    <td>:</td>
    <td><?php echo @$item->result()[0]->lcd; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>-->
  <tr>
    <td class="span">Bill of Lading No</td>
    <td class="span">:</td>
    <td class="span">-</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Bill of Lading Date</td>
    <td class="span">:</td>
    <td class="span"><?php echo convert_date(@$item->result()[0]->BL_START_DATE,'d/m/Y'); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" valign="top">Surveyor in charge</td>
    <td class="span" valign="top">:</td>
    <td class="span" valign="top" colspan="5"> <?php 
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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
    <td class="span"><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td class="span"><strong>Date</strong></td>
    <td></td>
    <td class="span"><strong>Time</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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
    <td class="span">Vessel Arrive</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dva; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_VESSEL_ARRIVED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Vessel Anchoraged</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->danchor; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_ANCHORAGED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Notice of Readiness Tendered</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->danor; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_NOR; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Notice of Readiness Accepted</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dacept; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_ACCEPTED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Vessel Berthed</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->daber; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_BERTHED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Surveyor On Board</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dasubord; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_SURVEYOR_ON_BOARD; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Key Meeting</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dkm; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_KEY_MEETING; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Tanks Inspection Commenced</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dacomenc; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_COMMENCED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Tanks Inspection Completed</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dacomplet; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_COMPLETED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Hose  Connected Commenced</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->daconmenced; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_CONNECTED_COMMENCED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Hose  Connected Completed</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->daconpleted; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_CONNECTED_COMPLETED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Loading  Commenced</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dlomenced; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_LOADING_COMMENCED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"> Loading  Completed</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dlocomplet; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_LOADING_COMPLETED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Hose  Disconnected</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dahoconeted; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_HOSE_CONNECTED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Sampling  Commenced</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dasamcomened; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_SAMPLING_COMMENCED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Sampling  Completed</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dasamcomplet; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_SAMPLING_COMPLETED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Cargo  Measurement Commenced</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->damenced; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_MEASUREMENT_COMMENCED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Cargo  Measurement Completed</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->damencomplet; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_MEASUREMENT_COMPLETED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Document  OnBoard</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->dadoon; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_DOCUMENTS_ONBOARD; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Vessel  Sailed</td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->davesa; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo @$item->result()[0]->TIME_VESSEL_SAILED; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Remarks</td>
    <td class="span">:</td>
    <td colspan="5"><?php echo @$item->result()[0]->ACTIVITIES_REMARKS; ?></td>
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
    <td class="span"><strong>B. QUANTITY</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center">K/L Obsv.</td>
    <td class="span" align="center">K/L @15 oC</td>
    <td class="span" align="center">BBls @60 oF</td>
    <td class="span" align="center">Metric Ton</td>
    <td class="span" align="center">Long Ton</td>
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
    <td class="span">Bill of Lading</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo @$item->result()[0]->BL_QUANTITY_KLOBS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->BL_QUANTITY_KL15; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->BL_QUANTITY_BBLS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->BL_QUANTITY_METRICTON; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->BL_QUANTITY_LONGTON; ?></td>
  </tr>
  <tr>
    <td class="span">Vessel Loaded(GSV)</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo @$item->result()[0]->SL_GSV_KLOBS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->SL_GSV_KL15; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->SL_GSV_BBLS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->SL_GSV_METRICTON; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->SL_GSV_LONGTON; ?></td>
  </tr>
  <tr>
    <td class="span">Differences(4Bform)</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_KLOBS; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_KL15; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_BBLS; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_METRICTON; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_LONGTON; ?></td>
  </tr>
  <tr>
    <td class="span">% tase</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_KLOBS; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_KL15; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_BBLS; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_METRICTON; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->SL_GSV_LONGTON; ?></td>
  </tr>
  <tr>
    <td class="span">OBQ</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo @$item->result()[0]->OBQ_QUANTITY_KLOBS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->OBQ_QUANTITY_KL15; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->OBQ_QUANTITY_BBLS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->OBQ_QUANTITY_METRICTON; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->OBQ_QUANTITY_LONGTON; ?></td>
  </tr>
  <tr>
    <td class="span">Free  Water</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo @$item->result()[0]->FWAL_KLOBS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->FWAL_KL15; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->FWAL_BBLS; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->FWAL_METRICTON; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->FWAL_LONGTON; ?></td>
  </tr>
  <tr>
    <td class="span">VEF</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo @$item->result()[0]->VEF_LOADING_BBLS; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Density@15°C</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo @$item->result()[0]->BL_15_DERAJAT_CELCIUS; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">API  60°F</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->BL_15_DERAJAT_CELCIUS; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">S+W %  VOL</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->BL_15_DERAJAT_CELCIUS; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
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
    <td class="span"><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Nomination Ship&rsquo;s Tanks</td>
    <td class="span">:</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Non  Nom Ship&rsquo;s Tanks</td>
    <td class="span">:</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">NOAD/LOP/SOF  Issued</td>
    <td class="span">:</td>
    <td class="span" align="center"><?php echo @$item->result()[0]->RN_NOTICE_ISSUE; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->RN_LETTER_ISSUE; ?></td>
    <td class="span" align="center"><?php echo @$item->result()[0]->RN_STATEMENT_ISSUE; ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Sample  Source for Analysis</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->SAMPLE_SOURCE; ?></td>
    </tr>
  <tr>
    <td class="span">Draft Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">Fwd&nbsp;<?php echo @$item->result()[0]->SC_ON_ARRIVAL_DRAFT_FWD; ?>&nbsp;M</td>
    <td class="span" colspan="2">Aft&nbsp;<?php echo @$item->result()[0]->SC_ON_ARRIVAL_DRAFT_AFT; ?>&nbsp;M</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">Draft Departure</td>
    <td class="span">:</td>
    <td class="span" colspan="2">Fwd&nbsp;<?php echo @$item->result()[0]->SC_ON_DEPARTURE_DRAFT_FWD; ?>&nbsp;M</td>
    <td class="span" colspan="2">Aft&nbsp;<?php echo @$item->result()[0]->SC_ON_DEPARTURE_DRAFT_AFT; ?>&nbsp;M</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">Bunker  Condition</td>
    <td class="span">:</td>
    <td class="span">Arrival </td>
    <td class="span" colspan="2">MFO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MFO_ON_ARRIVAL; ?></td>
    <td class="span" colspan="2">MDO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MDO_ON_ARRIVAL; ?></td>
    </tr>
   <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">Departure</td>
    <td class="span" colspan="2">MFO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MFO_ON_DEPARTURE; ?></td>
    <td class="span" colspan="2">MDO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MDO_ON_DEPARTURE; ?></td>
    </tr>
   <tr>
    <td class="span">Sea  Condition</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->SC; ?></td>
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
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
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
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
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
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
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
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
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
</table>
  </td></tr></table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
        </div>
    </div>
  </div>
</div>
</div>