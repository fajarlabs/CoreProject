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
			<h1 class="page-header">Standard Reference</h1>
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
							<h4 class="panel-title">Standard Reference</h4>
						</div>
						<div id="destination_table" class="panel-body" style="padding:5px;">
							<center><img src="<?php echo base_url() ?>img/spiner.gif"></center>
						</div>
					</div>                
				</div>
				<!-- end col-8 -->
			</div>
	</div>

	<script type="text/javascript">
		function create_table(title,content,file,icon) {
        return '<table style="border-bottom: 1px dotted #666;margin-top:5px;margin-top:5px;margin-bottom:5px;width: 100%;border-spacing: 0px 25px 25px;">'+
						'<tr>'+
							'<td align="center" style="padding-bottom:10px;width:100px;padding-left:5px;" rowspan="2">'+
								'<img style="width:50px" src="<?php echo base_url() ?>assets/public/images/'+icon+'" />'+
							'</td>'+
							'<td style="padding-left:5px;"><a href="'+file+'"><span style="font-size:17px;">'+title+'</span></a></td>'+
						'</tr>'+
						'<tr>'+
							'<td style="padding-left:5px;">'+
								'<small>ukuran file : 23kb, tipe file : pdf</small><br />'+
								content+
							'</td>'+
						'</tr>'+
					'</table>';		
		}
		(function defer() {
        if (window.jQuery) {
        	$.get("<?php echo base_url() ?>index.php/SR_Rest/get_all_with_pagination",function (json) {
        		if(json.length > 0) {
        			$("#destination_table").empty();
        			for(var i = 0; i < json.length; i++) {
        				$("#destination_table").append(create_table(json[i].STD_REF,json[i].CONTENT_INFO,"<?php echo base_url() ?>uploads/stdref_files/"+json[i].UPLOAD_FILE,"pdf.png"));
        			}
        		}
        	});
			
        } else {
           setTimeout(function() { defer() }, 2000);
        }
    })();
		</script>