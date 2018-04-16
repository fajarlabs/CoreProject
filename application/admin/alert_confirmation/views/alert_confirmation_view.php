<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Alert Confirmation Management <small>Function for push messages about losses and other information.</small></h1>
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
                        <a href="<?php echo base_url(); ?>index.php/alert_confirmation/broadcast_all" onclick="confirm_broadcast(event);" class="btn btn-xs btn-icon btn-circle btn-primary"><i class="fa fa-envelope"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Alert Confirmation Management - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/alert_confirmation/list_rest"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
                                <th field="INTERVENTION_NAME" width="15">Intervensi</th>
                                <th field="PRODUCT_TYPE" width="15">Tipe</th>
                                <th field="SELECT_CARGO" width="18">Cargo</th>
                                <th field="CLIENT_SITE_NAME" width="15">Site Name</th>
                                <th field="VESSEL" width="20">Vessel</th>
                                <th field="KONTRAK" width="30">Kontrak</th>
                                <th field="SPK" width="30">LOI/SPK/PO/WO/NOA</th>
                                <th field="CTIME" width="30">Tanggal / Jam Input</th>
                                <th field="FUNGSI" width="30" align="center">Fungsi</th>
				            </tr>
				        </thead>
				    </table>
                </div>
            </div>

        </div>
    </div>
</div>
<div id="modal_message" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><i class="fa fa-eye"></i> Detail Loses</h4>
      </div>
      <div class="modal-body">
         <div id="content-loses"></div>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script type="text/javascript">
    function show_message(e) {
        $("#modal_message").modal('show');
        $("#content-loses").empty();
        $("#content-loses").html($(e).attr("msg-data"));
    }

    function confirm_broadcast(e) {

        var c = confirm('This message will sending to all client and cannot be undo. Are you sure?');
        if(!c) {
           e.preventDefault(); 
        }
    }

    function confirm_single_broadcast(e) {
        
        var c = confirm('This message will sending client and cannot be undo. Are you sure?');
        if(!c) {
           e.preventDefault(); 
        }
    }

    (function defer() {
        if (window.jQuery) {
            $("input[name=FUNGSI]").hide();
        } else {
           setTimeout(function() { defer() }, 2000);
        }
    })();
</script>