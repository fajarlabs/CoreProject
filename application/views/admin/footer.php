	<?php if(!isset($basic) || ($basic == false)) : ?>
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	</div>
	<?php endif; ?>

	<!-- end page container -->
	<!-- ================== BEGIN BASE JS ================== -->
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery/jquery-1.9.1.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/sweetalert/dist/sweetalert.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap/js/bootstrap.min.js'); ?>
	<!--[if lt IE 9]>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/html5shiv.js'); ?>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/respond.min.js'); ?>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/excanvas.min.js'); ?>
	<![endif]-->
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/slimscroll/jquery.slimscroll.min.js') ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-cookie/jquery.cookie.js') ?>
	<!-- ================== END BASE JS ================== -->	

	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/gritter/js/jquery.gritter.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.time.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.resize.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.pie.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/sparkline/jquery.sparkline.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js'); ?>
	<?php echo script_tag('assets/admin/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/jQuery-autoComplete-master/jquery.auto-complete.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/dashboard.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/easyui/jquery.easyui.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/tinymce/js/tinymce/tinymce.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/select2-3.5.4/select2.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/jQuery-Mask-Plugin-master/dist/jquery.mask.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/lightbox2-master/dist/js/lightbox.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/webticker/jquery.webticker.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/DataTables/media/js/jquery.dataTables.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/table-manage-default.demo.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/datagrid-filter/datagrid-filter.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/apps.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap-wizard/js/bwizard.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/form-wizards.demo.min.js'); ?>
	<?php //echo script_tag('assets/admin/js/decimal.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/form-plugins.demo.min.js'); ?>

	<!-- ================== BEGIN CDN BASE JS ================== -->
	<?php echo script_tag(base_url().'assets/admin/plugins/bootstrap-fileinput/js/fileinput.min.js'); ?>
	<?php echo script_tag(base_url().'assets/admin/plugins/moment/min/moment.min.js'); ?>
	<?php echo script_tag(base_url().'assets/admin/plugins/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js'); ?>

	<?php echo $html_js; ?>

	<script type="text/javascript">
		// global initialize
		$(document).ready(function(){
			// Do not modify

			$('.datepicker').datepicker({});
			$('.timepicker').timepicker({defaultTime: '0:00',showMeridian: false,minuteStep: 1,showSeconds: false,showMeridian: false});

			var dg = $("#dg");
			dg.datagrid("enableFilter");
					
			/*$('.datetimepicker').datetimepicker({
				format: 'DD/MM/YYYY HH:mm'
			});
			$(".tdatetimepicker").mask("00/00/0000 00:00", {placeholder: "__/__/____ __:__"});
			*/

			$.get('<?php e(base_url()); ?>index.php/running_text/footer_list_rest',function(result) {
				if(result.total > 0) {
					try {
						 $.each(result.rows, function(index,value) {
						 	var add_css = "";
						 	if((result.total-1) == index) {
						 		add_css = "last";
						 	}
						 	$('#webTicker').append('<li class="'+add_css+'"><span class="blink_me"  style="color:#ff0000;">'+value.CLIENT_SITE_NAME+'</span> <small style="color:000;">['+value.DISPLAY_START_TIME+'] </small>'+value.MESSAGE+'</li>');
						 });

						 if(result.rows < 1) {
						 	$('#footer-division').hide();
						 }
					} catch(err) {

					}
					$('#webTicker').webTicker();
				}
			});
		});

	$('.contract_autocomplete').autoComplete({
	    source: function(term, response){
	        $.getJSON('<?php echo base_url(); ?>index.php/form_entry/search_kontrak', { q: term }, function(data){ response(data); });
	    }
	});
	</script>
</body>

</html>