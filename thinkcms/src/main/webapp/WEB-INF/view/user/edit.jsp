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
							<label for="user-name" class="am-u-sm-3 am-form-label">用户名
								/ UserName</label>
							<div class="am-u-sm-9">
								<input type="hidden" name="id" value="${entity.id }" /> <input
									type="text" id="userName" name="userName"
									value="${entity.userName }" placeholder="用户名 / userName">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">密码
								/ PassWord</label>
							<div class="am-u-sm-9">
								<input type="password" id="description" name="password"
									placeholder="密码 / password  不修改则不填">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">电话
								/ Mobile</label>
							<div class="am-u-sm-9">
								<input type="number" id="mobile" name="mobile"
									value="${entity.mobile }" placeholder="电话 / mobile">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">昵称
								/ NiceName</label>
							<div class="am-u-sm-9">
								<input type="text" id="niceName" name="niceName"
									value="${entity.niceName }" placeholder="昵称 / niceName">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">部门
								/ Department</label>
							<div class="am-u-sm-9">
								<input type="text" id="department" name="department"
									value="${entity.department }"
									department""
									placeholder="部门 / department">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-email" class="am-u-sm-3 am-form-label">角色
								/ Role</label>
							<div class="am-u-sm-9">
								<c:forEach items="${roles }" var="item">
									<input type="checkbox" name="roleIds" value="${item.id }"
										<c:if test="${myfn:contains(userRoles, item.id)}">checked='checked'</c:if>>${item.description }
								</c:forEach>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-weibo" class="am-u-sm-3 am-form-label">是否可用
								/ Available</label>
							<div class="am-u-sm-9 am-form-select">
								<select  id="locked"
									name="locked">
									<option value="0" <c:if test="${!entity.locked}">selected="selected"</c:if>>可用</option>
									<option value="1" <c:if test="${entity.locked}">selected="selected"</c:if>>禁用</option>
								</select>
							</div>
						</div>
						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<button type="button" onclick="submitDo();"
									class="am-btn am-btn-primary">保存</button>
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
				url : "edit",
				data : data,
				method : 'post',
				contentType : 'application/x-www-form-urlencoded',
				encoding : 'UTF-8',
				cache : false,
				success : function(result) {
					if (result.success) {
						layer.msg('保存成功');
						setTimeout("closeWindow()", 1000);
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
