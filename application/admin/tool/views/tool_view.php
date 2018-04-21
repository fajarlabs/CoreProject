<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Tools Management <small>Function to create Tools</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/tool/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Tools Management - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/tool/page_list_rest"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
				                <th field="JENIS" width="30">TYPE</th>
                                <th field="NAMA" width="30">NAME</th>
                                <th field="JUMLAH" width="30">TOTAL</th>
                                <th field="UPLOAD_SERTIFIKAT" width="30">SERTIFIKAT</th>
				            </tr>
				        </thead>
				    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newTool()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editTool()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyTool()">Remove</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" id="nama_barang">Modal Header</h4>
      </div>
      <div class="modal-body">
        <table style="width:100%">
            <tr>
                <td rowspan="4">
                    <img id="gbr">
                </td>
                <td style="width: 40%;">
                    <strong>Last Update Calibration</strong><br/>
                    <span id="date_calibrasi"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Condition</strong><br/>
                    <span id="kondisi"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Location</strong><br/>
                    <span id="location"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Stock</strong><br/>
                    <span id="stock"></span>
                </td>
            </tr>

        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<script>
    function detail(id){
        //alert(id);
        $.ajax({
            url: 'tool/detail_gbr/'+id, 
            type: 'POST',
            success: function(data) {
                var fields = data.split('@@@');

                  var sbu_cb = "";
                  if(fields[5]==1){
                    var sbu_cb = "Kantor Pusat : "+fields[7];
                  }
                  else {
                    var sbu_cb = "Cabang : "+fields[6];
                  }

                 $("#nama_barang").html(fields[0]);
                 $("#stock").html(fields[1]);
                 $("#date_calibrasi").html(fields[3]);
                 $("#kondisi").html(fields[4]);
                 $("#location").html(sbu_cb);
                 $("#gbr").attr('src', "<?php echo base_url() ?>uploads/tool_files/" +fields[2]);
                 $("#gbr").width("90%");
            }
        });  
    }
</script>