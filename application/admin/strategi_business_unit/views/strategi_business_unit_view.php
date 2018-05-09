<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
    <?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Strategi Business Unit Management <small>Function to create strategi business unit</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/strategi_business_unit/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Strategi Business Unit - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/strategi_business_unit/page_list_rest"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
                                <th field="NAMA_SBU" width="30">Strategi Business Unit</th>
                                <th field="SBU_DESCRIPTION" width="30">Description</th>
                                <th field="CREATED_DATE" width="30">Created Date</th>
                                <th field="UPDATE_DATE" width="30">Last Update</th>
				            </tr>
				        </thead>
				    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newCv()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editCv()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyCv()">Remove</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>