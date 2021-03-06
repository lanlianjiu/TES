
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
                    <div class="col-sm-12 ">
                        <form bootstrap-table-form="webnav-table" class="form-inline">
                        
                        <div class="form-group" style="margin: 5px;">
                            <label>类型</label>
                            <input type="text" class="form-control"  name="web_navType_id"  />
                        </div>

                        <div class="form-group" style="margin: 5px;">
                            <label>名称</label>
                            <input type="text" class="form-control"  name="web_nav_name"  />
                        </div>
                        <div class="form-group">
                            <a bootstrap-table-search="webnav-table" class="btn btn-primary btn-sm" href="#"> <i class="fa fa-search icon-white"></i> 搜索</a>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
             <!-- row end search -->
            <div class="box">  
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="input-group input-group-sm action-toolbar">
                        <div class="from-gruop">
                            <label>导航列表 </label>
                            <button id="create_btn" type="button" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> 添加</button>
                            <button id="delete_btn" type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> 批量删除</button>
                        </div>
                    </div>
                    <table id="webnav-table" data-toolbar=".action-toolbar" data-toggle="table" data-show-columns="true" data-autoheight="130" data-show-export="true"
                        data-pagination="true" data-filter-control="true" data-checkbox="true" data-show-export="true"
                        data-id-field="web_nav_id" data-unique-id="web_nav_id" data-custom-url="index.php?r=web-nav/table" class="table  table-hover th-table">
                        <thead>
                            <tr>
                                <th data-checkbox="true" width="80"></th>
                                <th data-sortable="true" data-field="web_nav_id" width="80">ID</th>
                                <th data-sortable="true" data-field="web_navType_id" width="120">类型ID</th>
                                <th data-sortable="true" data-field="web_nav_name" width="80">导航名称</th>
                                <th data-sortable="true" data-field="url" width="80">访问地址</th>
                                <th data-formatter="operateFormatter" width="120">操作</th>
                            </tr>
                        </thead>
                    </table>
                </div>
                
                
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
                <?php $form = ActiveForm::begin(["id" => "web-nav-form", "class"=>"form-horizontal", "action"=>Url::toRoute("web-nav/save")]); ?> 
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