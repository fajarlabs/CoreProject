<!-- begin #content -->
<div id="content" class="content">
	<!-- marquee text -->  
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	
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
					<h4 class="panel-title"><?php e($site_name); ?> - Data Report</h4>
				</div>
				<div class="panel-body" style="overflow-x: hidden; alignment-baseline:middle;">
				<table align="center" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr >
    <td>&nbsp;</td>
    <td align="center">
    <table border="1" cellspacing="20" cellpadding="10">
    <tr><td style="padding-left:20px;">    
    <table width="700" border="0">
  <tr>
    <td width="307"><img src="<?php echo base_url(); ?>/assets/admin/images/logo_suco_report.png" width="150px"/></td>
    <td colspan="6"><strong>PT. SUPERINTENDING COMPANY OF INDONESIA<br>SBU Hulu Migas Dan Produk Migas<br>DISCHARGE SUMMARY</strong></td>
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
    <td colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
    <tr>
    <td>Referensi</td>
    <td>:</td>
    <td colspan="5"><?php echo @$item->result()[0]->KONTRAK; ?></td>
  </tr>
  <tr>
    <td>Principal</td>
    <td>:</td>
    <td colspan="5">tester saja</td>
  </tr>
  <tr>
    <td>Vessel</td>
    <td>:</td>
    <td colspan="5"><?php echo @$item->result()[0]->VOY; ?></td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td colspan="5"><?php echo @$item->result()[0]->AREA; ?></td>
  </tr>
    <tr>
    <td valign="top">Product      </td>
    <td valign="top">:</td>
    <td colspan="2" align="left" valign="top"><?php 
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
	?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Loading Date</td>
    <td>:</td>
    <td><?php echo @$item->result()[0]->lsd; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Discharge Date</td>
    <td>:</td>
    <td><?php echo @$item->result()[0]->lcd; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading No</td>
    <td>:</td>
    <td>325</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading Date</td>
    <td>:</td>
    <td>13/12/2017</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Surveyor in charge</td>
    <td valign="top">:</td>
    <td colspan="5"> <?php 
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><strong>II. DISCHARGE MONITORING</strong></td>
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
    <td><strong>A. TIME  LOG</strong></td>
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
    <td><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td><strong>Date</strong></td>
    <td></td>
    <td><strong>Time</strong></td>
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
    <td>Vessel Arrived</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dva; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_VESSEL_ARRIVED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Vessel Anchorage</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->danchor; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_ANCHORAGED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Notice of Readiness Tendered</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->danor; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_NOR; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Notice of Readiness Accepted</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dacept; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_ACCEPTED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Pilot on Board for Berthing</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dapob; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_POB; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Anchors Aweigh</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->daweigh; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_A_AWEIGH; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Vessel Berthed</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->daberth; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_BERTHING; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Surveyor on Board</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dasubord; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_SURVEYOR_ON_BOARD; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Key Meeting</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dkm; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_KEY_MEETING; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Tanks Inspection Calc. Commenced</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->daiinpcomenc; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_INPECTION_COMMENCED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Tanks Inspection Calc. Completed</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->daiinpcomplet; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_INSPECTION_COMPLETED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sampling  Before Discharge Commenced</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dasbdcomenced; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_SBD_COMMENCED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sampling  Before Discharge Completed</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dasbdcomplete; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_SBD_COMPLETED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Hose  Connected</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dahoconeted; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_HOSE_CONNECTED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Discharge  Commenced</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dadisccomenc; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_DISCHARGE_COMMENCED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Discharge  Completed</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dadiscomplet; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_DISCHARGE_COMPLETED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Hose  Disconnected</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dahodis; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_HOSE_DISCONNECTED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Tanks  Inspection Commenced</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->datankinscomenced; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_TANKS_INS_COMMENCED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr><tr>
    <td>Tanks  Inspection Completed</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->datankinscomenced; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_TANKS_INS_COMPLETED; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Documents  OnBoard</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dadoon; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_DOCUMENTS_ONBOARD; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Surveyour  Left Vessel</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dasvylevesel; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_SVY_LEFT_VESSEL; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Vessel  Sail</td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->dateveselsail; ?></td>
    <td>&nbsp;</td>
    <td><?php echo @$item->result()[0]->TIME_VESSEL_SAIL; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr><tr>
    <td>Remarks</td>
    <td>:</td>
    <td colspan="5"><?php echo @$item->result()[0]->ACTIVITIES_REMARKS; ?></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr><tr>
    <td><strong>B. QUANTITY</strong></td>
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center">K/L Obsv.</td>
    <td align="center">K/L @15 oC</td>
    <td align="center">BBls @60 oF</td>
    <td align="center">Metric Ton</td>
    <td align="center">Long Ton</td>
  </tr>
  <tr>
    <td><strong>Loading  Port</strong></td>
    <td>&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->BL_QUANTITY_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_QUANTITY_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_QUANTITY_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_QUANTITY_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_QUANTITY_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Ship Figure (AL)</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->BL_SFAL_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_SFAL_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_SFAL_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_SFAL_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->BL_SFAL_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_KLOBS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_KL15; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_BBLS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_METRICTON; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_LONGTON; ?></td>
  </tr>
  <tr>
    <td>% tase</td>
    <td>&nbsp;</td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_KLOBS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_KL15; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_BBLS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_METRICTON; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->BL_SFAL_LONGTON; ?></td>
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
    <td><strong>In Transit</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Ship Figure (AL)</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->SF_SFAL_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SF_SFAL_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SF_SFAL_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SF_SFAL_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SF_SFAL_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Ship Figure (BD)</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_TOV_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_TOV_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_TOV_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_TOV_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_TOV_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>% tase</td>
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
    <td><strong>Discharge Port</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Ship Figure (BD)</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Shore Received</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_KLOBS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_KL15; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_BBLS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_METRICTON; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_LONGTON; ?></td>
  </tr>
  <tr>
    <td>% tase</td>
    <td>&nbsp;</td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_KLOBS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_KL15; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_BBLS; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_METRICTON; ?></td>
    <td align="center"><?php //echo @$item->result()[0]->SFBD_GSV_LONGTON; ?></td>
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
    <td><strong>Outturn</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->SFBD_GSV_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Shore Received</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Differences</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>% tase</td>
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
    <td>ROB</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->ROBQ_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->ROBQ_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->ROBQ_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->ROBQ_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->ROBQ_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Free  Water</td>
    <td>&nbsp;</td>
    <td align="center"><?php echo @$item->result()[0]->FWAL_KLOBS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->FWAL_KL15; ?></td>
    <td align="center"><?php echo @$item->result()[0]->FWAL_BBLS; ?></td>
    <td align="center"><?php echo @$item->result()[0]->FWAL_METRICTON; ?></td>
    <td align="center"><?php echo @$item->result()[0]->FWAL_LONGTON; ?></td>
  </tr>
  <tr>
    <td>Density@15°C</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>API 60°F</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>S+W % VOL</td>
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
    <td><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Nomination Ship&rsquo;s Tanks</td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Non  Nom Ship&rsquo;s Tanks</td>
    <td>:</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>NOAD/LOP/SOF  Issued</td>
    <td>:</td>
    <td align="center"><?php echo @$item->result()[0]->RN_NOTICE_ISSUE; ?></td>
    <td align="center"><?php echo @$item->result()[0]->RN_LETTER_ISSUE; ?></td>
    <td align="center"><?php echo @$item->result()[0]->RN_STATEMENT_ISSUE; ?></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sample  Source for Analysis</td>
    <td>:</td>
    <td colspan="5"><?php echo @$item->result()[0]->SAMPLE_SOURCE; ?></td>
    </tr>
  <tr>
    <td>Draft Arrival</td>
    <td>:</td>
    <td colspan="2">Fwd&nbsp;<?php echo @$item->result()[0]->SC_ON_ARRIVAL_DRAFT_FWD; ?>&nbsp;M</td>
    <td colspan="2">Aft&nbsp;<?php echo @$item->result()[0]->SC_ON_ARRIVAL_DRAFT_AFT; ?>&nbsp;M</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>Draft Departure</td>
    <td>:</td>
    <td colspan="2">Fwd&nbsp;<?php echo @$item->result()[0]->SC_ON_DEPARTURE_DRAFT_FWD; ?>&nbsp;M</td>
    <td colspan="2">Aft&nbsp;<?php echo @$item->result()[0]->SC_ON_DEPARTURE_DRAFT_AFT; ?>&nbsp;M</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td>Bunker  Condition</td>
    <td>:</td>
    <td>Arrival </td>
    <td colspan="2">MFO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MFO_ON_ARRIVAL; ?></td>
    <td colspan="2">MDO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MDO_ON_ARRIVAL; ?></td>
    </tr>
   <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>Departure</td>
    <td colspan="2">MFO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MFO_ON_DEPARTURE; ?></td>
    <td colspan="2">MDO&nbsp;&nbsp;&nbsp;<?php echo @$item->result()[0]->BO_MDO_ON_DEPARTURE; ?></td>
    </tr>
   <tr>
    <td>Sea  Condition</td>
    <td>:</td>
    <td colspan="5"><?php echo @$item->result()[0]->SC; ?></td>
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
    <td>&nbsp;</td>
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
    <td>&nbsp;</td>
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
    <td>&nbsp;</td>
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
    <td>&nbsp;</td>
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
  
  
</table>
 </td></tr>
    </table></td>
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