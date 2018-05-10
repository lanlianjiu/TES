
<?php
use yii\widgets\LinkPager;
use yii\bootstrap\ActiveForm;
use backend\models\AdminUserRole;
use yii\helpers\Url;

$modelLabel = new \backend\models\AdminUserRole();
?>

<?php $this->beginBlock('header');  ?>
<!-- <head></head>中代码块 -->
<?php $this->endBlock(); ?>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
        <div class="box-header search-box">
         <!-- row start search-->
          	<div class="row">
                <div class="col-sm-12">
                    <?php ActiveForm::begin(['id' => 'admin-user-role-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('admin-user-role/index')]); ?>     
                    <input type="hidden" class="form-control" name="roleId" value="<?=$role_id?>"/>
                    
                    <div class="form-group" style="margin: 5px;">
                        <label><?=$modelLabel->getAttributeLabel('id')?>:</label>
                        <input type="text" class="form-control" id="query[id]" name="query[id]"  value="<?=isset($query["id"]) ? $query["id"] : "" ?>">
                    </div>

                    <div class="form-group" style="margin: 5px;">
                        <label><?=$modelLabel->getAttributeLabel('user_id')?>:</label>
                        <input type="text" class="form-control" id="query[user_id]" name="query[user_id]"  value="<?=isset($query["user_id"]) ? $query["user_id"] : "" ?>">
                    </div>
                <div class="form-group">
                    <a onclick="searchAction()" class="btn btn-primary btn-sm" href="#"> <i class="fa fa-search icon-white"></i> 搜索</a>
                </div>
                <?php ActiveForm::end(); ?> 
                </div>
          	</div>
          	<!-- row end search -->
        </div>
        <!-- /.box-header -->
       <div class="box" data-adaptionHeight="40">
        <div class="box-body">
          <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
            <div class="input-group input-group-sm">
                <label>数据列表&nbsp;</label>
                <button id="create_btn" type="button" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> 添加</button>
                <button id="delete_btn" type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> 批量删除</button>
            </div>
          	<!-- row start -->
          	<div class="row">
          	<div class="col-sm-12 no-padding"  data-adaptionHeight="100">
                <table id="data_table" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="data_table_info">
                    <thead>
                    <tr role="row">
                    <?php 
                    echo '<th><input id="data_table_check" type="checkbox"></th>';
                    echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('id').'</th>';
                    echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('user_id').'</th>';
                    echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('role_id').'</th>';
                    echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('update_user').'</th>';
                    echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('update_date').'</th>';
                    ?>
                    <th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php
                    foreach ($models as $model) {
                        echo '<tr id="rowid_' . $model->id . '">';
                        echo '  <td><label><input type="checkbox" value="' . $model->id . '"></label></td>';
                        echo '  <td>' . $model->id . '</td>';
                        echo '  <td>' . $model->user->uname . '</td>';
                        echo '  <td>' . $model->role->name . '</td>';
                        //echo '  <td>' . $model->create_user . '</td>';
                        //echo '  <td>' . $model->create_date . '</td>';
                        echo '  <td>' . $model->update_user . '</td>';
                        echo '  <td>' . $model->update_date . '</td>';
                        echo '  <td class="center">';
                        echo '      <a id="view_btn" onclick="viewAction(' . $model->id . ')" class="btn btn-primary btn-xs" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i> 查看</a>';
                        echo '      <a id="edit_btn" onclick="editAction(' . $model->id . ')" class="btn btn-primary btn-xs" href="#"> <i class="fa fa-edit icon-white"></i> 修改</a>';
                        echo '      <a id="delete_btn" onclick="deleteAction(' . $model->id . ')" class="btn btn-danger btn-xs" href="#"> <i class="fa fa-trash icon-white"></i> 删除</a>';
                        echo '  </td>';
                        echo '</tr>';
                    }
                    ?>
                    </tbody>
                    <!-- <tfoot></tfoot> -->
                </table>
            </div>
          </div>
          <!-- row end -->
          <!-- row start -->
          <div class="row">
          	<div class="col-sm-5">
            	<div class="dataTables_info" id="data_table_info" role="status" aria-live="polite">
                <div class="infos">
                    从 <?= $pages->getPage() * $pages->getPageSize() + 1 ?>            		
                    到 <?= ($pageCount = ($pages->getPage() + 1) * $pages->getPageSize()) < $pages->totalCount ?  $pageCount : $pages->totalCount?>            		 共 <?= $pages->totalCount?> 条记录</div>
                </div>
            </div>
          	<div class="col-sm-7">
              	<div class="dataTables_paginate paging_simple_numbers" id="data_table_paginate">
              	<?= LinkPager::widget([
              	    'pagination' => $pages,
              	    'nextPageLabel' => '下一页',
              	    'prevPageLabel' => '上一页',
              	    'firstPageLabel' => '首页',
              	    'lastPageLabel' => '尾页',
              	]); ?>	
              	
              	</div>
          	</div>
		  </div>
		  <!-- row end -->
        </div>
        </div>
        <!-- /.box-body -->
       </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>
<!-- /.content -->

<div class="modal bootstrap-dialog type-primary modal-box fade" id="edit_dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h4>角色用户管理</h4>
			</div>
			<div class="modal-body">
                <?php $form = ActiveForm::begin(["id" => "admin-user-role-form", "class"=>"form-horizontal", "action"=>Url::toRoute("admin-user-role/save")]); ?>                         
                <input type="hidden" class="form-control" id="id" name="AdminUserRole[id]" />

                <div id="user_id_div" class="form-group">
                    <label for="user_id" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("user_id")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="user_id" name="AdminUserRole[user_id]" />
                    </div>
                    <div class="clearfix"></div>
                </div>
          
                <div id="user_name_div" class="form-group">
                    <label for="user_name" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="user_name" name="user_name" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <input type="hidden" class="form-control" id="role_id" name="AdminUserRole[role_id]" value="<?=$role_id?>"/>

                <div id="create_user_div" class="form-group">
                    <label for="create_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_user")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="create_user" name="AdminUserRole[create_user]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="create_date_div" class="form-group">
                    <label for="create_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_date")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="create_date" name="AdminUserRole[create_date]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="update_user_div" class="form-group">
                    <label for="update_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_user")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="update_user" name="AdminUserRole[update_user]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="update_date_div" class="form-group">
                    <label for="update_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_date")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="update_date" name="AdminUserRole[update_date]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <?php ActiveForm::end(); ?>          
                    </div>
                <div class="modal-footer text-c">
                    <a href="#" class="btn btn-default" data-dismiss="modal">关闭</a> <a
                        id="edit_dialog_ok" href="#" class="btn btn-primary">确定</a>
                </div>

            </div>
        </div>
    </div>
<?php $this->beginBlock('footer');  ?>
<!-- <body></body>后代码块 -->
<?php include '/js/user-role.php';?>
<?php $this->endBlock(); ?>