<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
    <?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Personil Management "<?php echo $jenis ?>" <small>Function to create Personil "<?php echo $jenis ?>"</small></h1>
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
                    	<!--<a href="<?php echo base_url(); ?>index.php/cv/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>-->
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Personil Management - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/Personil/page_list_rest_detail/<?php echo $id?>"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
                                <th field="TYPE_LOCATION" width="20">Area</th>
                                <th field="NAMA" width="10">NAMA</th>
                                <th field="EMAIL" width="10">Email</th>
				            </tr>
				        </thead>
				    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newCv(<?php echo $id ?>)">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editCv()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyCv(<?php echo $id ?>)">Remove</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>