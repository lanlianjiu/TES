<?php
use yii\helpers\Url;
?>

<script>

function sendMassage(){
	console.log(2343)
	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('web-content/sendsms')?>",
		   cache: false,
		   dataType:"json",
		   error: function (xmlHttpRequest, textStatus, errorThrown) {
			    alert("出错了，" + textStatus);
			},
		   success: function(data){
			  console.log(23423);
		   }
		});
}
</script>