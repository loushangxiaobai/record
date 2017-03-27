<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<head>
<%@ include file="/WEB-INF/view/portal/company/portalHead.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/view/portal/company/header.jsp"%>
	<div>
		<img src="<c:url value="/static/image/portal/company/ban2.jpg"/>">
	</div>
	<div class="am-container-1">
		<ul data-am-widget="gallery"
			class="am-gallery am-avg-sm-1 am-avg-md-3 am-avg-lg-4 am-gallery-bordered customer-case-ul"
			data-am-gallery="{  }">
			<c:forEach items="${list.items }" var="item">
				<li>
					<div class="am-gallery-item">
						<a href="#" onclick="openArticle(${item.id},${item.categoryId })">
							<div class="customer-case-img">
								<img src='${item.imgUrl }' />
							</div>
							<h3 class="am-gallery-title">${item.title }</h3>
							<div class="am-gallery-desc gallery-words">${item.remark }</div>
						</a>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

	<%@ include file="/WEB-INF/view/portal/company/footer.jsp"%>
	<script type="text/javascript">
		function openArticle(id,categoryId) {
			window.location.href = '<c:url value="/article?id='+id+'&categoryId='+categoryId+'"/>';
		}
	</script>
</body>
</html>
