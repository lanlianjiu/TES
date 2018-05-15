
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use backend\models\WebMessageModel;
use yii\helpers\Url;
$modelLabel = new \backend\models\WebMessageModel();
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
                <?php ActiveForm::begin(['id' => 'web-message-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('web-message/index')]); ?>    
                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('message_id')?>:</label>
                      <input type="text" class="form-control" id="query[message_id]" name="query[message_id]"  value="<?=isset($query["message_id"]) ? $query["message_id"] : "" ?>">
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
                <label>数据列表</label>
                <!-- row start -->
                <div class="row">
                <div class="col-sm-12 no-padding" data-table-th-scroll="true"  data-adaptionHeight="100">
                <table id="data_table" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="data_table_info">
                    <thead>
                    <tr role="row">
                    <?php 
                    $orderby = isset($_GET['orderby']) ? $_GET['orderby'] : '';
                    echo '<th><input id="data_table_check" type="checkbox"></th>';
                    echo '<th onclick="orderby(\'message_id\', \'desc\')" '.CommonFun::sortClass($orderby, 'message_id').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('message_id').'</th>';
                    echo '<th onclick="orderby(\'connet_name\', \'desc\')" '.CommonFun::sortClass($orderby, 'connet_name').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('connet_name').'</th>';
                    echo '<th onclick="orderby(\'connet_phone\', \'desc\')" '.CommonFun::sortClass($orderby, 'connet_phone').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('connet_phone').'</th>';
                    echo '<th onclick="orderby(\'email\', \'desc\')" '.CommonFun::sortClass($orderby, 'email').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('email').'</th>';
                    echo '<th onclick="orderby(\'address\', \'desc\')" '.CommonFun::sortClass($orderby, 'address').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('address').'</th>';
                    echo '<th onclick="orderby(\'message_content\', \'desc\')" '.CommonFun::sortClass($orderby, 'message_content').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('message_content').'</th>';
                    echo '<th onclick="orderby(\'create_date\', \'desc\')" '.CommonFun::sortClass($orderby, 'create_date').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('create_date').'</th>';
                    echo '<th onclick="orderby(\'is_look\', \'desc\')" '.CommonFun::sortClass($orderby, 'is_look').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('is_look').'</th>';
                
                    ?>
                    <th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php
                    foreach ($models as $model) {
                        echo '<tr id="rowid_' . $model->message_id . '">';
                        echo '  <td><label><input type="checkbox" value="' . $model->message_id . '"></label></td>';
                        echo '  <td>' . $model->message_id . '</td>';
                        echo '  <td>' . $model->connet_name . '</td>';
                        echo '  <td>' . $model->connet_phone . '</td>';
                        echo '  <td>' . $model->email . '</td>';
                        echo '  <td>' . $model->address . '</td>';
                        echo '  <td>' . $model->message_content . '</td>';
                        echo '  <td>' . $model->create_date . '</td>';
                        echo '  <td>' . $model->is_look . '</td>';
                        echo '  <td class="center">';
                        echo '      <a id="view_btn" onclick="viewAction('.$model->message_id.')" class="btn btn-primary btn-xs" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i></a>';
                        //echo '      <a id="edit_btn" onclick="editAction(' . $model->message_id . ')" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-edit icon-white"></i>修改</a>';
                        echo '      <a id="delete_btn" onclick="deleteAction('.$model->message_id.')" class="btn btn-danger btn-xs" href="#"> <i class="glyphicon glyphicon-trash icon-white"></i></a>';
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
            		从<?= $pages->getPage() * $pages->getPageSize() + 1 ?>            		
                    到 <?= ($pageCount = ($pages->getPage() + 1) * $pages->getPageSize()) < $pages->totalCount ?  $pageCount : $pages->totalCount?>            		 共 <?= $pages->totalCount?> 条记录</div>
            	</div>
            </div>
          	<div class="col-sm-7">
              	<div class="dataTables_paginate paging_simple_numbers" id="data_table_paginate">
                    <?= LinkPager::widget([
                        'pagination' => $pages,
                        'nextPageLabel' => '»',
                        'prevPageLabel' => '«',
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
				<h3>留言信息</h3>
			</div>
			<div class="modal-body">
                <?php $form = ActiveForm::begin(["id" => "admin-log-form", "class"=>"form-horizontal", "action"=>"index.php?r=admin-log/save"]); ?>                      
                        
                <input type="hidden" class="form-control" id="id" name="WebMessage[id]" />

                <div id="message_id_div" class="form-group">
                    <label for="message_id" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("message_id")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="message_id" name="WebMessage[message_id]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="connet_name_div" class="form-group">
                    <label for="connet_name" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("connet_name")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="connet_name" name="WebMessage[connet_name]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="connet_phone_div" class="form-group">
                    <label for="connet_phone" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("connet_phone")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="connet_phone" name="WebMessage[connet_phone]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="email_div" class="form-group">
                    <label for="email" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("email")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" name="WebMessage[email]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="address_div" class="form-group">
                    <label for="address" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("address")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="address" name="WebMessage[address]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="message_content_div" class="form-group">
                    <label for="message_content" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("message_content")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="message_content" name="WebMessage[message_content]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="create_date_div" class="form-group">
                    <label for="create_date" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("create_date")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="create_date" name="WebMessage[create_date]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

                <div id="is_look_div" class="form-group">
                    <label for="is_look" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("is_look")?></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="is_look" name="WebMessage[is_look]" placeholder="" />
                    </div>
                    <div class="clearfix"></div>
                </div> 

                <?php ActiveForm::end(); ?>          
            </div>
            <div class="modal-footer text-c">
                <a href="#" class="btn btn-default" data-dismiss="modal">关闭</a>
		</div>
	</div>
</div>
<?php $this->beginBlock('footer');  ?>
<!-- <body></body>后代码块 -->
<?php include '/js/webmessage.php';?>
<?php $this->endBlock(); ?>