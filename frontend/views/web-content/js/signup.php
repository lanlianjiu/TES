<?php
use yii\helpers\Url;
?>

<script>

function sendMassage(id, type, fun){
	console.log(2343)
	// $.ajax({
	// 	   type: "GET",
	// 	   url: "<?=Url::toRoute('web-content/sendsms')?>",
	// 	   data: {"id":id},
	// 	   cache: false,
	// 	   dataType:"json",
	// 	   error: function (xmlHttpRequest, textStatus, errorThrown) {
	// 		    alert("出错了，" + textStatus);
	// 		},
	// 	   success: function(data){
	// 		   initEditSystemModule(data, type);
	// 	   }
	// 	});
}
</script>