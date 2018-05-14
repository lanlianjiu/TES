
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use backend\models\AdminMenu;
use yii\helpers\Url;
$modelLabel = new \backend\models\AdminMenu();
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
                <div class="col-sm-12" >
                    <?php ActiveForm::begin(['id' => 'admin-menu-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('admin-menu/index')]); ?>
                    <input type="hidden" id="mid" name="mid" value="<?=$module_id?>" />
                    <div class="form-group" style="margin: 5px;">
                        <label><?=$modelLabel->getAttributeLabel('id')?>:</label>
                        <input type="text" class="form-control" id="query[id]" name="query[id]"  value="<?=isset($query["id"]) ? $query["id"] : "" ?>">
                    </div>

                    <div class="form-group" style="margin: 5px;">
                        <label><?=$modelLabel->getAttributeLabel('entry_url')?>:</label>
                        <input type="text" class="form-control" id="query[entry_url]" name="query[entry_url]"  value="<?=isset($query["entry_url"]) ? $query["entry_url"] : "" ?>">
                    </div>
                <div class="form-group">
                    <a onclick="searchAction()" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>搜索</a>
                </div>
                <?php ActiveForm::end(); ?> 
                </div>
          	</div>
            <!-- row end search -->
        </div>
      <div class="box" data-adaptionHeight="40">
        <div class="box-body">
          <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
            <div class="input-group input-group-sm">
                <label>子菜单管理&nbsp;</label>
                <button id="create_btn" type="button" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> 添加</button>
        		<button id="delete_btn" type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> 批量删除</button>
            </div>
          	<!-- row start -->
          	<div class="row">
          	<div class="col-sm-12 no-padding" data-table-th-scroll="true" data-adaptionHeight="100">
          	<table id="data_table" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="data_table_info">
                <thead>
                    <tr role="row">
                    <?php 
                    echo '<th><input id="data_table_check" type="checkbox"></th>';
                    echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('id').'</th>';
                    echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('code').'</th>';
                    echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('menu_name').'</th>';
                    //echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('module_id').'</th>';
                    //echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('display_label').'</th>';
                    echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('display_order').'</th>';
                    //echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('entry_right_name').'</th>';
                    echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('entry_url').'</th>';
                    echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('update_user').'</th>';
                    echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('update_date').'</th>';
                
                    ?>
                    <th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >操作</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                $row = 0;
                foreach ($models as $model) {
                    echo '<tr id="rowid_' . $model->id . '">';
                    echo '  <td><label><input type="checkbox" value="' . $model->id . '"></label></td>';
                    echo '  <td>' . $model->id . '</td>';
                    echo '  <td>' . $model->code . '</td>';
                    echo '  <td>' . $model->menu_name . '</td>';
                    // echo '  <td>' . $model->module_id . '</td>';
                    // echo '  <td>' . $model->display_label . '</td>';
                    //echo '  <td>' . $model->des . '</td>';
                    echo '  <td>' . $model->display_order . '</td>';
                    // echo '  <td>' . $model->entry_right_name . '</td>';
                    echo '  <td>' . $model->entry_url . '</td>';
                    //echo '  <td>' . $model->action . '</td>';
                    //echo '  <td>' . $model->controller . '</td>';
                    //echo '  <td>' . $model->has_lef . '</td>';
                    //echo '  <td>' . $model->create_user . '</td>';
                    //echo '  <td>' . $model->create_date . '</td>';
                    echo '  <td>' . $model->update_user . '</td>';
                    echo '  <td>' . $model->update_date . '</td>';
                    echo '  <td class="center">';
                    echo '      <a id="view_btn" class="btn btn-primary btn-xs" href="'.Url::toRoute(['admin-right/index','id'=>$model->id]).'"> <i class="glyphicon glyphicon-zoom-in icon-white"></i> 路由管理</a>';
                    echo '      <a id="view_btn" onclick="viewAction(' . $model->id . ')" class="btn btn-primary btn-xs" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i> 查看</a>';
                    echo '      <a id="edit_btn" onclick="editAction(' . $model->id . ')" class="btn btn-primary btn-xs" href="#"> <i class="fa fa-edit icon-white"></i> 修改</a>';
                    echo '      <a id="delete_btn" onclick="deleteAction(' . $model->id . ')" class="btn btn-danger btn-xs" href="#"> <i class="fa fa-trash icon-white"></i> 删除</a>';
                    echo '  </td>';
                    echo '<tr/>';
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
                    到 <?= ($pageCount = ($pages->getPage() + 1) * $pages->getPageSize()) < $pages->totalCount ?  $pageCount : $pages->totalCount?>            	
                    共 <?= $pages->totalCount?> 条记录</div>
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
				<h4>子菜单管理</h4>
			</div>
			<div class="modal-body">
                <?php $form = ActiveForm::begin(["id" => "admin-menu-form", "class"=>"form-horizontal", "action"=>Url::toRoute('admin-menu/save')]); ?>                      
                 <input type="hidden" class="form-control" id="id" name="AdminMenu[id]" />
                 <input type="hidden" class="form-control" id="module_id" name="AdminMenu[module_id]" value="<?=$module_id?>"> 
                <div id="code_div" class="form-group">
                    <label for="code" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("code")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="code" name="AdminMenu[code]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="menu_name_div" class="form-group">
                    <label for="menu_name" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("menu_name")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="menu_name" name="AdminMenu[menu_name]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- 
                <div id="module_id_div" class="form-group">
                    <label for="module_id" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("module_id")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="module_id" name="AdminMenu[module_id]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="display_label_div" class="form-group">
                    <label for="display_label" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("display_label")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="display_label" name="AdminMenu[display_label]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                -->
                <div id="des_div" class="form-group">
                    <label for="des" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("des")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="des" name="AdminMenu[des]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="display_order_div" class="form-group">
                    <label for="display_order" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("display_order")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="display_order" name="AdminMenu[display_order]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- 
                <div id="entry_right_name_div" class="form-group">
                <label for="entry_right_name" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("entry_right_name")?></label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="entry_right_name" name="AdminMenu[entry_right_name]" placeholder="" />
                </div>
                <div class="clearfix"></div>
                </div>
                -->
                <div id="entry_url_div" class="form-group">
                    <label for="entry_url" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("entry_url")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="entry_url" name="AdminMenu[entry_url]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="controller_div" class="form-group">
                    <label for="controller" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("controller")?></label>
                    <div class="col-sm-10">
                        <select class="form-control" name="AdminMenu[controller]" id="controller">
                            <option>请选择</option>
                            <?php 	   
                            foreach($controllerData as $key=>$data){
                                echo "<option value='" . $key . "'>". $key."</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
          
                <div id="action_div" class="form-group">
                    <label for="action" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("action")?></label>
                    <div class="col-sm-10">
                        <select class="form-control" name="AdminMenu[action]" id="action">
                            <option>请选择</option>
                        </select>
                        <!-- <input type="text" class="form-control" id="action" name="AdminMenu[action]" placeholder="必填" />  -->
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="has_lef_div" class="form-group">
                    <label for="has_lef" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("has_lef")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="has_lef" name="AdminMenu[has_lef]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="create_user_div" class="form-group">
                    <label for="create_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_user")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="create_user" name="AdminMenu[create_user]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="create_date_div" class="form-group">
                    <label for="create_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_date")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="create_date" name="AdminMenu[create_date]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="update_user_div" class="form-group">
                    <label for="update_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_user")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="update_user" name="AdminMenu[update_user]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="update_date_div" class="form-group">
                    <label for="update_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_date")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="update_date" name="AdminMenu[update_date]" placeholder="" />
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
<?php include '/js/menu.php';?>
<?php $this->endBlock(); ?>