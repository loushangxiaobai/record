<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
			<img class=" logo"
				src='${siteInfo.siteLogo }'></img>
				<span class="am-serif">${siteInfo.siteName }</span>
		</div>
		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#doc-topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse right"
			id="doc-topbar-collapse">

			<div class=" am-topbar-left am-form-inline am-topbar-right"
				role="search">
				<ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
					<li <c:if test="${category.name=='首页' }">class="hw-menu-active"</c:if>>
								<a href='<c:url value="/"/>'>首页</a>
					</li>
					<c:forEach items="${categories.items }" var="item">
						<c:if test="${item.available }">
							<li <c:if test="${category.name==item.name }">class="hw-menu-active"</c:if>>
								<a href='<c:url value="list?categoryId=${item.id }"/>'
								<c:if test="${item.blank }">_blank</c:if>>${item.name }</a>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>

		</div>
	</div>
</header>
