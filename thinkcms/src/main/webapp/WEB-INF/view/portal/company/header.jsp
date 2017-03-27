<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<header class="jd-topbar">
    <div class="jd-container" id="jd-header">
        <h1 class="am-topbar-brand">
            <a style='background:url(${siteInfo.siteLogo })' href="http://www.judaoyouda.com/#">${siteInfo.siteName }</a>
        </h1>
        <div class="am-collapse am-topbar-collapse jd-nav" id="doc-topbar-collapse">
            <ul class="am-nav am-nav-pills am-topbar-nav">
          		<li <c:if test="${category.name=='首页' }">class="am-active"</c:if>>
							<a href='<c:url value="/"/>'>首页</a>
				</li>
           		<c:forEach items="${categories.items }" var="item">
					<c:if test="${item.available }">
						<li <c:if test="${category.name==item.name }">class="am-active"</c:if>>
							<a href='<c:url value="list?categoryId=${item.id }"/>'
							<c:if test="${item.blank }">_blank</c:if>>${item.name }</a>
						</li>
					</c:if>
				</c:forEach>
            </ul>
        </div>
    </div>
</header>
