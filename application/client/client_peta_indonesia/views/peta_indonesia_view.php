<!-- begin #content -->
<div id="content" class="content">
    <!-- marquee text -->
    <footer class="footer" style="margin: -21px -25px 5px -25px;">
            <div class="marquee-sibling">
            <i class="fa fa-feed"></i> Info
            </div>
             <ul id="webTicker"></ul>
    </footer>   

	<!-- begin breadcrumb -->
	<?php echo (isset($breadcrumb) ? $breadcrumb : ""); ?>
	<!-- end breadcrumb -->
	
	<!-- begin page-header -->
	<h1 class="page-header"><?php e(get_client_site_name()); ?> Peta Indonesia <small>Function to show maps & point <?php e(get_client_site_name()); ?></small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-8">
	        <!-- begin panel -->
            <div id="panel" class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">	
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title"><?php e(get_client_site_name()); ?> - Peta Indonesia</h4>
                </div>
                <div id="map" class="panel-body" style="width:100%;min-height:400px">
                </div>
            </div>
        </div>
        <div class="col-xs-4">
            <!-- begin panel -->
            <div id="panel" class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn"> 
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title"><?php e(get_client_site_name()); ?> - List Coordinates</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
                            url="<?php echo base_url(); ?>index.php/client_peta_indonesia/page_list_rest"
                            toolbar="#toolbar" pagination="true"
                            rownumbers="true" fitColumns="true" singleSelect="true">
                        <thead>
                            <tr>
                                <th field="NAME" width="30">Name</th>
                                <th field="LATITUDE" width="30">Latitude</th>
                                <th field="LONGITUDE" width="30">Longitude</th>
                            </tr>
                        </thead>
                    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newData()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editArticleCategory()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyArticleCategory()">Remove</a>
                    </div>
                </div>
            </div>




            <!-- Modal -->
            <div id="add-point" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                  </div>
                  <div class="modal-body">
                    <p>Some text in the modal.</p>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
                </div>

              </div>
            </div>

        </div>
    </div>
</div>