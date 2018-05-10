
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use backend\models\AdminRight;
use yii\helpers\Url;
$modelLabel = new \backend\models\AdminRight();
?>

<?php $this->beginBlock('header');  ?>
<!-- <head></head>中代码块 -->
<?php $this->endBlock(); ?>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
         <!-- row start search-->
          	<div class="row">
                <div class="col-sm-12">
                    <div class="box-header search-box">
                        <?php ActiveForm::begin(['id' => 'admin-right-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('admin-right/index')]); ?>       
                        <div class="form-group" style="margin: 5px;">
                            <label><?=$modelLabel->getAttributeLabel('id')?>:</label>
                            <input type="text" class="form-control" id="query[id]" name="query[id]"  value="<?=isset($query["id"]) ? $query["id"] : "" ?>">
                        </div>
                        <div class="form-group">
                            <a onclick="searchAction()" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>搜索</a>
                        </div>
                        <?php ActiveForm::end(); ?> 
                    </div>
                </div>
          	</div>
          	<!-- row end search -->
      <div class="box" data-adaptionHeight="40">
        <div class="box-body">
          <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">  
            <label>路由管理</label>
                <div class="input-group input-group-sm">
                    <button id="create_btn" type="button" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> 添加</button>
                    <button id="delete_btn" type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> 批量删除</button>
            </div>
          	<!-- row start -->
          	<div class="row">
          	<div class="col-sm-12 no-padding" data-adaptionHeight="100">
          	<table id="data_table" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="data_table_info">
                <thead>
                <tr role="row">
                <?php 
                echo '<th><input id="data_table_check" type="checkbox"></th>';
                echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('id').'</th>';
                    // echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('menu_id').'</th>';
                echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('right_name').'</th>';
                //echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('display_label').'</th>';
                    //echo '<th class="sorting" tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('des').'</th>';
                echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('display_order').'</th>';
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
                        //echo '  <td>' . $model->menu_id . '</td>';
                        echo '  <td>' . $model->right_name . '</td>';
                        // echo '  <td>' . $model->display_label . '</td>';
                        //echo '  <td>' . $model->des . '</td>';
                        echo '  <td>' . $model->display_order . '</td>';
                        //echo '  <td>' . $model->has_lef . '</td>';
                        //echo '  <td>' . $model->create_user . '</td>';
                        //echo '  <td>' . $model->create_date . '</td>';
                        echo '  <td>' . $model->update_user . '</td>';
                        echo '  <td>' . $model->update_date . '</td>';
                        echo '  <td class="center">';
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
            		从<?= $pages->getPage() * $pages->getPageSize() + 1 ?>            		
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

<div class="modal fade" id="edit_dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h4>路由管理</h4>
			</div>
			<div class="modal-body">
                <?php $form = ActiveForm::begin(["id" => "admin-right-form", "class"=>"form-horizontal", "action"=>Url::toRoute('admin-right/save')]); ?>                      
                 
                 <input type="hidden" class="form-control" id="id" name="id" />
          		 <input type="hidden" class="form-control" id="menu_id" name="AdminRight[menu_id]" value="<?=$menu_id?>" />
                 
          <div id="right_name_div" class="form-group">
              <label for="right_name" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("right_name")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="right_name" name="AdminRight[right_name]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="display_label_div" class="form-group">
              <label for="display_label" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("display_label")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="display_label" name="AdminRight[display_label]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="des_div" class="form-group">
              <label for="des" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("des")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="des" name="AdminRight[des]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="display_order_div" class="form-group">
              <label for="display_order" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("display_order")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="display_order" name="AdminRight[display_order]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

			<div id="controller_div" class="form-group">
    			<label for="controller" class="col-sm-2 control-label">控制器ID</label>
    			<div class="col-sm-10">
    				<select class="form-control" name="SystemFunction[controller]" id="controller">
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

			<div id="actions_div" class="form-group">
    			<label for="actions" class="col-sm-2 control-label">路由地址</label>
    			<div class="col-sm-10">
    				<div id="treeview"  >	
    				</div>
    			</div>
    			<div class="clearfix"><br/></div>
    		</div>  

          <div id="has_lef_div" class="form-group">
              <label for="has_lef" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("has_lef")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="has_lef" name="AdminRight[has_lef]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="create_user_div" class="form-group">
              <label for="create_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_user")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="create_user" name="AdminRight[create_user]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="create_date_div" class="form-group">
              <label for="create_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="create_date" name="AdminRight[create_date]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="update_user_div" class="form-group">
              <label for="update_user" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_user")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="update_user" name="AdminRight[update_user]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="update_date_div" class="form-group">
              <label for="update_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("update_date")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="update_date" name="AdminRight[update_date]" placeholder="" />
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
<?php include '/js/right.php';?>
<?php $this->endBlock(); ?>