<?php
use yii\helpers\Url;
 define('ROOT_PATH',dirname(dirname(dirname(dirname(__FILE__)))));
 include ROOT_PATH.'/web/js/iov-min-public.php';
?>

<script>
function orderby(field, op){
	 var url = window.location.search;
	 var optemp = field + " desc";
	 if(url.indexOf('orderby') != -1){
		 url = url.replace(/orderby=([^&?]*)/ig,  function($0, $1){ 
			 var optemp = field + " desc";
			 optemp = decodeURI($1) != optemp ? optemp : field + " asc";
			 return "orderby=" + optemp;
		   }); 
	 }
	 else{
		 if(url.indexOf('?') != -1){
			 url = url + "&orderby=" + encodeURI(optemp);
		 }
		 else{
			 url = url + "?orderby=" + encodeURI(optemp);
		 }
	 }
	 window.location.href=url; 
 }
 function searchAction(){
		$('#admin-log-search-form').submit();
	}
 function viewAction(id){
		initModel(id, 'view', 'fun');
	}

function initEditSystemModule(data, type){

	if(type == 'create'){

		$("#id").val('');
		$("#controller_id").val('');
		$("#action_id").val('');
		$("#url").val('');
		$("#module_name").val('');
		$("#func_name").val('');
		$("#right_name").val('');
		$("#client_ip").val('');
		$("#create_user").val('');
		$("#create_date").val('');
	}else{

		$("#id").val(data.id);
    	$("#controller_id").val(data.controller_id);
    	$("#action_id").val(data.action_id);
    	$("#url").val(data.url);
    	$("#module_name").val(data.module_name);
    	$("#func_name").val(data.func_name);
    	$("#right_name").val(data.right_name);
    	$("#client_ip").val(data.client_ip);
    	$("#create_user").val(data.create_user);
    	$("#create_date").val(data.create_date);
    }
	if(type == "view"){

      $("#id").attr({readonly:true,disabled:true});
      $("#controller_id").attr({readonly:true,disabled:true});
      $("#action_id").attr({readonly:true,disabled:true});
      $("#url").attr({readonly:true,disabled:true});
      $("#module_name").attr({readonly:true,disabled:true});
      $("#func_name").attr({readonly:true,disabled:true});
      $("#right_name").attr({readonly:true,disabled:true});
      $("#client_ip").attr({readonly:true,disabled:true});
      $("#create_user").attr({readonly:true,disabled:true});
      $("#create_date").attr({readonly:true,disabled:true});
	$('#edit_dialog_ok').addClass('hidden');

	}else{
      $("#id").attr({readonly:false,disabled:false});
      $("#controller_id").attr({readonly:false,disabled:false});
      $("#action_id").attr({readonly:false,disabled:false});
      $("#url").attr({readonly:false,disabled:false});
      $("#module_name").attr({readonly:false,disabled:false});
      $("#func_name").attr({readonly:false,disabled:false});
      $("#right_name").attr({readonly:false,disabled:false});
      $("#client_ip").attr({readonly:false,disabled:false});
      $("#create_user").attr({readonly:false,disabled:false});
      $("#create_date").attr({readonly:false,disabled:false});
	  $('#edit_dialog_ok').removeClass('hidden');
	}
		$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){
	
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('admin-log/view')?>",
		   data: {"id":id},
		   cache: false,
		   dataType:"json",
		   error: function (xmlHttpRequest, textStatus, errorThrown) {
			    alert("出错了，" + textStatus);
			},
		   success: function(data){
			   initEditSystemModule(data, type);
		   }
		});
}
	
function editAction(id){
	initModel(id, 'edit');
}

//获取选中id
function getCheckId(data) {

	var arrayId = [];
	for (var i in data) {
		arrayId.push(data[i].web_nav_id);
	}
	return arrayId;
};

function deleteAction(id){
	var ids = [];
	if(!!id == true){
		ids[0] = id;
	}
	else{
		ids = getCheckId($('#adminLog-table').bootstrapTable('getSelections'));
	}
	if(ids.length > 0){
		admin_tool.confirm('请确认是否删除', function(){
		    $.ajax({
				   type: "GET",
				   url: "<?=Url::toRoute('admin-log/delete')?>",
				   data: {"ids":ids},
				   cache: false,
				   dataType:"json",
				   error: function (xmlHttpRequest, textStatus, errorThrown) {
					    alert("出错了，" + textStatus);
					},
				   success: function(data){
					   for(i = 0; i < ids.length; i++){
						   $('#rowid_' + ids[i]).remove();
					   }
					   admin_tool.alert('msg_info', '删除成功', 'success');
					   $('#adminLog-table').bootstrapTable('refresh');
				   }
				});
		});
	}
	else{
		admin_tool.alert('msg_info', '请先选择要删除的数据', 'warning');
	}
    
}


$('#edit_dialog_ok').click(function (e) {
    e.preventDefault();
	$('#admin-log-form').submit();
});

$('#create_btn').click(function (e) {
    e.preventDefault();
    initEditSystemModule({}, 'create');
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#admin-log-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('admin-log/create')?>" : "<?=Url::toRoute('admin-log/update')?>";
    $(this).ajaxSubmit({
    	type: "post",
    	dataType:"json",
    	url: action,
    	data:{id:id},
    	success: function(value) 
    	{
        	if(value.errno == 0){
        		$('#edit_dialog').modal('hide');
        		admin_tool.alert('msg_info', '添加成功', 'success');
        		$('#adminLog-table').bootstrapTable('refresh');
        	}else{
            	var json = value.data;
        		for(var key in json){
        			$('#' + key).attr({'data-placement':'bottom', 'data-content':json[key], 'data-toggle':'popover'}).addClass('popover-show').popover('show');
        		}
        	}

    	}
    });
});
  
function  operateFormatter(value, row, index) {
	 var h = "";
	 h +='<a id="view_btn" onclick="viewAction(' +row.id+ ')" class="action-a-btn" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i></a>';
	 return h;
}

</script>