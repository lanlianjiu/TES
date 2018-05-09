<?php
use yii\helpers\Url;
?>
<script>
 function searchAction(){
		$('#admin-user-search-form').submit();
	}
 function viewAction(id){
		initModel(id, 'view', 'fun');
	}

 function initEditSystemModule(data, type){
	if(type == 'create'){
		$("#id").val('');
		$("#uname").val('');
		$("#password").val('');
		$("#auth_key").val('');
		$("#last_ip").val('');
		$("#is_online").val('');
		$("#domain_account").val('');
		$("#status").val('10');
		$("#create_user").val('');
		$("#create_date").val('');
		$("#update_user").val('');
		$("#update_date").val('');
		
	}
	else{
		$("#id").val(data.id);
    	$("#uname").val(data.uname);
    	$("#password").val(data.password);
    	$("#auth_key").val(data.auth_key);
    	$("#last_ip").val(data.last_ip);
    	$("#is_online").val(data.is_online);
    	$("#domain_account").val(data.domain_account);
    	$("#status").val(data.status);
    	$("#create_user").val(data.create_user);
    	$("#create_date").val(data.create_date);
    	$("#update_user").val(data.update_user);
    	$("#update_date").val(data.update_date);
    	}
	if(type == "view"){
      $("#id").attr({readonly:true,disabled:true});
      $("#uname").attr({readonly:true,disabled:true});
      $("#password").attr({readonly:true,disabled:true});
      $("#password").parent().parent().hide();
      $("#auth_key").attr({readonly:true,disabled:true});
      $("#auth_key").parent().parent().hide();
      $("#last_ip").attr({readonly:true,disabled:true});
      $("#is_online").attr({readonly:true,disabled:true});
      $("#domain_account").attr({readonly:true,disabled:true});
      $("#status").attr({readonly:true,disabled:true});
      $("#create_user").attr({readonly:true,disabled:true});
      $("#create_date").attr({readonly:true,disabled:true});
      $("#update_user").attr({readonly:true,disabled:true});
      $("#update_date").attr({readonly:true,disabled:true});
	  $('#edit_dialog_ok').addClass('hidden');
	}
	else{
      $("#id").attr({readonly:false,disabled:false});
      $("#uname").attr({readonly:true,disabled:true});
      if(type == "create"){
    	  $("#uname").attr({readonly:false,disabled:false});
    	  $("#password").attr({readonly:false,disabled:false});
          $("#password").parent().parent().show();
      }
      else{
    	  $("#uname").attr({readonly:true,disabled:true});
    	  $("#password").attr({readonly:true,disabled:true});
          $("#password").parent().parent().hide();
      }
      
      $("#auth_key").attr({readonly:true,disabled:true});
      $("#auth_key").parent().parent().hide();
      $("#last_ip").attr({readonly:true,disabled:true});
      $("#last_ip").parent().parent().hide();
      $("#is_online").attr({readonly:true,disabled:true});
      $("#is_online").parent().parent().hide();
      $("#domain_account").attr({readonly:false,disabled:false});
      $("#domain_account").parent().parent().hide();
      $("#status").attr({readonly:false,disabled:false});
      $("#create_user").attr({readonly:true,disabled:true});
      $("#create_user").parent().parent().hide();
      $("#create_date").attr({readonly:true,disabled:true});
      $("#create_date").parent().parent().hide();
      $("#update_user").attr({readonly:true,disabled:true});
      $("#update_user").parent().parent().hide();
      $("#update_date").attr({readonly:true,disabled:true});
      $("#update_date").parent().parent().hide();
	  $('#edit_dialog_ok').removeClass('hidden');
	}
	$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){
	
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('admin-user/view')?>",
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
		var checkboxs = $('#data_table :checked');
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
				   url: "<?=Url::toRoute('admin-user/delete')?>",
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
	$('#admin-user-form').submit();
});

$('#create_btn').click(function (e) {
    e.preventDefault();
    initEditSystemModule({}, 'create');
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#admin-user-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('admin-user/create')?>" : "<?=Url::toRoute('admin-user/update')?>";
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