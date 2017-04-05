<%@ taglib prefix="myfn" uri="http://www.cms.com/thinkcms/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/css/bootstrap.min.css"/>'>
<%@ include file="/WEB-INF/view/common/head.jsp"%>
<script type="text/javascript"
	src="<c:url value="/static/js/bootstrap-treeview.js"/>"></script>
</head>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<body>
	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<hr>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-10">
					<form class="am-form am-form-horizontal" id="form">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">收信人
								/ UserName</label>
							<div class="am-u-sm-9">
								<%-- <input type="hidden" name="id" value="${entity.id }" /> --%> <input
									type="text" id="phone" name="phone"
									 placeholder="收信人 / userName"  value="${phone}">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">短信内容
								/ Context</label>
							<div class="am-u-sm-9">
								<input type="text" id="context" name="context"
									 placeholder="内容 / context">
							</div>
						</div>


						<div class="am-form-group" style="margin-left: 500px;">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<button type="button" onclick="submitDo();"
									class="am-btn am-btn-primary">发送</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<%@ include file="/WEB-INF/view/common/footer.jsp"%>

	</div>
	<!-- content end -->

	<!-- content end -->
	<script type="text/javascript">
		function submitDo() {
			var data = $("#form").serialize();
			data = decodeURIComponent(data, true);
			$.ajax({
				url : "sendMessage",
				data : data,
				method : 'post',
				contentType : 'application/x-www-form-urlencoded',
				encoding : 'UTF-8',
				cache : false,
				success : function(result) {
					alert(result);
					if (result==1) {
						layer.msg('发送成功');
						setTimeout("closeWindow()", 1000);
					} else {
						layer.msg('发送失败');
					}
				},
				error : function() {
					layer.msg('系统异常');
				}
			});
		}
	</script>
</body>
</html>
