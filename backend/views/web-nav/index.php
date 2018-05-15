
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use backend\models\AdminModule;
use yii\helpers\Url;
$modelLabel = new \backend\models\WebNavModel();
?>

<?php $this->beginBlock('header');  ?>
<!-- <head></head>中代码块 -->
<?php $this->endBlock(); ?>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
             <!-- row start search-->
            
            <div class="box-header search-box">
                <div class="row">
                    <div class="col-sm-12">
                        <?php ActiveForm::begin(['id' => 'web-nav-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('web-nav/index')]); ?>     
                        
                        <div class="form-group" style="margin: 5px;">
                            <label><?=$modelLabel->getAttributeLabel('id')?>:</label>
                            <input type="text" class="form-control" id="query[id]" name="query[id]"  value="<?=isset($query["id"]) ? $query["id"] : "" ?>">
                        </div>

                        <div class="form-group" style="margin: 5px;">
                            <label><?=$modelLabel->getAttributeLabel('code')?>:</label>
                            <input type="text" class="form-control" id="query[code]" name="query[code]"  value="<?=isset($query["code"]) ? $query["code"] : "" ?>">
                        </div>

                        <div class="form-group" style="margin: 5px;">
                            <label><?=$modelLabel->getAttributeLabel('display_label')?>:</label>
                            <input type="text" class="form-control" id="query[display_label]" name="query[display_label]"  value="<?=isset($query["display_label"]) ? $query["display_label"] : "" ?>">
                        </div>
                        <div class="form-group">
                            <a onclick="searchAction()" class="btn btn-primary btn-sm" href="#"> <i class="fa fa-search icon-white"></i> 搜索</a>
                        </div>
                    <?php ActiveForm::end(); ?> 
                    </div>
                </div>
            </div>
             <!-- row end search -->
            <div class="box" data-adaptionHeight="40">  
                <!-- /.box-header -->
                <div class="box-body">
                    <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                        <div class="input-group input-group-sm">
                            <div class="from-gruop">
                                <label>导航列表 </label>
                                <button id="create_btn" type="button" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> 添加</button>
                                <button id="delete_btn" type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> 批量删除</button>
                            </div>
                        </div>
                        <!-- row start -->
                        <div class="row">
                            <div class="col-sm-12 no-padding" data-table-th-scroll="true" data-adaptionHeight="100">
                                <table id="data_table" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="data_table_info">
                                    <thead>
                                        <tr role="row">
                                            <?php 
                                            echo '<th><input id="data_table_check" type="checkbox"></th>';
                                            echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('web_nav_id').'</th>';
                                            echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('web_navType_id').'</th>';
                                            echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('web_nav_name').'</th>';
                                            echo '<th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('url').'</th>';
                                            ?>
                                            <th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                        $row = 0;
                                        foreach ($models as $model) {
                                            echo '<tr id="rowid_' . $model->web_nav_id . '">';
                                            echo '  <td><label><input type="checkbox" value="' . $model->web_nav_id . '"></label></td>';
                                            echo '  <td>' . $model->web_nav_id . '</td>';
                                            echo '  <td>' . $model->web_navType_id . '</td>';
                                            echo '  <td>' . $model->web_nav_name . '</td>';
                                            echo '  <td>' . $model->url . '</td>';
                                            echo '  <td class="center">';
                                            echo '      <a id="view_btn" onclick="viewAction(' . $model->web_nav_id . ')" class="btn btn-primary btn-xs" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i></a>';
                                            echo '      <a id="edit_btn" onclick="editAction(' . $model->web_nav_id . ')" class="btn btn-primary btn-xs" href="#"> <i class="fa fa-edit icon-white"></i></a>';
                                            echo '      <a id="delete_btn" onclick="deleteAction(' . $model->web_nav_id . ')" class="btn btn-danger btn-xs" href="#"> <i class="fa fa-trash icon-white"></i></a>';
                                            echo '  </td>';
                                            echo '<tr/>';
                                        }
                                    ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    <div>
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

<!-- 弹窗 -->
<div class="modal bootstrap-dialog type-primary modal-box fade" id="edit_dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h4>导航管理</h4>
			</div>
			<div class="modal-body">
                <?php $form = ActiveForm::begin(["id" => "admin-module-form", "class"=>"form-horizontal", "action"=>Url::toRoute("web-nav/save")]); ?> 
                <input type="hidden" class="form-control" id="web_nav_id" name="WebNavModel[web_nav_id]" />
               
                <div id="web_navType_id_div" class="form-group">
                    <label for="web_navType_id" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("web_navType_id")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="web_navType_id" name="WebNavModel[web_navType_id]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div id="web_nav_name_div" class="form-group">
                    <label for="web_nav_name" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("web_nav_name")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="web_nav_name" name="WebNavModel[web_nav_name]" placeholder="必填" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                 <div id="controller_div" class="form-group">
                    <label for="controller" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("controller")?></label>
                    <div class="col-sm-10">
                        <select class="form-control" name="WebNavModel[controller]" id="controller_id">
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
                <div id="url_div" class="form-group">
                    <label for="url" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("url")?></label>
                    <div class="col-sm-10">
                        <select class="form-control" name="WebNavModel[url]" id="actionUrl">
                            <option>请选择</option>
                        </select>
                        <!-- <input type="text" class="form-control" id="url" name="WebNavModel[url]" placeholder="" /> -->
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
<?php include '/js/webnav.php';?>
<?php $this->endBlock(); ?>