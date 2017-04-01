<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" type="image/x-icon" href='<c:url value="/static/image/favicon.ico" />' />  
	<meta charset="UTF-8">
	<title>1小时备案管理系统</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<!-- load css -->
	<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/common/layui/css/layui.css" />'>
	<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/admin/css/login.css" />'>
</head>
<body>
<div class="layui-canvs"></div>
<div class="layui-layout layui-layout-login">
	<h1>
		 <strong>1小时备案管理系统</strong>
		 <em>Record System</em>
	</h1>
	<form class="form-signin" role="form" action="login" method="post">
	<div class="layui-user-icon larry-login">
		 <input type="text" placeholder="账号" value="xiaobai" name="userName" class="login_txtbx"/>
	</div>
	<div class="layui-pwd-icon larry-login">
		 <input type="password" placeholder="密码" value="123456" name="password" class="login_txtbx"/>
	</div>
	
    <div class="layui-submit larry-login">
    	<input type="submit" value="立即登陆" class="submit_btn"/>
    </div>
    </form>
    <div class="layui-login-text">
    	<p>© 广州一小时通信设备有限公司 版权所有</p>
        
    </div>
</div>
<script type="text/javascript" src="<c:url value="/static/common/layui/lay/dest/layui.all.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/admin/js/login.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/admin/jsplug/jparticle.jquery.js"/>"></script>
<script type="text/javascript">
$(function(){
	$(".layui-canvs").jParticle({
		background: "#141414",
		color: "#E6E6E6"
	});
	//登录链接测试，使用时可删除
	$(".submit_btn").click(function(){
	  location.href="index.html";
	});
});
</script>
</body>
</html>