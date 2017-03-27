<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js fixed-layout">
<head>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/css/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/css/login.css"/>'>
</head>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<body>
<body>
	<div class="signin">
		<div class="signin-head">
			<img src="<c:url value="/static/image/login/head_120.png"/>" alt=""
				width="120px" class="img-circle">
		</div>
		<form class="form-signin" role="form" action="login" method="post">
			<input type="text" class="form-control" name="userName" value="test"
				placeholder="用户名" required autofocus /> <input type="password"
				class="form-control" name="password" placeholder="密码" required value="test" />
			<button class="btn btn-lg btn-warning btn-block" type="submit">登录</button>
			<label class="checkbox"> <input type="checkbox"
				name="rememberMe"> 记住我
			</label>
		</form>
	</div>
</body>
</html>