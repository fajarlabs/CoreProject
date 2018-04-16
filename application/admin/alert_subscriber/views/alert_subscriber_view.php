<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Alert Subscriber Management <small>Function for notify client about losses and other information.</small></h1>
	<!-- end page-header -->

    <!-- begin front message -->
    <?php echo (isset($front_message) ? $front_message : ""); ?>
    <!-- end front message -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <?php echo $error_message; ?>
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                        <a href="<?php echo base_url(); ?>index.php/alert_subscriber/" class="btn btn-xs btn-icon btn-circle btn-primary"><i class="fa fa-reply"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">SMS Alert Management - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/alert_subscriber/subscriber_rest"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
				                <th field="FULLNAME" width="30">Full Name</th>
                                <th field="PHONE" width="30">Phone Number</th>
                                <th field="LAST_SEND" width="30">Last Send</th>
                                <th field="SUBSCRIBE" width="30">Subscribe</th>
				            </tr>
				        </thead>
				    </table>
                    <div id="toolbar">
                        <a href="<?php echo base_url(); ?>index.php/alert_subscriber/add" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add_subscriber()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" plain="true" onclick="subscribe()">Subscribe</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-no" plain="true" onclick="block()">Block</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroySubscriber()">Remove</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>