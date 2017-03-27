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
	<!--header-->
	<header class="am-topbar am-topbar-fixed-top wos-header">
	<div class="am-container">
		<h1 class="am-topbar-brand">
			<a href="http://www.html5dw.com/news#"><img
				src="<c:url value="/static/image/portal/zuqiu/logo_new.png"/>" alt=""></a>
		</h1>
		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-warning am-show-sm-only"
			data-am-collapse="{target: &#39;#collapse-head&#39;}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>
		<div class="am-collapse am-topbar-collapse" id="collapse-head">
			<ul class="am-nav am-nav-pills am-topbar-nav">
				<li><a href="<c:url value="/"/>">首页</a></li>
				<li class="am-active"><a href="<c:url value="/list?categoryId=4"/>">资讯</a></li>
				<li><a href="<c:url value="/list?categoryId=5"/>">案例</a></li>
				<li><a href="http://www.html5dw.com/profile">评测</a></li>
				<li><a href="http://www.html5dw.com/events">活动</a></li>
				<li id="wsc"><a href="http://wsc.html5dw.com/">WSC</a></li>
			</ul>
		</div>
	</div>
	</header>

<style>
#wsc {
	
}

#wsc a {
	
}

#wsc a:after {
	content: '热门活动';
	font-size: 12px;
	color: #fff;
	z-index: 99999;
	position: absolute;
	left: 40px;
	top: 6px;
	width: 70px;
	height: 20px;
	background: rgba(255, 65, 29, .8);
	box-shadow: 1px 1px 10px rgba(0, 0, 0, .26);
	opacity: 1;
	line-height: 20px;
	border: none;
	text-align: center;
	border-radius: 13px;
}
</style>
	<!--news-->
	<div class="am-g am-container padding-none">
		<div class="am-u-sm-12 am-u-md-12 am-u-lg-8">
			<div data-am-widget="list_news"
				class="am-list-news am-list-news-default  am-no-layout">
				<div class="am-list-news-bd">
					<ul class="am-list">
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1726"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467956418575663.jpg"/>"
									alt="《通知》正式施行 白鹭时代首推H5行业版号审批解决方案" style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1726">《通知》正式施行
										白鹭时代首推H5行业版号审批解决方案</a>
								</h3>
								<div class="am-list-item-text">
									继6月2日，国家新闻出版广电总局正式发布《关于移动游戏出版服...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/08</i> <i
								class="am-icon-hand-pointer-o">37</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1725"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467945024864131.gif"/>" alt="我理想中的前端工作流"
									style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1725">我理想中的前端工作流</a>
								</h3>
								<div class="am-list-item-text">
									在日常的前端开发中，我们会遇到&nbsp;LESS/SASS 编译、CSS 前缀自...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/08</i> <i
								class="am-icon-hand-pointer-o">23</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1724"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467944487954655.png"/>"
									alt="CSS进阶：提高你前端水平的 4 个技巧" style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1724">CSS进阶：提高你前端水平的
										4 个技巧</a>
								</h3>
								<div class="am-list-item-text">译者注：随着 Node.js
									、react-native 等技术的不断出现，和互...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/08</i> <i
								class="am-icon-hand-pointer-o">182</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1722"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467881072716759.jpg"/>"
									alt="专访WeX5开发工具CEO马科：HTML5就是当前App开发中最闪亮的网红"
									style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1722">专访WeX5开发工具CEO马科：HTML5就是当前App开发中最闪亮的网红</a>
								</h3>
								<div class="am-list-item-text">&nbsp; &nbsp; &nbsp;
									&nbsp;2014年10月HTML5标准协议正式定稿后，关于HTML5如...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/07</i> <i
								class="am-icon-hand-pointer-o">10</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1721"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467879934733266.jpg"/>"
									alt="HTML5技术在企业级市场崛起，青雀解决方案受青睐" style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1721">HTML5技术在企业级市场崛起，青雀解决方案受青睐</a>
								</h3>
								<div class="am-list-item-text">
									企业移动化并不是新鲜概念，随着移动互联网快速崛起，个人用户...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/07</i> <i
								class="am-icon-hand-pointer-o">12</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1720"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467789560110178.jpg"/>"
									alt="7月16日三城火热报名中：“创+”微生态思想汇" style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1720">7月16日三城火热报名中：“创+”微生态思想汇</a>
								</h3>
								<div class="am-list-item-text">
									在移动互联网蓬勃发展的今天，“自媒体”凭借着传播速度快，内...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/06</i> <i
								class="am-icon-hand-pointer-o">27</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1719"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467621706973528.jpg"/>"
									alt="44个 Javascript 变态题解析 (下)" style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1719">44个
										Javascript 变态题解析 (下)</a>
								</h3>
								<div class="am-list-item-text">第23题[1 &lt; 2 &lt; 3, 3
									&lt; 2 &lt; 1]这个题也还可以.这个题会让人误...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/04</i> <i
								class="am-icon-hand-pointer-o">61</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1718"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467621657575742.jpg"/>"
									alt="44 个 Javascript 变态题解析 (上)" style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1718">44 个
										Javascript 变态题解析 (上)</a>
								</h3>
								<div class="am-list-item-text">第1题["1", "2",
									"3"].map(parseInt)知识点:Array/mapNumber/...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/04</i> <i
								class="am-icon-hand-pointer-o">51</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1717"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467616028687787.jpg"/>" alt="前端组件化开发实践"
									style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1717">前端组件化开发实践</a>
								</h3>
								<div class="am-list-item-text">前言一位计算机前辈曾说过：Controlling
									complexity is the e...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/04</i> <i
								class="am-icon-hand-pointer-o">187</i>
						</div>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left"
							style="border-top: 0px">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1716"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467344237522493.jpg"/>"
									alt="《HTML5与CSS3基础教程》(第8版)第三章全部内容" style="max-height: 320px">
								</a>
							</div>

							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
									<a href="http://www.html5dw.com/post?id=1716">《HTML5与CSS3基础教程》(第8版)第三章全部内容</a>
								</h3>
								<div class="am-list-item-text">HTML5DW讯
									自HTML5梦工场与“图灵教育”联合推出“HTML5图书免...</div>
							</div>
						</li>
						<div class="newsico am-fr">
							<i class="am-icon-clock-o">2016/07/01</i> <i
								class="am-icon-hand-pointer-o">129</i>
						</div>
					</ul>
					<ul data-am-widget="pagination"
						class="am-pagination am-pagination-centered am-pagination-default am-no-layout">
						<li class="am-pagination-first"><a
							href="http://www.html5dw.com/news#" class="am-hide-sm">第一页</a></li>
						<li class="am-pagination-prev"><a
							href="http://www.html5dw.com/news#" class="">上一页</a></li>
						<li id="wos-pagination-prev-more" style="display: none"><a
							class="am-hide-sm">...</a></li>
						<li><a href="javascript:;" class="am-hide-sm">1</a></li>
						<li><a href="http://www.html5dw.com/news?page=2"
							class="am-hide-sm">2</a></li>
						<li><a href="http://www.html5dw.com/news?page=3"
							class="am-hide-sm">3</a></li>
						<li><a href="http://www.html5dw.com/news?page=4"
							class="am-hide-sm">4</a></li>
						<li><a href="http://www.html5dw.com/news?page=5"
							class="am-hide-sm">5</a></li>
						<li id="wos-pagination-next-more" style="display: none"><a
							class="am-hide-sm">...</a></li>
						<li class="am-pagination-next"><a
							href="http://www.html5dw.com/news?page=2" class="">下一页</a></li>
						<li class="am-pagination-last"><a
							href="http://www.html5dw.com/news?page=136" class="am-hide-sm">最末页</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="am-u-sm-0 am-u-md-0 am-u-lg-4 am-hide-sm">
			<div class="tag bgtag">
				<div data-am-widget="titlebar"
					class="am-titlebar am-titlebar-default am-no-layout">
					<h2 class="am-titlebar-title ">热门标签</h2>
				</div>
				<ul>
					<li><a href="http://www.html5dw.com/tag?id=1">JavaScript</a></li>
					<li><a href="http://www.html5dw.com/tag?id=2">CSS</a></li>
					<li><a href="http://www.html5dw.com/tag?id=3">jQuery</a></li>
					<li><a href="http://www.html5dw.com/tag?id=4">VR</a></li>
					<li><a href="http://www.html5dw.com/tag?id=5">APP</a></li>
					<li><a href="http://www.html5dw.com/tag?id=6">nodejs</a></li>
					<li><a href="http://www.html5dw.com/tag?id=7">Chrome</a></li>
					<li><a href="http://www.html5dw.com/tag?id=8">DOM</a></li>
					<li><a href="http://www.html5dw.com/tag?id=9">CSS3</a></li>
					<li><a href="http://www.html5dw.com/tag?id=10">游戏</a></li>
					<li><a href="http://www.html5dw.com/tag?id=11">娜喊杯</a></li>
					<li><a href="http://www.html5dw.com/tag?id=12">前端框架</a></li>
					<li><a href="http://www.html5dw.com/tag?id=13">HTML5</a></li>
					<li><a href="http://www.html5dw.com/tag?id=14">HTML5游戏</a></li>
					<li><a href="http://www.html5dw.com/tag?id=15">渠道发行</a></li>
					<li><a href="http://www.html5dw.com/tag?id=16">流量</a></li>
					<li><a href="http://www.html5dw.com/tag?id=17">微信</a></li>
					<li><a href="http://www.html5dw.com/tag?id=18">3D</a></li>
					<li><a href="http://www.html5dw.com/tag?id=19">WebGL</a></li>
					<li><a href="http://www.html5dw.com/tag?id=20">RunTime</a></li>
					<li><a href="http://www.html5dw.com/tag?id=21">互动营销</a></li>
					<li><a href="http://www.html5dw.com/tag?id=22">游戏平台</a></li>
					<li><a href="http://www.html5dw.com/tag?id=23">白鹭引擎</a></li>
					<li><a href="http://www.html5dw.com/tag?id=24">LayaBox</a></li>
					<li><a href="http://www.html5dw.com/tag?id=25">COCOS</a></li>
					<li><a href="http://www.html5dw.com/tag?id=26">H5</a></li>
					<li><a href="http://www.html5dw.com/tag?id=27">H5营销</a></li>
					<li><a href="http://www.html5dw.com/tag?id=28">H5游戏</a></li>
					<li><a href="http://www.html5dw.com/tag?id=29">H5广告</a></li>
					<li><a href="http://www.html5dw.com/tag?id=30">支付</a></li>
					<li><a href="http://www.html5dw.com/tag?id=31">广告</a></li>
					<li><a href="http://www.html5dw.com/tag?id=32">云平台</a></li>
					<li><a href="http://www.html5dw.com/tag?id=33">外包</a></li>
					<li><a href="http://www.html5dw.com/tag?id=34">HTML5峰会</a></li>
					<li><a href="http://www.html5dw.com/tag?id=35">梦工场</a></li>
					<li><a href="http://www.html5dw.com/tag?id=37">egret</a></li>
					<li><a href="http://www.html5dw.com/tag?id=40">HTML5引擎</a></li>
				</ul>
				<div class="am-cf"></div>
			</div>
		</div>
	</div>
	<div data-am-widget="gotop"
		class="am-gotop am-gotop-fixed am-no-layout">
		<a href="http://www.html5dw.com/news#top" title="回到顶部"> <span
			class="am-gotop-title">回到顶部</span> <i
			class="am-gotop-icon am-icon-chevron-up"></i>
		</a>
	</div>
	<footer>
	<div class="content">
		<ul class="am-avg-sm-5 am-avg-md-5 am-avg-lg-5 am-thumbnails">
			<li><a href="http://www.html5dw.com/about/#connect">联系我们</a></li>
			<li><a href="http://www.html5dw.com/about/#join">加入我们</a></li>
			<li><a href="http://www.html5dw.com/about/#partner">合作伙伴</a></li>
			<li><a href="http://www.html5dw.com/about/#service">广告及服务</a></li>
			<li><a href="http://www.html5dw.com/about/#link">友情链接</a></li>
		</ul>

		<p class="copyright">京ICP备11008918号-3 Copyright ©2015 HTML5梦工场
			助推HTML5发展</p>

		<a href="http://amazeui.org/" class="support"> <span>自豪的使用
				Amaze UI</span> <img src="<c:url value="/static/image/portal/zuqiu/amazeui-logo.png"/>">
		</a>

	</div>

	</footer>
</body>
</html>
