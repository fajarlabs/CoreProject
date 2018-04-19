			<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<?php echo create_breadcrumb('Home'); ?>
			<!-- end breadcrumb -->
			
			<!-- begin page-header -->
			<h1 class="page-header">Dashboard <small>berisi kumpulan informasi tentang statistik proyek</small></h1>
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
									<td style="width:190px;">
									<?php echo form_label('Tanggal Awal') ?>
									<?php 
										//$dtbarge=date("m/d/Y", strtotime($row->DATE_LOADING_BARGE));
											echo form_input(array('type' => 'text', 'name' => 'date_start','class' => 'datepicker', 'style' => ' min-width:100px !important;width:100px;height:33px;color:#000 !important;', 'value' => '')); ?>
										</td>
										<td style="width:190px;">
										<?php echo form_label('Tanggal Akhir') ?>
										<?php 
											//$dtbarge=date("m/d/Y", strtotime($row->DATE_LOADING_BARGE));
											echo form_input(array('type' => 'text', 'name' => 'date_end','class' => 'datepicker', 'style' => ' min-width:100px !important;width:100px;height:33px;color:#000 !important;', 'value' => '')); ?>
										</td>
										<td style="width:150px;">
											<?php echo form_label('Produk') ?>
											<input type="text" name="produk" style="width:100px;height:33px;" />
										</td>
										<td style="width:150px;">
											<?php echo form_label('Vessel') ?>
											<input type="text" name="vessel" style="width:100px;height:33px;" />
										</td>
										<td>
										<?php echo form_label('Pilih Lokasi Kerja') ?>
										<?php
										$site_array = array();
										$site_array[0] = "--Pilih--";
										if($sites->num_rows() > 0) {
											foreach($sites->result() as $row) {
												$site_array[$row->CLIENT_SITE_ID] = $row->CLIENT_SITE_NAME;
											}
										}
										?>
											<select name="site_id" style="height:33px;">
												<?php foreach($site_array as $key => $val) {
													echo '<option value="'.$key.'">'.$val.'</option>';
												}?>
											</select>
										<a style="height:33px;margin-top:-3px;margin-left:5px;" href="#" onclick="$(this).closest('form').submit()" class="btn btn-primary"><i class="fa fa-dashboard"></i> Lihat</a>
									</td>						
								</tr>
							</table>
							<?php echo form_close(); ?>

							<!-- Tempat Chart -->
							<table id="div_chart_1" style="display:none;width:100%;margin-top:3px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
								<tr>
									<td><div style="width:500px;height:400px;" id="chart3">No Data</div></td>
									<td><div style="width:500px;height:400px;" id="chart4">No Data</div></td>
								</tr>
								<tr>
									<td><div style="width:500px;height:400px;" id="chart1">No Data</div></td>
									<td><div style="width:500px;height:400px;" id="chart2">No Data</div></td>
								</tr>
							</table>
						</div>
					</div>                
				</div>
				<!-- end col-8 -->
			</div>
	</div>

	<script type="text/javascript">
		 (function defer() {
	 	    if (window.jQuery) {
	 	    	$("#chart_form").on("submit",function(e) {
	 	    		$.get('<?php echo base_url(); ?>index.php/dashboard/chart_rest/?'+$(this).serialize(),function(json){
	 	    			// show division
	 	    			$("#div_chart_1").show();
	 	    			$("#div_chart_2").show();

						var categories1 = ['R1_KLOBS','R1_KL15','R1_BBLS','R1_LONGTON','R1_METRICTON','R1_VEF_KLOBS','R1_VEF_KL15','R1_VEF_BBLS','R1_VEF_LONGTON','R1_VEF_METRICTON'];
						var title1 = 'Statistik Data (R1) Loading';
	 	    			columnNegative(json[0],"chart1",categories1,title1);

	 	    			var categories2 = ['SLVS_BOL_R1_KLOBS','SLVS_BOL_R1_KL15','SLVS_BOL_R1_BBLS','SLVS_BOL_R1_LONGTON','SLVS_BOL_R1_METRICTON','SFAL_VS_SFBD_R2_KLOBS','SFAL_VS_SFBD_R2_KL15','SFAL_VS_SFBD_R2_BBLS','SFAL_VS_SFBD_R2_LONGTON','SFAL_VS_SFBD_R2_METRICTON','SFBD_VS_SR_R3_KLOBS','SFBD_VS_SR_R3_KL15','SFBD_VS_SR_R3_BBLS','SFBD_VS_SR_R3_LONGTON','SFBD_VS_SR_R3_METRICTON','SR_VS_BOL_R4_KLOBS','SR_VS_BOL_R4_KL15','SR_VS_BOL_R4_BBLS','SR_VS_BOL_R4_LONGTON','SR_VS_BOL_R4_METRICTON'];
	 	    			var title2 = 'Statistik Data (R1,R2,R3,R4) Discharge';
	 	    			columnNegative(json[1],"chart2",categories2,title2);

	 	    			column_curva('','chart3','','Statistik');
	 	    			column_pie('','chart4','','Statistik Data (R1,R2,R3,R4) Discharge');
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
			        data: [100000, 120000, 6000, 500000, 320000, 400000, 140000,480000]
			    }, {
			        name: 'Diterima',
			        data: [8000, 120000, 5000, 300000, 120000, 200000, 9000,430000]
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