<!-- begin #content -->
<div id="content" class="content">
	<!-- marquee text -->  
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	
	<!-- begin page-header -->
	<h1 class="page-header"><?php e($site_name); ?> Form Entry <small>Function to show data <?php e($site_name); ?></small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
		<!-- begin col-12 -->
		<div class="col-xs-12">
	        <!-- begin panel -->
            <?php echo $error_message; ?>
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="<?php echo base_url(); ?>index.php/form_entry/index" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-reply"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title"><?php e($site_name); ?> - Data Records</h4>
				</div>
				<div class="panel-body" style="overflow-x: hidden;">

					<table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
					url="<?php echo base_url(); ?>index.php/form_entry/list_rest"
					toolbar="#toolbar" pagination="true"
					rownumbers="true" fitColumns="true" singleSelect="true">
					<thead>
						<tr>
							<th field="INTERVENTION_NAME" width="20">Intervensi</th>
							<th field="PRODUCT_TYPE" width="20">Tipe</th>
							<th field="SELECT_CARGO" width="20">Cargo</th>
							<th field="KONTRAK" width="30">Kontrak</th>
							<th field="SPK" width="30">LOI/SPK/PO/WO/NOA</th>
							<th field="CTIME" width="30">Tanggal / Jam Input</th>
							<th field="FUNGSI" width="30" align="center">Fungsi</th>
						</tr>
					</thead>
				</table>
				<div id="toolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newData()">Add</a>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<script type="text/javascript">
 (function defer() {
	    if (window.jQuery) {
		$("input[name=FUNGSI]").hide();
		$("input[name=CTIME]").attr("placeholder","dd-mm-yyyy hh:mm:ss");
    } else {
       setTimeout(function() { defer() }, 2000);
    }
 })();
</script>