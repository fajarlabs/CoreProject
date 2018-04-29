		 <style> 
			 #displayed {
			    margin: 0;
			    position: absolute;
			    top: 50%;
			    left: 50%;
			    margin-right: -50%;
			    transform: translate(-50%, -50%) }
			}
		 </style> 
		
		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<?php echo create_breadcrumb('Home'); ?>
			<!-- end breadcrumb -->
			
			<!-- begin page-header -->
			<h1 class="page-header">Dashboard <small>contains a collection of information about project statistics</small></h1>
			<!-- end page-header -->

			<!-- begin row -->
			<div class="row">
				<!-- begin col-12 -->
				<div class="col-md-12">
					<div class="panel panel-inverse" data-sortable-id="index-1">
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
								<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
							</div>
							<h4 class="panel-title">Dashboard Chart</h4>
						</div>
						<div class="panel-body" style="padding:5px;">
		                	<?php echo form_open('',array('id' => 'chart_form')); ?>
							<table style="width:100%;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
								<tr>
									<td >
										<?php echo form_label('Product') ?><br/>
										<select name="produk" style="height:33px;">	
											<option value="">--Choose--</option>
											<?php foreach($product as $pr){ ?>
												<option  value='<?php echo $pr->PRODUCT_ID ?>'><?php echo $pr->PRODUCT_NAME ?></option>
											<?php } ?>		
										</select>
									</td>
									<td>
										<?php echo form_label('Intervention') ?><br/>
										<select name="intervensi" style="height:33px;">
											<option value="">--Choose--</option>
											<?php foreach($intervensi as $itv){ ?>
												<option  value='<?php echo $itv->ID ?>'><?php echo $itv->INTERVENTION_NAME ?></option>
											<?php } ?>		
										</select>
									</td>	
									<td>
										<?php echo form_label('Clients'); ?><br/>
										<select name="client" style="height:33px;">
											<option value="">--Choose--</option>
											<?php 
											$ct =  $client[0]->CLIENTS;
											$clnt = json_decode($ct);
											foreach($clnt as $clt){ ?>
												<option value="<?php echo $clt ?>"><?php echo $clt ?></option>
											<?php } ?>	
										</select>
									</td>		
									<td>
									<?php 
									echo form_label('Job Location') ?><br/>
										<select name="lokasi_kerja" style="height:33px;">
											<option  value='0'>--Choose--</option>
									<?php foreach($area as $ar){ ?>
												<option  value='<?php echo $ar->AREA ?>'><?php echo $ar->AREA ?></option>
											<?php } ?>		
										</select>
									</td>
									<td >
									<?php echo form_label('Month') ?><br/>
									<select name="bulan" class="form-control" required="">
										<option value="">--Choose--</option>
										<option value="01">January</option>
										<option value="02">February</option>
										<option value="03">March</option>
										<option value="04">April</option>
										<option value="05">May</option>
										<option value="06">June</option>
										<option value="07">July</option>
										<option value="08">August</option>
										<option value="09">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
										</td>
										<td style="width:300px;">
										<?php echo form_label('Year') ?><br/>
										<?php 
											//$dtbarge=date("m/d/Y", strtotime($row->DATE_LOADING_BARGE));
											echo form_input(array('type' => 'text', 'readonly' => 'true','maxlength' => '4', 'name' => 'tahun','class' => 'thn_picker', 'style' => ' min-width:100px !important;width:100px;height:33px;color:#000 !important;', 'value' => '')); ?>
											<a style="height:33px;margin-top:-3px;margin-left:5px;" href="#" onclick="$(this).closest('form').submit()" class="btn btn-primary"><i class="fa fa-dashboard"></i> Lihat</a>
									</td>					
								</tr>
							</table>
							<?php echo form_close(); ?>
							<br/>
							<ul style="display:none;" id="tabs_menu" class="nav nav-tabs">
							  <li class="active"><a data-toggle="tab" href="#menu_klobs">KL @obs</a></li>
							  <li><a data-toggle="tab" href="#menu_kl15c">KL @15° C</a></li>
							  <li><a data-toggle="tab" href="#menu_bbls60f">BBLS @60°F</a></li>
							  <li><a data-toggle="tab" href="#menu_longton">Long Ton</a></li>
							  <li><a data-toggle="tab" href="#menu_metric_ton">Metric Ton</a></li>
							</ul>

							<div style="display:none;" class="tab-content">
							    <div id="menu_klobs" class="tab-pane fade in active">
								    <table id="div_chart_kl_obs" style="display:none;width:100%;margin-top:3px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
										<tr>
											<td><div style="width:500px;height:400px;" id="chart_kl_obs_1">No Data</div></td>
											<td><div style="width:500px;height:400px;" id="chart_kl_obs_2">No Data</div></td>
										</tr>
										<tr>
											<td colspan="2">
												<div style="width:1000px;height:400px;" id="chart_kl_obs_3">No Data</div>
											</td>
										</tr>
									</table>
							    </div>
							    <div id="menu_kl15c" class="tab-pane fade">
							   		<table id="div_chart_kl15c" style="display:none;width:100%;margin-top:3px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
										<tr>
											<td><div style="width:500px;height:400px;" id="chart_kl15c_1">No Data</div></td>
											<td><div style="width:500px;height:400px;" id="chart_kl15c_2">No Data</div></td>
										</tr>
										<tr>
											<td colspan="2">
												<div style="width:1000px;height:400px;" id="chart_kl15c_3">No Data</div>
											</td>
										</tr>
									</table>
							    </div>
							  <div id="menu_bbls60f" class="tab-pane fade">
							        <table id="div_chart_bbls60f" style="display:none;width:100%;margin-top:3px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
										<tr>
											<td><div style="width:500px;height:400px;" id="chart_bbls60f_1">No Data</div></td>
											<td><div style="width:500px;height:400px;" id="chart_bbls60f_2">No Data</div></td>
										</tr>
										<tr>
											<td colspan="2">
												<div style="width:1000px;height:400px;" id="chart_bbls60f_3">No Data</div>
											</td>
										</tr>
									</table>
							  </div>
							  <div id="menu_longton" class="tab-pane fade">
							    <table id="div_chart_longton" style="display:none;width:100%;margin-top:3px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
										<tr>
											<td><div style="width:500px;height:400px;" id="chart_longton_1">No Data</div></td>
											<td><div style="width:500px;height:400px;" id="chart_longton_2">No Data</div></td>
										</tr>
										<tr>
											<td colspan="2">
												<div style="width:1000px;height:400px;" id="chart_longton_3">No Data</div>
											</td>
										</tr>
								</table>
							  </div>
							  <div id="menu_metric_ton" class="tab-pane fade">
							     <table id="div_chart_metric_ton" style="display:none;width:100%;margin-top:3px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
										<tr>
											<td><div style="width:500px;height:400px;" id="chart_metric_ton_1">No Data</div></td>
											<td><div style="width:500px;height:400px;" id="chart_metric_ton_2">No Data</div></td>
										</tr>
										<tr>
											<td colspan="2">
												<div style="width:1000px;height:400px;" id="chart_metric_ton_3">No Data</div>
											</td>
										</tr>
								</table>
							  </div>
							</div>
						</div>
					</div>                
				</div>
				<!-- end col-8 -->
			</div>
	</div>

	<script type="text/javascript">
		 (function defer() {
	 	    if (window.jQuery) {
	 	    		var mousetimeout;
					var screensaver_active = false;
					var idletime = <?php echo get_app_ss_timeout()*60; ?>;

					function show_screensaver(){
						$('#displayed').show();
						$('#page-container').hide();
						screensaver_active = true;
						screensaver_animation();
					}
					function stop_screensaver(){
						$('#displayed').hide();
						$('#page-container').show();
						screensaver_active = false;
					}
					$(document).mousemove(function(){
						clearTimeout(mousetimeout);
						if (screensaver_active) {
							stop_screensaver();
						}
						mousetimeout = setTimeout(function(){
							show_screensaver();
						}, 1000 * idletime); // 5 secs			
					});
					function screensaver_animation(){
						if (screensaver_active) {
							$('#displayed').show();
							$('#page-container').hide();
							screensaver_animation;
						}
					}

		 	    	$('.thn_picker').datepicker({
					    format: "yyyy",
					    viewMode: "years", 
					    minViewMode: "years"
					});

	 	    	$("#chart_form").on("submit",function(e) {
	 	    		var tahun = $('input[name="tahun"');
	 	    		var tahun_int = parseInt(tahun.val());
	 	    		if(tahun_int < 2018) {
	 	    			alert("Data not found!");
	 	    			return false;
	 	    		}
	 	    		
	 	    		$.get('<?php echo base_url(); ?>index.php/dashboard/chart_rest/?'+$(this).serialize(),function(json){
	 	    			
	 	    			$("#tabs_menu").show();
	 	    			$(".tab-content").show();

	 	    			$("#div_chart_kl_obs").show();
	 	    			$("#div_chart_kl15c").show();
	 	    			$("#div_chart_bbls60f").show();
	 	    			$("#div_chart_longton").show();
	 	    			$("#div_chart_metric_ton").show();

						var categories1 = ['R1_KLOBS','R1_KL15','R1_BBLS','R1_LONGTON','R1_METRICTON','R1_VEF_KLOBS','R1_VEF_KL15','R1_VEF_BBLS','R1_VEF_LONGTON','R1_VEF_METRICTON'];
						var title1 = 'Statistik Data (R1) Loading';
	 	    			//columnNegative(json[0],"chart1",categories1,title1);

	 	    			var categories2 = ['SLVS_BOL_R1_KLOBS','SLVS_BOL_R1_KL15','SLVS_BOL_R1_BBLS','SLVS_BOL_R1_LONGTON','SLVS_BOL_R1_METRICTON','SFAL_VS_SFBD_R2_KLOBS','SFAL_VS_SFBD_R2_KL15','SFAL_VS_SFBD_R2_BBLS','SFAL_VS_SFBD_R2_LONGTON','SFAL_VS_SFBD_R2_METRICTON','SFBD_VS_SR_R3_KLOBS','SFBD_VS_SR_R3_KL15','SFBD_VS_SR_R3_BBLS','SFBD_VS_SR_R3_LONGTON','SFBD_VS_SR_R3_METRICTON','SR_VS_BOL_R4_KLOBS','SR_VS_BOL_R4_KL15','SR_VS_BOL_R4_BBLS','SR_VS_BOL_R4_LONGTON','SR_VS_BOL_R4_METRICTON'];
	 	    			var title2 = 'Statistik Data (R1,R2,R3,R4) Discharge';

	 	    			//columnNegative(json[1],"chart2",categories2,title2);

	 	    			column_pie('','chart_kl_obs_1','','Loss Statistics Percentage');
	 	    			column_curva('','chart_kl_obs_2','','Statistics');
	 	    			chart_dobule_line('','chart_kl_obs_3','','Statistics');

	 	    			column_pie('','chart_kl15c_1','','Loss Statistics Percentage');
	 	    			column_curva('','chart_kl15c_2','','Statistics');
	 	    			chart_dobule_line('','chart_kl15c_3','','Statistics');

	 	    			column_pie('','chart_bbls60f_1','','Loss Statistics Percentage');
	 	    			column_curva('','chart_bbls60f_2','','Statistics');
	 	    			chart_dobule_line('','chart_bbls60f_3','','Statistics');

	 	    			column_pie('','chart_longton_1','','Loss Statistics Percentage');
	 	    			column_curva('','chart_longton_2','','Statistics');
	 	    			chart_dobule_line('','chart_longton_3','','Statistics');

	 	    			column_pie('','chart_metric_ton_1','','Loss Statistics Percentage');
	 	    			column_curva('','chart_metric_ton_2','','Statistics');
	 	    			chart_dobule_line('','chart_metric_ton_3','','Statistics');

	 	    		});
	 	    		return false;
	 	    	}); 
	        } else {
	           setTimeout(function() { defer() }, 2000);
	        }
		 })();

		 function columnNegative(data,chart_id,categories,title) {
			Highcharts.chart(chart_id, {
			    chart: {
			        type: 'column'
			    },
			    title: {
			        text: title
			    },
			    xAxis: {
			        categories: categories
			    },
			    credits: {
			        enabled: false
			    },
			    series: data
			});
		 }

		 function chart_dobule_line(data,chart_id,categories,title){
				Highcharts.chart(chart_id, {
				    chart: {
				        type: 'spline'
				    },
				    title: {
				        text: 'Detail Transaction'
				    },
				    credits: {
				        enabled: false
				    },
				    xAxis: {
				        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
				            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
				    },
				    yAxis: {
				        title: {
				            text: 'Liter (x1000)'
				        },
				        labels: {
				            formatter: function () {
				                return this.value;
				            }
				        }
				    },
				    tooltip: {
				        crosshairs: true,
				        shared: true
				    },
				    plotOptions: {
				        spline: {
				            marker: {
				                radius: 4,
				                lineColor: '#666666',
				                lineWidth: 1
				            }
				        }
				    },
				    series: [{
				        name: 'Receive',
				        marker: {
				            symbol: 'square'
				        },
				        data: [70.340, 106.9, 109.5, 114.5, 0.0,0.0, 0.0,0.0, 0.0, 0.0, 0.0,0.0]

				    }, {
				        name: 'Sending',
				        marker: {
				            symbol: 'diamond'
				        },
				        data: [74.2, 107.3, 110.32, 115.9, 0.0,0.0, 0.0,0.0, 0.0, 0.0, 0.0,0.0]
				    }]
				});
		 }

		 function chart_line(data,chart_id,categories,title){
				Highcharts.chart(chart_id, {
				    chart: {
				        type: 'spline'
				    },
				    title: {
				        text: 'Fuel Transaction Statistics'
				    },
				    credits: {
				        enabled: false
				    },
				    xAxis: {
				        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
				            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
				    },
				    yAxis: {
				        title: {
				            text: 'Liter (x1000)'
				        },
				        labels: {
				            formatter: function () {
				                return this.value;
				            }
				        }
				    },
				    tooltip: {
				        crosshairs: true,
				        shared: true
				    },
				    plotOptions: {
				        spline: {
				            marker: {
				                radius: 4,
				                lineColor: '#666666',
				                lineWidth: 1
				            }
				        }
				    },
				    series: [{
				        name: 'Sending',
				        marker: {
				            symbol: 'diamond'
				        },
				        data: [70.340, 106.9, 109.5, 114.5, 0.0,0.0, 0.0,0.0, 0.0, 0.0, 0.0,0.0]
				    }]
				});
		 }

		 function column_curva(data,chart_id,categories,title) {
		 	Highcharts.chart(chart_id, {
			    chart: {
			        type: 'area',
			        spacingBottom: 30
			    },
			    title: {
			        text: title
			    },
			    xAxis: {
			        categories: categories
			    },
			    credits: {
			        enabled: false
			    },
			    yAxis: {
			        title: {
			            text: 'Liter'
			        },
			        labels: {
			            formatter: function () {
			                return this.value;
			            }
			        }
			    },
			    tooltip: {
			        formatter: function () {
			            return '<b>' + this.series.name + '</b><br/>' +
			                this.x + ': ' + this.y;
			        }
			    },
			    plotOptions: {
			        area: {
			            fillOpacity: 0.5
			        }
			    },
			    series: [{
			        name: 'Target',
			        data: [70340, 106900, 109000, 114000, 0.0,0.0, 0.0,0.0, 0.0, 0.0, 0.0,0.0]
			    }, {
			        name: 'Receive',
			        data: [69030, 105800, 108980, 113300, 0.0,0.0, 0.0,0.0, 0.0, 0.0, 0.0,0.0]
			    }]
			});
		 }

		 function column_pie(data,chart_id,categories,title) {
		 	Highcharts.chart(chart_id, {
				    chart: {
				        plotBackgroundColor: null,
				        plotBorderWidth: null,
				        plotShadow: false,
				        type: 'pie'
				    },
				    title: {
				        text: title
				    },
				    credits: {
				        enabled: false
				    },
				    tooltip: {
				        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				    },
				    plotOptions: {
				        pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            dataLabels: {
				                enabled: true,
				                format: '<b>{point.name}</b>: {point.percentage:.1f}%',
				                style: {
				                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
				                }
				            }
				        }
				    },
				    series: [{
				        name: 'Discharge',
				        colorByPoint: true,
				        data: [{
				            name: 'R1',
				            y: 11.84
				        }, {
				            name: 'R2',
				            y: 10.85
				        }, {
				            name: 'R3',
				            y: 4.67
				        }, {
				            name: 'R4',
				            y: 4.18
				        }]
				    }]
				});
		 }

	
		</script>