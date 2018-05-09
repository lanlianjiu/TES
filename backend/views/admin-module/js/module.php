<?php
use yii\helpers\Url;
?>

<script>
function searchAction(){
		$('#admin-module-search-form').submit();
}
function viewAction(id){
		initModel(id, 'view', 'fun');
}

 function initEditSystemModule(data, type){
	if(type == 'create'){
		$("#id").val('');
		$("#code").val('');
		$("#display_label").val('');
		$("#has_lef").val('');
		$("#des").val('');
		$("#entry_url").val('');
		$("#display_order").val('');
		$("#create_user").val('');
		$("#create_date").val('');
		$("#update_user").val('');
		$("#update_date").val('');
		
	}
	else{
		$("#id").val(data.id);
    	$("#code").val(data.code);
    	$("#display_label").val(data.display_label);
    	$("#has_lef").val(data.has_lef);
    	$("#des").val(data.des);
    	$("#entry_url").val(data.entry_url);
    	$("#display_order").val(data.display_order);
    	$("#create_user").val(data.create_user);
    	$("#create_date").val(data.create_date);
    	$("#update_user").val(data.update_user);
    	$("#update_date").val(data.update_date);
    	}
	if(type == "view"){
      $("#id").attr({readonly:true,disabled:true});
      $("#code").attr({readonly:true,disabled:true});
      $("#display_label").attr({readonly:true,disabled:true});
      $("#has_lef").attr({readonly:true,disabled:true});
      $("#des").attr({readonly:true,disabled:true});
      $("#entry_url").attr({readonly:true,disabled:true});
      $("#display_order").attr({readonly:true,disabled:true});
      $("#create_user").attr({readonly:true,disabled:true});
      $("#create_user").parent().parent().show();
      $("#create_date").attr({readonly:true,disabled:true});
      $("#create_date").parent().parent().show();
      $("#update_user").attr({readonly:true,disabled:true});
      $("#update_user").parent().parent().show();
      $("#update_date").attr({readonly:true,disabled:true});
      $("#update_date").parent().parent().show();
	$('#edit_dialog_ok').addClass('hidden');
	}
	else{
      $("#id").attr({readonly:false,disabled:false});
      $("#code").attr({readonly:false,disabled:false});
      $("#display_label").attr({readonly:false,disabled:false});
      $("#has_lef").attr({readonly:false,disabled:false});
      $("#des").attr({readonly:false,disabled:false});
      $("#entry_url").attr({readonly:false,disabled:false});
      $("#display_order").attr({readonly:false,disabled:false});
      $("#create_user").attr({readonly:false,disabled:false});
      $("#create_user").parent().parent().hide();
      $("#create_date").attr({readonly:false,disabled:false});
      $("#create_date").parent().parent().hide();
      $("#update_user").attr({readonly:false,disabled:false});
      $("#update_user").parent().parent().hide();
      $("#update_date").attr({readonly:false,disabled:false});
      $("#update_date").parent().parent().hide();
		$('#edit_dialog_ok').removeClass('hidden');
		}
		$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('admin-module/view')?>",
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

function deleteAction(id){
	var ids = [];
	if(!!id == true){
		ids[0] = id;
	}
	else{
		var checkboxs = $('#data_table tbody :checked');
	    if(checkboxs.size() > 0){
	        var c = 0;
	        for(i = 0; i < checkboxs.size(); i++){
	            var id = checkboxs.eq(i).val();
	            if(id != ""){
	            	ids[c++] = id;
	            }
	        }
	    }
	}
	if(ids.length > 0){
		admin_tool.confirm('请确认是否删除', function(){
		    $.ajax({
				   type: "GET",
				   url: "<?=Url::toRoute('admin-module/delete')?>",
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
					   window.location.reload();
				   }
				});
		});
	}
	else{
		admin_tool.alert('msg_info', '请先选择要删除的数据', 'warning');
	}
    
}

function getSelectedIdValues(formId)
{
	var value="";
	$( formId + " :checked").each(function(i)
	{
		if(!this.checked)
		{
			return true;
		}
		value += this.value;
		if(i != $("input[name='id']").size()-1)
		{
			value += ",";
		}
	 });
	return value;
}

$('#edit_dialog_ok').click(function (e) {
    e.preventDefault();
	$('#admin-module-form').submit();
});

$('#create_btn').click(function (e) {
    e.preventDefault();
    initEditSystemModule({}, 'create');
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#admin-module-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('admin-module/create')?>" : "<?=Url::toRoute('admin-module/update')?>";
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
        		window.location.reload();
        	}
        	else{
            	var json = value.data;
        		for(var key in json){
        			$('#' + key).attr({'data-placement':'bottom', 'data-content':json[key], 'data-toggle':'popover'}).addClass('popover-show').popover('show');
        			
        		}
        	}

    	}
    });
});

 
</script>