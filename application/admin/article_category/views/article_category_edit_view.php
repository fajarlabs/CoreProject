<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Article Category Management <small>Function to create article category</small></h1>
	<!-- end page-header -->

    <!-- begin front message -->
    <?php echo (isset($front_message) ? $front_message : ""); ?>
    <!-- end front message -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/article_category/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Article Category Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open('article_category/update/'.$id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Category Name*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->CATEGORY_NAME,'type' => 'text', 'name' => 'category_name','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/article_category','Back', array('title' => 'Back to Article Category list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>