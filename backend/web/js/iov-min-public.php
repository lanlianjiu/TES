<?php
use yii\helpers\Url;
$severUrlparam = $_SERVER["QUERY_STRING"];
?>
<script>
   var pa = <?php echo json_encode($severUrlparam); ?>;
		console.log(pa);
/*表格初始化*/
$('[data-toggle="table"]').each(function () {

	var $this = $(this);
	var tableId = $("#" + $this.attr("id"));
	var tableUrl = $this.attr("data-custom-url");
	var exportType = $this.attr("data-export-type") || "all";
	var autoHeight = $.utils.windowHeight() - tableId.offset().top - (Number(tableId.attr('data-autoheight')));

	var option = {
		url: tableUrl,
		height: autoHeight
	};

	$.extend(tableId.bootstrapTable.defaults, option);

	//导出
	function DoOnCellHtmlData(cell, row, col, data) {
		var result = "";
		if (typeof data != 'undefined' && data != "") {
			var html = $.parseHTML(data);

			$.each(html, function () {
				if (typeof $(this).html() === 'undefined')
					result += $(this).text();
				else if (typeof $(this).attr('class') === 'undefined' || $(this).hasClass('th-inner') === true)
					result += $(this).html();
			});
		}
		return result;
	};

	tableId.bootstrapTable('refreshOptions', {
		exportOptions: {
			ignoreColumn: [0, 1], // or as string array: ['0','checkbox']
			onCellHtmlData: DoOnCellHtmlData,
			exportDataType: exportType
		}
	});

});
/*表格初始化*/

//表格搜索
$("[bootstrap-table-search]").on('click', function () {
	$this = $(this);

	var table_id = $this.attr("bootstrap-table-search");

	var searchForm = $("[bootstrap-table-form=" + table_id + "]");

	var searchParams = searchForm.serializeObject();

	var tableUrl = $("#" + table_id).attr("data-custom-url");

	var params = {
		url: tableUrl,
		query: searchParams
	};

	$("#" + table_id).bootstrapTable('refresh', params);

});

</script>