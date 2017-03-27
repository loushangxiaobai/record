<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js fixed-layout">
<head>
<%@ include file="/WEB-INF/view/common/head.jsp"%>
</head>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<body>
<header class="am-topbar am-topbar-inverse admin-header">
<div class="am-topbar-brand">
	<strong>Think CMS</strong> <small>后台管理</small>
</div>

<button
	class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
	data-am-collapse="{target: '#topbar-collapse'}">
	<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
</button>

<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

	<ul
		class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
		<li><a href="javascript:;"><span class="am-icon-github"></span>
				当前用户:<shiro:principal></shiro:principal></a></li>
		<li><a href='<c:url value="/" />' target="_blank"><span class="am-icon-home"></span>
				首页</a></li>
		<li class="am-dropdown" data-am-dropdown><a
			class="am-dropdown-toggle" data-am-dropdown-toggle
			href="javascript:;"> <span class="am-icon-users"></span> 管理员 <span
				class="am-icon-caret-down"></span>
		</a>
			<ul class="am-dropdown-content">
				<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
				<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
				<li><a href="logout"><span class="am-icon-power-off"></span> 退出</a></li>
			</ul></li>
		<li class="am-hide-sm-only"><a href="javascript:;"
			id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span
				class="admin-fullText">开启全屏</span></a></li>
	</ul>
</div>
</header>

<div class="am-cf admin-main">
	<!-- sidebar start -->
	<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
		<div class="am-offcanvas-bar admin-offcanvas-bar">
			<ul class="am-list admin-sidebar-list">
				<c:forEach items="${menu.childList }" var="item">
					<c:if test="${item.childList!=null }">
						<li class="admin-parent">
						<shiro:hasPermission name="${item.permission }">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav${item.id }'}">
							 <span class="${item.icon }"></span> ${item.description } 
							 <span class="am-icon-angle-right am-fr am-margin-right"></span>
							</a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in"
								id="collapse-nav${item.id }">
								<c:forEach items="${item.childList }" var="menu">
									<li>
										<shiro:hasPermission name="${menu.permission }">
											<a href="javascript:void(0);" onclick="changeRight('${menu.permission }',this);" class="am-cf">
											<span class="${menu.icon }"></span>${menu.description }
											</a>
										</shiro:hasPermission>
									</li>
								</c:forEach>
							</ul>
							</shiro:hasPermission>
						</li>
					</c:if>	
					<c:if test="${item.childList==null }">
						<shiro:hasPermission name="${item.permission }">
							<li>
								<a href="javascript:void(0);" onclick="changeRight('${item.permission }',this);" id="${item.id }" class="am-cf">
									<span class="${item.icon }"></span> ${item.description }
								</a>
							</li>
						</shiro:hasPermission>
					</c:if>
				</c:forEach>
			</ul>

			<!-- <div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-bookmark"></span> 公告
					</p>
					<p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
				</div>
			</div>

			<div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-tag"></span> wiki
					</p>
					<p>Welcome to the Amaze UI wiki!</p>
				</div>
			</div> -->
		</div>
	</div>
	<!-- sidebar end -->
	<!-- 右侧内容 -->
	<div class="admin-content" id="rightContent"></div>
</div>

<a href="#"
	class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
	data-am-offcanvas="{target: '#admin-offcanvas'}"></a>
<!-- <script type="text/javascript">
	$(function() {
		changeRight('admin/index',$("#2"));
	});
</script> -->
</body>
</html>
