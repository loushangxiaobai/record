<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<head>
<%@ include file="/WEB-INF/view/portal/default/portalHead.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/view/portal/default/header.jsp"%>
	<%@ include file="/WEB-INF/view/portal/default/top.jsp"%>

	<div class=" am-container-1">
		<div class="service-center">
			<ul class="service-ul">
				<c:forEach items="${list.items }" var="item">
					<li class="am-u-lg-12 am-u-md-12 am-u-sm-12" >
						
							<div class="am-u-lg-8 am-u-md-8 am-u-sm-12 service-content">
								<a href="#" onclick="openArticle(${item.id},${item.categoryId })">
									<h4 class="w-blue" >${item.title }</h4>
								</a>
								<p>${item.remark }</p>
							</div>
							<div class="am-u-lg-4 am-u-md-4 am-u-sm-12 service-img">
								<a href="#" onclick="openArticle(${item.id},${item.categoryId })">
									<img src='<c:url value="${item.imgUrl }"/>'  />
								</a>
							</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/portal/default/footer.jsp"%>
	<script type="text/javascript">
		function openArticle(id,categoryId) {
			window.location.href = '<c:url value="/article?id='+id+'&categoryId='+categoryId+'"/>';
		}
	</script>
</body>
</html>
