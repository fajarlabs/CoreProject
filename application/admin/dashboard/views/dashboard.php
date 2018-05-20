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
										<?php echo form_label('Cargo') ?><br/>
										<select name="produk" id="produk" style="height:33px;">	
											<option value="">--Choose--</option>
											<?php foreach($product as $pr){ ?>
												<option  value='<?php echo $pr->PRODUCT_ID ?>'><?php echo $pr->PRODUCT_NAME ?></option>
											<?php } ?>		
										</select>
									</td>
									<td>
										<?php echo form_label('Mode') ?><br/>
										<select id="intervensi" name="intervensi" style="height:33px;">
											<option value="">--Choose--</option>
											<?php foreach($intervensi as $itv){ ?>
												<option  value='<?php echo $itv->ID ?>'><?php echo $itv->INTERVENTION_NAME ?></option>
											<?php } ?>		
										</select>
									</td>	
									<td>
										<?php echo form_label('Clients'); ?><br/>
										<select id="client" name="client" style="height:33px;">
											<option value="">--Choose--</option>
											<?php 
											foreach($client as $ck => $vk){ 
												?>
												<option value="<?php echo strtolower($vk); ?>"><?php echo $vk; ?></option>
											<?php } ?>	
										</select>
									</td>		
									<td>
									<?php 
									echo form_label('Area') ?><br/>
										<select onchange="get_port_terminal(this)" id="lokasi_kerja" name="lokasi_kerja" style="height:33px;">
											<option  value='0'>--Choose--</option>
									<?php foreach($area as $ar){ ?>
												<option  value='<?php echo $ar->AREA ?>'><?php echo $ar->AREA ?></option>
											<?php } ?>		
										</select>
									</td>
									<td>
									<?php 
									echo form_label('Port Terminal') ?><br/>
										<select id="port_terminal" name="port_terminal" style="height:33px;">
											<option  value='0'>--Choose--</option>	
										</select>
									</td>
									<td >
									<?php echo form_label('Month') ?><br/>
									<select id="bulan" name="bulan" style="height:33px;" required >
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
										<td style="width:400px;">
										<?php echo form_label('Year') ?><br/>
										<?php 
											//$dtbarge=date("m/d/Y", strtotime($row->DATE_LOADING_BARGE));
											echo form_input(array('type' => 'text', 'readonly' => 'true','maxlength' => '4', 'name' => 'tahun','class' => 'thn_picker','id' => 'tahun', 'style' => ' min-width:100px !important;width:100px;height:33px;color:#000 !important;', 'value' => '')); ?>
											<a style="height:33px;margin-top:-3px;margin-left:5px;" href="#" onclick="$(this).closest('form').submit()" class="btn btn-primary"><i class="fa fa-dashboard"></i> Lihat</a>

											<a  style="display:none" onclick="export_excel()" id="btn_excel" href="#"  class="btn btn-success"><i class="fa fa-file"></i> Export Excel</a>
									</td>					
								</tr>
							</table>
							<?php echo form_close(); ?>
							<br/>

							<table id="div_chart" style="display:none;width:100%;margin-top:3px;border-collapse: separate;border-spacing: 8px;border:4px solid #ccc;border-radius:5px;">
								<tr>
									<td><div style="width:500px;height:400px;" id="chart_pie">No Data</div></td>
									<td><div style="width:500px;height:400px;" id="chart_bar">No Data</div></td>
								</tr>
								<tr>
									<td colspan="2">
										<table>
											<tr>
												<td><div style="width:950px;height:400px;" id="chart_line">No Data</div></td>
												<td>
													<div style="padding: 13px;border: 3px solid black;margin-bottom: 250px;margin-left: 100px;">
														X  : <span id="x_lokasi"></span> <br/>
														Y  : <span id="y_sl_gsv_klobs">-</span>  <br/>
														Frekuensi : <span id="frekuensi_val"></span>
													</div>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>

						</div>
					</div>                
				</div>
				<!-- end col-8 -->
			</div>
	</div>

	<script type="text/javascript">
		function get_port_terminal(e) {
			$('select[name="port_terminal"]').find('option').remove().end();
			var area = $(e).val();
			$.getJSON('<?php echo base_url(); ?>index.php/form_entry/grab_port_terminal/'+area,function(json){
				$('select[name="port_terminal"]').append($('<option>', { 
						value: 0,
						text : '--Choose--' 
					}));
				for(var i = 0; i < json.length; i++) {
					$('select[name="port_terminal"]').append($('<option>', { 
						value: json[i],
						text : json[i] 
					}));
				}
			});
		}

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
	 	    		
	 	    		$.get('<?php echo base_url(); ?>index.php/dashboard/chart_rest/?'+$(this).serialize(),function(data_json){


	 	    			$("#btn_excel").show();
	 	    			$("#div_chart").show();
	 	    			var arr = JSON.parse(JSON.stringify(data_json));
	 	    			var my_json="";
	 				    Object.keys(arr).forEach(function(key, value) {
	 				      	
	 				      	 Object.keys(arr[key]).forEach(function(val) {

		 				      	 	if(key){
		 				      	 		my_json += '{ "name": "'+key+'",';	
		 				      	 	}
			 				      	 	var sum_data=0;
			 				      	 	var total_data=0;
								        arr[key][val].forEach(function(data) {
								        	sum_data += parseFloat(data);
								        	total_data++;
								        });
								        var hasil = sum_data/total_data;
								        var num = hasil.toFixed(3);
							        if(num) {
							        	my_json  +=  '"y" : '+num+' },';	
						       		}
						      });
					    });

	 				    my_json = my_json.replace(/(^[,\s]+)|([,\s]+$)/g, '');
	 				    my_json = "["+my_json+"]";

	 				    var series = $("#intervensi").find("option:selected").text();

 				        //Pie Chart
 				        column_pie(my_json,'chart_pie','','Loss Statistics Information',series);

 				        //Bar Chart
 				        column_bar(my_json,'chart_bar','','Total Losses Information',series);
					
						//Line Chart
						// dapatkan filter area global
						var re_produk        = $('select[name="produk"]').val();
						var re_intervensi    = $('select[name="intervensi"]').val();
						var re_client        = $('select[name="client"]').val();
						var re_area          = $('select[name="lokasi_kerja"]').val();
						var re_port_terminal = $('select[name="port_terminal"]').val();
						var re_bulan         = $('select[name="bulan"]').val();
						var re_tahun         = $('select[name="tahun"]').val();

						$.getJSON('<?php echo base_url(); ?>index.php/form_entry/grab_chart_port_terminal/?produk='+re_produk+'&intervensi='+re_intervensi+'&client='+re_client+'&area='+re_area+'&port_terminal='+re_port_terminal+'bulan='+re_bulan+'tahun='+re_tahun,function(json){
							// munculkan chart line
							var categorie_areas = [];
							for(var i = 0; i < json.length; i++) {
								categorie_areas.push(json[i]);
							}
							column_line(my_json,'chart_line',categorie_areas,'Losses Periode',series);
						});

						var lok_kerja = $("#lokasi_kerja").val();
						if(lok_kerja=="0"){
							$("#x_lokasi").html("-");
							
						}
						else {
							var place_data = $("#lokasi_kerja").val();
							$("#x_lokasi").html(place_data);
						}
						
						//SUM SL_GSV_KLOBS
						$.ajax({
								url: '<?php echo base_url(); ?>index.php/dashboard/sum_sl_gsv_klobs',
								type: 'POST',
								data:  new FormData($('#chart_form')[0]),
								processData: false,
                                contentType: false,
								success: function(mydata) {
									 $("#y_sl_gsv_klobs").html(mydata);
								}
						});
						
						//Count Frekuensi
						$.ajax({
								url: '<?php echo base_url(); ?>index.php/dashboard/count_frekuensi',
								type: 'POST',
								data:  new FormData($('#chart_form')[0]),
								processData: false,
                                contentType: false,
								success: function(mydata) {
									 $("#frekuensi_val").html(mydata);
								}
						});
						
						
						
	 	    			var data_bln = $("#bulan").val();
	 	    			bln = data_bln;
	 	    			if(data_bln<10){
	 	    				bln = data_bln.substr(1);
	 	    			}

	 	    		

 				       	
 				       	//Double Line Chart
 				        //column_double_line('','chart_double_line','','Loss Statistics Percentage',series);


	 	    			$(".tab-content").show();

	 	    		});
	 	    		return false;
	 	    	}); 
	        } else {
	           setTimeout(function() { defer() }, 3000);
	        }
		 })();

		function column_pie(mydata,chart_id,categories,title,series_name) {
			mydata = JSON.parse(mydata);
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
				        name: series_name,
				        colorByPoint: true,
				        data: mydata
				    }]
				});
		}
		
		function column_bar(mydata,chart_id,categories,title,series_name) {
				mydata = JSON.parse(mydata);
				Highcharts.chart(chart_id, {
				    chart: {
				        type: 'column'
				    },
				    title: {
				        text: title
				    },
				    xAxis: {
				        type: 'category'
				    },
				    yAxis: {
				        title: {
				            text: 'Value'
				        }
				    },
				    credits: {
						enabled: false
					},
				    legend: {
				        enabled: false
				    },
				    plotOptions: {
				        series: {
				            borderWidth: 0,
				            dataLabels: {
				                enabled: true,
				                format: '{point.y:0f}'
				            }
				        }
				    },

				    tooltip: {
				        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
				        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:0f}</b><br/>'
				    },

				    "series": [
				        {
				            "name": series_name,
				            "colorByPoint": true,
				            "data":  mydata
				        }
				    ]
				});
		}
		
		function column_line(mydata,chart_id,categories,title,series_name) { 
			//mydata = JSON.parse(mydata);
			Highcharts.chart(chart_id, {
				chart: {
					type: 'line'
				},
				title: {
					text: 'Area Losses Information'
				},
				subtitle: {
					text: 'Source: Data Pusat'
				},
				xAxis: {
					categories: categories
				},
				yAxis: {
					title: {
						text: 'KL (Kilo Liter)'
					}
				},
				plotOptions: {
					line: {
						dataLabels: {
							enabled: true
						},
						enableMouseTracking: false
					}
				},
				series: [{
					name: 'MFO',
					data: [7.0, 6.9, 9.5]
				},{
					name: 'HSD',
					data: [0.0, 0.0, 0.0]
				}]
			});
		}
		
		function column_double_line(data,chart_id,categories,title){
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
		function export_excel(){
			var  produk 	= $("#produk").val();
			var  intervensi = $("#intervensi").val();
			var  lokasi_kerja = $("#lokasi_kerja").val();
			var  client = $("#client").val();
			var  bulan = $("#bulan").val();
			var  tahun = $("#tahun").val();


			var form = document.createElement("form");
		    form.setAttribute("method", "POST");
		    form.setAttribute("target", "_blank");
		    form.setAttribute("action", "<?php echo base_url() ?>index.php/dashboard/export_excel");

		   
	            var hiddenField1 = document.createElement("input");
	            hiddenField1.setAttribute("type", "hidden");
	            hiddenField1.setAttribute("name", "produk");
	            hiddenField1.setAttribute("value", produk); 

	            var hiddenField2 = document.createElement("input");
	            hiddenField2.setAttribute("type", "hidden");
	            hiddenField2.setAttribute("name", "intervensi");
	            hiddenField2.setAttribute("value", intervensi);

	            var hiddenField3 = document.createElement("input");
	            hiddenField3.setAttribute("type", "hidden");
	            hiddenField3.setAttribute("name", "lokasi_kerja");
	            hiddenField3.setAttribute("value", lokasi_kerja);

	            var hiddenField4 = document.createElement("input");
	            hiddenField4.setAttribute("type", "hidden");
	            hiddenField4.setAttribute("name", "client");
	            hiddenField4.setAttribute("value", client);
				
				var hiddenField5 = document.createElement("input");
	            hiddenField5.setAttribute("type", "hidden");
	            hiddenField5.setAttribute("name", "bulan");
	            hiddenField5.setAttribute("value", bulan);

	            var hiddenField6 = document.createElement("input");
	            hiddenField6.setAttribute("type", "hidden");
	            hiddenField6.setAttribute("name", "tahun");
	            hiddenField6.setAttribute("value", tahun);

		   	  form.appendChild(hiddenField1);
		   	  form.appendChild(hiddenField2);
		   	  form.appendChild(hiddenField3);
		   	  form.appendChild(hiddenField4);
		   	  form.appendChild(hiddenField5);
		   	  form.appendChild(hiddenField6);

		    document.body.appendChild(form);
		    form.submit();

		}
		</script>