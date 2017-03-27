(function($) {
	'use strict';

	$(function() {
		var $fullText = $('.admin-fullText');
		$('#admin-fullscreen').on('click', function() {
			$.AMUI.fullscreen.toggle();
		});

		$(document).on($.AMUI.fullscreen.raw.fullscreenchange, function() {
			$fullText.text($.AMUI.fullscreen.isFullscreen ? '退出全屏' : '开启全屏');
		});
	});
})(jQuery);
function changeRight(url, that) {
	if (that) {
		$(".menu-check").each(function() {
			$(this).removeClass("menu-check");
		});
		$(that).addClass("menu-check");
	}
	$.ajax({
		url : url,
		type : "get",
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		success : function(html) {
			$("#rightContent").html(html);
		},
		error : function() {
			changeRight('404');
		}
	});
	return false;
}
function openWindow(url, title) {
	var index = layer.open({
		type : 2,
		title : title,
		area : [ '80%', '80%' ],
		fix : false, //不固定
		maxmin : true,
		content : url
	});
}
function closeWindow() {
	parent.query();
	var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
	parent.layer.close(index);
}
