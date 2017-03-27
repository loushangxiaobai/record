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
							<label for="user-name" class="am-u-sm-3 am-form-label">栏目名称
								/ Name</label>
							<div class="am-u-sm-9">
							<input type="hidden" name="id" value="${entity.id }" >
								<input type="text" id="description" name="name" value="${entity.name }"
									placeholder="栏目名称 / Name">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">所属父级
								/ Parent</label>
							<div class="am-u-sm-9">
								<input type="text" name="parentName" id="parentName" value="${entity.parentName }" readonly>
								<div id="tree"></div>
								<input type="hidden" name="parentId" id="parentId">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-weibo" class="am-u-sm-3 am-form-label">是否可用
								/ Available</label>
							<div class="am-u-sm-9 am-form-select">
								<select  id="available" name="available">
									<option value="1" <c:if test="${entity.available}">selected="selected"</c:if>>是</option>
									<option value="0" <c:if test="${!entity.available}">selected="selected"</c:if>>否</option>
								</select>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">列表样式
								/ ListType</label>
							<div class="am-u-sm-9">
								<input type="text" id="listType" name="listType" value="${entity.listType }"
									placeholder="列表样式 / ListType">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">跳转链接
								/ Url</label>
							<div class="am-u-sm-9">
								<input type="text" id="url" name="url" value="${entity.url }"
									placeholder="跳转链接 / Url">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-weibo" class="am-u-sm-3 am-form-label">是否新开页签
								/ Blank</label>
							<div class="am-u-sm-9 am-form-select">
								<select  id="blank" name="blank">
									<option value="1" <c:if test="${entity.blank}">selected="selected"</c:if>>是</option>
									<option value="0" <c:if test="${!entity.blank}">selected="selected"</c:if>>否</option>
								</select>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-QQ" class="am-u-sm-3 am-form-label">显示顺序
								/ ShowOrder</label>
							<div class="am-u-sm-9">
								<input type="number" pattern="[0-9]*" id="showOrder" name="showOrder" value="${entity.showOrder }"
									placeholder="菜单显示顺序   / ShowOrder">
							</div>
						</div>

						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<button type="button" onclick="submitDo();" class="am-btn am-btn-primary">保存</button>
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
		$(function() {
			$('#tree').treeview({
				data :'${category}'
			});
			$("#parentId").val($('#tree').treeview('getSelected')[0].tags);
			$("#parentName").val($('#tree').treeview('getSelected')[0].text);
			$('#tree').on('nodeSelected', function(event, data) {
				$("#parentId").val($('#tree').treeview('getSelected')[0].tags);
				$("#parentName").val($('#tree').treeview('getSelected')[0].text);
			});
		});
		function submitDo(){
			var data = $("#form").serialize();
			data = decodeURIComponent(data, true);
			$.ajax({
				url : "edit",
				data : data,
				method : 'post',
				contentType : 'application/x-www-form-urlencoded',
				encoding : 'UTF-8',
				cache : false,
				success : function(result) {
					if (result.success) {
						layer.msg('保存成功');
						setTimeout("closeWindow()",1000);
					} else {
						layer.msg('保存失败');
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
