<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LarryCMS管理系统</title>
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
	href='<c:url value="/static/common/global.css" />'>
	<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/admin/css/adminstyle.css" />'>
	
</head>
<body>
<div class="layui-layout layui-layout-admin" id="layui_layout">
	<!-- 顶部区域 -->
	<div class="layui-header header header-demo">
		<div class="layui-main">
		    <!-- logo区域 -->
			<div class="admin-logo-box">
				<a class="logo" href="http://www.kuxuebao.net" title="logo"><img src="<c:url value="/static/admin/images/logo.png"/>" alt=""></a>
				<div class="larry-side-menu">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
			</div>
            <!-- 顶级菜单区域 -->
            <div class="layui-larry-menu">
                 <ul class="layui-nav clearfix">
                       <li class="layui-nav-item layui-this">
                 	   	   <a href="javascirpt:;"><i class="iconfont icon-wangzhanguanli"></i>内容管理</a>
                 	   </li>
                 	   <li class="layui-nav-item">
                 	   	   <a href="javascirpt:;"><i class="iconfont icon-weixin3"></i>微信公众</a>
                 	   </li>
                 	   <li class="layui-nav-item">
                 	   	   <a href="javascirpt:;"><i class="iconfont icon-ht_expand"></i>扩展模块</a>
                 	   </li>
                 </ul>
            </div>
            <!-- 右侧导航 -->
            <ul class="layui-nav larry-header-item">
            		<li class="layui-nav-item first">
						<a href="javascript:;">
							<img src="images/userimg.jpg" class="userimg">			
							<cite>默认站点</cite>
							<span class="layui-nav-more"></span>
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="">站点1</a>
							</dd>
							<dd>
								<a href="">站点2</a>
							</dd>
							
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;" id="lock">
                        <i class="iconfont icon-diannao1"></i>
						锁屏</a>
					</li>
					<li class="layui-nav-item">
						<a href="login.html">
                        <i class="iconfont icon-exit"></i>
						退出</a>
					</li>
            </ul>
		</div>
	</div>
	<!-- 左侧侧边导航开始 -->
	<div class="layui-side layui-side-bg layui-larry-side" id="larry-side">
        <div class="layui-side-scroll" id="larry-nav-side" lay-filter="side">
		<div class="user-photo">
			<a class="img" title="我的头像" >
				<img src="<c:url value="/static/admin/images/user.jpg"/>" class="userimg1"></a>
			<p>你好！admin, 欢迎登录</p>
		</div>
		<!-- 左侧菜单 -->
		<ul class="layui-nav layui-nav-tree">
			<li class="layui-nav-item layui-this">
				<a href="javascript:;" data-url="main.html">
				    <i class="iconfont icon-home1" data-icon='icon-home1'></i>
					<span>后台首页</span>
				</a>
			</li>
			<!-- 个人信息 -->
			<li class="layui-nav-item">
				<a href="javascript:;">
					<i class="iconfont icon-jiaoseguanli" ></i>
					<span>我的面板</span>
					<em class="layui-nav-more"></em>
				</a>
				<dl class="layui-nav-child">
                    <dd>
                        <a href="javascript:;" data-url="personInfo.html">
                            <i class="iconfont icon-geren1" data-icon='icon-geren1'></i>
                            <span>个人信息</span>
                        </a>
                    </dd>
                    <dd>
                        <a href="javascript:;" data-url="changepwd.html">
                            <i class="iconfont icon-iconfuzhi01" data-icon='icon-iconfuzhi01'></i>
                            <span>修改密码</span>
                        </a>
                    </dd>
                    <dd>
                        <a href="javascript:;" data-url="myloginfo.html">
                            <i class="iconfont icon-piliangicon" data-icon='icon-piliangicon'></i>
                            <span>日志信息</span>
                        </a>
                    </dd>
                </dl>
			</li>
			<!-- 用户管理 -->
			<li class="layui-nav-item">
					<a href="javascript:;">
					   <i class="iconfont icon-jiaoseguanli2" ></i>
					   <span>用户管理</span>
					   <em class="layui-nav-more"></em>
					</a>
					    <dl class="layui-nav-item">
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
									<dd>
										<shiro:hasPermission name="${menu.permission }">
											<a href="javascript:void(0);" onclick="changeRight('${menu.permission }',this);" class="am-cf">
											<span class="${menu.icon }"></span>${menu.description }
											</a>
										</shiro:hasPermission>
									</dd>
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
					    </dl>
			    </li>
			
		</ul>
	    </div>
	</div>

	<!-- 左侧侧边导航结束 -->
	<!-- 右侧主体内容 -->
	<div class="layui-body" id="larry-body" style="bottom: 0;border-left: solid 2px #1AA094;">
		<div class="layui-tab layui-tab-card larry-tab-box" id="larry-tab" lay-filter="demo" lay-allowclose="true">
			<ul class="layui-tab-title">
				<li class="layui-this" id="admin-home"><i class="iconfont icon-diannao1"></i><em>后台首页</em></li>
			</ul>
			<div class="layui-tab-content" style="min-height: 150px; ">
				<div class="layui-tab-item layui-show">
					<iframe class="larry-iframe" data-id='0' src="<c:url value="/static/common/main.html"/>"></iframe>
				</div>
			</div>
		</div>

        
	</div>
	<!-- 底部区域 -->
	<div class="layui-footer layui-larry-foot" id="larry-footer">
		<div class="layui-mian">
		    
		    <p class="p-admin">
		    	<span>2016 &copy;</span>
		    	Write by Larry,<a href="http://www.larrycms.com">LarryCMS</a>. 版权所有
		    	
		    </p>
		</div>
	</div>
</div>
<!-- 加载js文件-->
    <script type="text/javascript" src="<c:url value="/static/common/layui/layui.js"/>"></script>
     <script type="text/javascript" src="<c:url value="/static/admin/js/layui.js"/>"></script>
     <script type="text/javascript" src="<c:url value="/static/admin/js/index.js"/>"></script>
	<!-- <script type="text/javascript" src="../common/layui/layui.js"></script> 
	<script type="text/javascript" src="js/larry.js"></script>
	<script type="text/javascript" src="js/index.js"></script> -->
<!-- 锁屏 -->
<div class="lock-screen" style="display: none;">
	<div id="locker" class="lock-wrapper">
		<div id="time"></div>
		<div class="lock-box center">
			<img src="images/userimg.jpg" alt="">
			<h1>admin</h1>
			<duv class="form-group col-lg-12">
				<input type="password" placeholder='锁屏状态，请输入密码解锁' id="lock_password" class="form-control lock-input" autofocus name="lock_password">
				<button id="unlock" class="btn btn-lock">解锁</button>
			</duv>
		</div>
	</div>
</div>
<!-- 菜单控件 -->
<!-- <div class="larry-tab-menu">
	<span class="layui-btn larry-test">刷新</span>
</div> -->
<!-- iframe框架刷新操作 -->
<!-- <div id="refresh_iframe" class="layui-btn refresh_iframe">刷新</div> -->
</body>
</html>