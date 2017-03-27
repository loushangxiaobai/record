<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<head>
<%@ include file="/WEB-INF/view/portal/zuqiu/portalHead.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/view/portal/zuqiu/header.jsp"%>
	<%@ include file="/WEB-INF/view/portal/zuqiu/top.jsp"%>
	<div class="am-container">
		<article class="am-article">
		<div class="am-article-hd">
			<br>
			<h1 class="am-article-title">${entity.title }</h1>
			<br>
			<p class="am-article-meta">作者：${entity.author }</p>
			<br>
			<p class="am-article-meta">发布日期：${entity.createDate }</p>
			<br>
		</div>

		<div class="am-article-bd">
			<p class="am-article-lead">摘要：${entity.remark }</p>
			<hr>
			${entity.content }
			<hr>
		</div>
		</article>
	</div>
	<%@ include file="/WEB-INF/view/portal/zuqiu/footer.jsp"%>
</body>
</html>
