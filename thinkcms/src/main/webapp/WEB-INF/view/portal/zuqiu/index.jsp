<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
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
				<a href="http://www.html5dw.com/#"><img
					src="<c:url value="/static/image/portal/zuqiu/"/>logo_new.png" alt=""></a>
			</h1>
			<button
				class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-warning am-show-sm-only"
				data-am-collapse="{target: &#39;#collapse-head&#39;}">
				<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
			</button>
			<div class="am-collapse am-topbar-collapse" id="collapse-head">
				<ul class="am-nav am-nav-pills am-topbar-nav">
					<li class="am-active"><a href="<c:url value="/"/>">首页</a></li>
					<li><a href="<c:url value="/list?categoryId=4"/>">资讯</a></li>
					<li><a href="<c:url value="/list?categoryId=5"/>">案例</a></li>
					<li><a href="http://www.html5dw.com/profile">评测</a></li>
					<li><a href="http://www.html5dw.com/events">活动</a></li>
					<li id="wsc"><a href="http://wsc.html5dw.com/">WSC</a></li>
				</ul>
				<!--             <div class="am-topbar-right">
                <button class="am-btn am-btn-default am-topbar-btn am-btn-sm"><span class="am-icon-pencil"></span>注册</button>
            </div>
            <div class="am-topbar-right">
                <button class="am-btn am-btn-danger am-topbar-btn am-btn-sm"><span class="am-icon-user"></span> 登录</button>
            </div> -->
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
.am-u-sm-5 .am-list-thumb img{
width:310px;
height:180px;
}
</style>
	<div class="banner">
		<div class="am-g am-container">
			<!-- 幻灯片 -->
			<div class="am-u-sm-12 am-u-md-12 am-u-lg-8">
				<div data-am-widget="slider"
					class="am-slider am-slider-c1 am-no-layout"
					data-am-slider="{&quot;directionNav&quot;:false}"
					style="margin-top: 40px">

					<div class="am-viewport"
						style="overflow: hidden; position: relative;">
						<ul class="am-slides"
							style="width: 1200%; transition-duration: 0.6s; transform: translate3d(-3228px, 0px, 0px);">
							<li class="clone" aria-hidden="true"
								style="width: 807px; float: left; display: block;"><a
								href="http://2016.html5dw.com/beijing"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467872304674586.jpg"/>"
									draggable="false">

									<div class="am-slider-desc">2016 iWeb峰会北京站即将开启，为HTML5娜喊！
									</div>
							</a></li>
							<li class="" style="width: 807px; float: left; display: block;">
								<a href="http://www.html5dw.com/post?id=1704"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467265137717304.jpg"/>"
									draggable="false">

									<div class="am-slider-desc">腾讯前端用实例讲干货：玩转HTML5移动页面动效</div>
							</a>
							</li>
							<li style="width: 807px; float: left; display: block;" class="">
								<a href="http://www.html5dw.com/post?id=1720"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467789636224488.jpg"/>"
									draggable="false">

									<div class="am-slider-desc">7月16日三城火热报名中：“创+”微生态思想汇</div>
							</a>
							</li>
							<li style="width: 807px; float: left; display: block;" class="">
								<a href="http://2016.html5dw.com/shanghai/review"> <img
									src="<c:url value="/static/image/portal/zuqiu/1466128716152836.jpg"/>"
									draggable="false">

									<div class="am-slider-desc">专题回顾：HTML5梦工场iWeb峰会上海站</div>
							</a>
							</li>
							<li style="width: 807px; float: left; display: block;"
								class="am-active-slide"><a
								href="http://2016.html5dw.com/beijing"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467872304674586.jpg"/>"
									draggable="false">

									<div class="am-slider-desc">2016 iWeb峰会北京站即将开启，为HTML5娜喊！
									</div>
							</a></li>
							<li class="clone" aria-hidden="true"
								style="width: 807px; float: left; display: block;"><a
								href="http://www.html5dw.com/post?id=1704"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467265137717304.jpg"/>"
									draggable="false">

									<div class="am-slider-desc">腾讯前端用实例讲干货：玩转HTML5移动页面动效</div>
							</a></li>
						</ul>
					</div>
					<ol class="am-control-nav am-control-paging">
						<li><a class="">1</a><i></i></li>
						<li><a class="">2</a><i></i></li>
						<li><a class="">3</a><i></i></li>
						<li><a class="am-active">4</a><i></i></li>
					</ol>
				</div>
			</div>
			<!-- 荣誉榜 -->
			<div class="am-u-sm-0 am-u-md-0 am-u-lg-4 padding-none am-hide-sm">
				<div class="star am-container">
					<span><img
						src="<c:url value="/static/image/portal/zuqiu/"/>star.png">荣誉榜</span>
				</div>
				<ul
					class="padding-none am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-2 am-gallery-overlay"
					data-am-gallery="{ pureview: true }">
					<li>
						<div class="am-gallery-item">
							<a href="http://www.html5dw.com/post?id=1627"> <img
								src="<c:url value="/static/image/portal/zuqiu/1465718540605838.jpg"/>"
								alt="乐天时代">
								<h3 class="am-gallery-title">醉西游H5版6月中旬开放联运</h3>
							</a>
						</div>
					</li>
					<li>
						<div class="am-gallery-item">
							<a href="http://gc.hgame.com/redirect_mobile.html"> <img
								src="<c:url value="/static/image/portal/zuqiu/1456297783507853.jpg"/>"
								alt="蝴蝶互动">
								<h3 class="am-gallery-title">
									旗下产品“传奇世界H5”月流水超1500万，成为首款月流水突破千万级H5游戏。</h3>
							</a>
						</div>
					</li>
					<li>
						<div class="am-gallery-item">
							<a href="http://www.layabox.com/"> <img
								src="<c:url value="/static/image/portal/zuqiu/1456468424295770.jpg"/>"
								alt="LayaBox">
								<h3 class="am-gallery-title">
									LayaAir引擎，通过在低端机型上的性能实测以及即将上线的大型裸跑游戏，证明了HTML5裸跑性能已可媲美APP</h3>
							</a>
						</div>
					</li>
					<li>
						<div class="am-gallery-item">
							<a
								href="http://mp.weixin.qq.com/s?__biz=MzAwNzE2NjM5Mw==&mid=408497285&idx=1&sn=9f8dd1277ce48261350ee3fa12f68a39&scene=1&srcid=0224dzPmbJcMr7FbzTVwBr2J#wechat_redirect">
								<img
								src="<c:url value="/static/image/portal/zuqiu/1456300606772969.jpg"/>"
								alt="爱微游">
								<h3 class="am-gallery-title">自研游戏“怪兽必须死”红爆微信朋友圈。</h3>
							</a>
						</div>
					</li>
				</ul>
			</div>

		</div>
	</div>
	<div class="am-container am-hide-sm">
		<!-- 特别推荐 -->
		<ul
			class="padding-none banner2 am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-4 am-gallery-overlay"
			data-am-gallery="{ pureview: true }">
			<li>
				<div class="am-gallery-item">
					<a href="http://2016.html5dw.com/beijing"> <img
						src="<c:url value="/static/image/portal/zuqiu/1467873207367971.jpg"/>"
						alt="2016第五届iWeb峰会（北京站）" style="height: 202px">
						<h3 class="am-gallery-title">2016第五届iWeb峰会（北京站）</h3>
					</a>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<a href="http://2016.html5dw.com/beijing"> <img
						src="<c:url value="/static/image/portal/zuqiu/1467879242784328.jpg"/>"
						alt="-" style="height: 202px">
						<h3 class="am-gallery-title">-</h3>
					</a>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<a href="http://www.html5dw.com/post?id=1684"> <img
						src="<c:url value="/static/image/portal/zuqiu/1467343379859771.jpg"/>"
						alt="《HTML5+CSS3基础教程》第三章全部章节(免费)" style="height: 202px">
						<h3 class="am-gallery-title">《HTML5+CSS3基础教程》第三章全部章节(免费)</h3>
					</a>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<a href="http://www.html5dw.com/post?id=1711"> <img
						src="<c:url value="/static/image/portal/zuqiu/1467354560993360.jpg"/>"
						alt="每天一课：为元素指定类别和添加title属性" style="height: 202px">
						<h3 class="am-gallery-title">每天一课：为元素指定类别和添加title属性</h3>
					</a>
				</div>
			</li>
		</ul>
	</div>
	<!--news-->
	<div class="am-g am-container newatype">
		<div class="am-u-sm-12 am-u-md-12 am-u-lg-8 oh">
			<div data-am-widget="titlebar"
				class="am-titlebar am-titlebar-default am-no-layout"
				style="border-bottom: 0px; margin-bottom: -10px">
				<h2 class="am-titlebar-title ">热门资讯</h2>
				<nav class="am-titlebar-nav">
					<a href="http://www.html5dw.com/news">more »</a>
				</nav>
			</div>
			<div data-am-widget="list_news"
				class="am-list-news am-list-news-default news am-no-layout">
				<!-- 热门资讯 -->
				<div class="am-list-news-bd">
					<ul class="am-list">
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am-scrollspy-init am-scrollspy-inview am-animation-fade"
							data-am-scrollspy="{animation:&#39;fade&#39;}">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1726">
								<img src="<c:url value="/static/image/portal/zuqiu/1467956418575663.jpg"/>">
								</a>
							</div>
							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/post?id=1726">海之宝运动中心</a>
								</h3>
								<div class="am-list-item-text">地区：上海 > 浦东新区</div>
								<div class="am-list-item-text">地址：上海浦东世博园国展路410号（近上刚路）</div>
								<div class="am-list-item-text">场地类型：7-8人场</div>
								<div class="am-list-item-text">草皮类型：人工草皮</div>
								<div class="am-list-item-text">草皮质量：完美</div>
								<div class="am-list-item-text">球场灯光：有灯光</div>
								<div class="am-list-item-text">更新日期：2016-06-06</div>
							</div>
						</li>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am-scrollspy-init"
							data-am-scrollspy="{animation:&#39;fade&#39;}">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1725"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467945024864131.gif"/>"
									alt="我理想中的前端工作流" style="max-height: 320px">
								</a>
							</div>
							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/post?id=1726">海之宝运动中心</a>
								</h3>
								<div class="am-list-item-text">地区：上海 > 浦东新区</div>
								<div class="am-list-item-text">地址：上海浦东世博园国展路410号（近上刚路）</div>
								<div class="am-list-item-text">场地类型：7-8人场</div>
								<div class="am-list-item-text">草皮类型：人工草皮</div>
								<div class="am-list-item-text">草皮质量：完美</div>
								<div class="am-list-item-text">球场灯光：有灯光</div>
								<div class="am-list-item-text">更新日期：2016-06-06</div>
							</div>
						</li>
						<li
							class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am-scrollspy-init"
							data-am-scrollspy="{animation:&#39;fade&#39;}">
							<div class="am-u-sm-5 am-list-thumb">
								<a href="http://www.html5dw.com/post?id=1724"> <img
									src="<c:url value="/static/image/portal/zuqiu/1467944487954655.png"/>"
									alt="CSS进阶：提高你前端水平的 4 个技巧" style="max-height: 320px">
								</a>
							</div>
							<div class=" am-u-sm-7 am-list-main">
								<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/post?id=1726">海之宝运动中心</a>
								</h3>
								<div class="am-list-item-text">地区：上海 > 浦东新区</div>
								<div class="am-list-item-text">地址：上海浦东世博园国展路410号（近上刚路）</div>
								<div class="am-list-item-text">场地类型：7-8人场</div>
								<div class="am-list-item-text">草皮类型：人工草皮</div>
								<div class="am-list-item-text">草皮质量：完美</div>
								<div class="am-list-item-text">球场灯光：有灯光</div>
								<div class="am-list-item-text">更新日期：2016-06-06</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- 通栏广告 -->
				<a href="http://www.html5dw.com/##"> <img
					src="<c:url value="/static/image/portal/zuqiu/1451814238234525.jpg"/>"
					class="am-img-responsive" width="100%">
				</a>

				<div class="am-hide-sm">
					<div data-am-widget="titlebar"
						class="am-titlebar am-titlebar-default am-no-layout">
						<h2 class="am-titlebar-title ">案例</h2>
						<nav class="am-titlebar-nav">
							<a href="http://www.html5dw.com/#more"
								onclick="$(&#39;.case&#39;).hide();$(&#39;#youxi&#39;).show();">游戏案例</a>
							<a href="http://www.html5dw.com/#more"
								onclick="$(&#39;.case&#39;).hide();$(&#39;#yingxiao&#39;).show();">营销案例</a>
							<a href="http://www.html5dw.com/#more"
								onclick="$(&#39;.case&#39;).hide();$(&#39;#gongju&#39;).show();">工具案例</a>
						</nav>
					</div>
					<!-- 游戏案例 -->
					<div id="youxi" class="case am-animation-slide-left">
						<ul
							class="am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-4 am-gallery-overlay"
							data-am-gallery="{ pureview: true }">
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467345575957477.jpg"/>"
										data-replace-img="/qrcode?text=http://m.newyx.net/h5/736.html"
										alt="口袋妖怪联盟(不支持PC)" style="height: 184px">
									<h3 class="am-gallery-title">口袋妖怪联盟(不支持PC)</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467344792865637.jpg"/>"
										data-replace-img="/qrcode?text=http://m.newyx.net/h5/743.html"
										alt="新秦时明月(不支持PC)" style="height: 184px">
									<h3 class="am-gallery-title">新秦时明月(不支持PC)</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467342514896051.jpg"/>"
										data-replace-img="/qrcode?text=http://www.newyx.net/h5/89.htm"
										alt="小鸟回家" style="height: 184px">
									<h3 class="am-gallery-title">小鸟回家</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467342368966457.jpg"/>"
										data-replace-img="/qrcode?text=http://www.newyx.net/h5/4.htm"
										alt="拇指姑娘漂流记" style="height: 184px">
									<h3 class="am-gallery-title">拇指姑娘漂流记</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467182617637173.jpg"/>"
										data-replace-img="/qrcode?text=http://www.newyx.net/h5/258.htm"
										alt="2048恋爱教程(建议手机玩)" style="height: 184px">
									<h3 class="am-gallery-title">2048恋爱教程(建议手机玩)</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467182337436061.jpg"/>"
										data-replace-img="/qrcode?text=http://www.newyx.net/h5/1.htm"
										alt="大圣抓福" style="height: 184px">
									<h3 class="am-gallery-title">大圣抓福</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467181606105258.jpg"/>"
										data-replace-img="/qrcode?text=http://www.newyx.net/h5/31.htm"
										alt="找茬美女(5个不同之处)" style="height: 184px">
									<h3 class="am-gallery-title">找茬美女(5个不同之处)</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467103687947896.jpg"/>"
										data-replace-img="/qrcode?text=http://m.newyx.net/h5/314.html"
										alt="动态拼图(这个拼图有些难)" style="height: 184px">
									<h3 class="am-gallery-title">动态拼图(这个拼图有些难)</h3>
								</div>
							</li>
						</ul>
					</div>
					<!-- 营销案例 -->
					<div id="yingxiao" class="case am-animation-slide-right dn">
						<ul
							class="am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-4 am-gallery-overlay"
							data-am-gallery="{ pureview: true }">
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467352634432203.jpg"/>"
										data-replace-img="/qrcode?text=http://jd.buyansu.com/pub1/index.php"
										alt="京东H5游戏营销：正好玩" style="height: 184px">
									<h3 class="am-gallery-title">京东H5游戏营销：正好玩</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467351848472544.jpg"/>"
										data-replace-img="/qrcode?text=http://www.houjt.com/userproject/isafety/andorid.html"
										alt="尼桑楼兰“马路天使”自学指南" style="height: 184px">
									<h3 class="am-gallery-title">尼桑楼兰“马路天使”自学指南</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467184527541800.jpg"/>"
										data-replace-img="/qrcode?text=http://bmw2.thefront.com.cn/fathersday/"
										alt="高品质H5案例 你最想和谁嗨？" style="height: 184px">
									<h3 class="am-gallery-title">高品质H5案例 你最想和谁嗨？</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467007695195054.jpg"/>"
										data-replace-img="/qrcode?text=http://wap.i-h5.cn/ljd_game/May_Yaoningtiaowu/index.html"
										alt="腰疼宁 爱腰Disco" style="height: 184px">
									<h3 class="am-gallery-title">腰疼宁 爱腰Disco</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1467006900788944.jpg"/>"
										data-replace-img="/qrcode?text=http://mo.tenpay.com/2016/wx_papa2/index.shtml"
										alt="腾讯理财 老爸手机里的秘密" style="height: 184px">
									<h3 class="am-gallery-title">腾讯理财 老爸手机里的秘密</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1466060362764699.jpg"/>"
										data-replace-img="/qrcode?text=http://wqs.jd.com/promote/201606/618zbh5/index.html"
										alt="京东618逼格UP指南" style="height: 184px">
									<h3 class="am-gallery-title">京东618逼格UP指南</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1464596810835659.jpg"/>"
										data-replace-img="/qrcode?text=http://2016.e7free.com/420/index.aspx?"
										alt="以游戏体现H5创意广告Free飞" style="height: 184px">
									<h3 class="am-gallery-title">以游戏体现H5创意广告Free飞</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1464571479405621.jpg"/>"
										data-replace-img="/qrcode?text=http://app.topray-media.cn/xiayinjianghu/android.html"
										alt="H5创意营销：只要功夫深 撩妹100分" style="height: 184px">
									<h3 class="am-gallery-title">H5创意营销：只要功夫深 撩妹100分</h3>
								</div>
							</li>
						</ul>
					</div>
					<!-- 工具案例 -->
					<div id="gongju" class="dn case am-animation-slide-right">
						<ul
							class="am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-4 am-gallery-overlay"
							data-am-gallery="{ pureview: true }">
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1464599154741066.jpg"/>"
										data-replace-img="/qrcode?text=http://pixudio.com/"
										alt="用鼠标“滚”就能看的涉及灵感" style="height: 184px">
									<h3 class="am-gallery-title">用鼠标“滚”就能看的涉及灵感</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1464332323543195.jpg"/>"
										data-replace-img="/qrcode?text=http://www.rabbitpre.com/m/F3FfMeEZ"
										alt="办公软件七宗罪" style="height: 184px">
									<h3 class="am-gallery-title">办公软件七宗罪</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1464244873804151.jpg"/>"
										data-replace-img="/qrcode?text=http://www.rrxiu.net/"
										alt="人人秀" style="height: 184px">
									<h3 class="am-gallery-title">人人秀</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1464243349986286.jpg"/>"
										data-replace-img="/qrcode?text=https://www.porschemarriage.nl/home"
										alt="保时捷的“婚姻”" style="height: 184px">
									<h3 class="am-gallery-title">保时捷的“婚姻”</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1451281639110488.png"/>"
										data-replace-img="/qrcode?text=http://flax.so/" alt="Flax"
										style="height: 184px">
									<h3 class="am-gallery-title">Flax</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1451902354799644.jpg"/>"
										data-replace-img="/qrcode?text=http://www.mugeda.com/"
										alt="Mugeda（木疙瘩）" style="height: 184px">
									<h3 class="am-gallery-title">Mugeda（木疙瘩）</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1451902540302052.jpg"/>"
										data-replace-img="/qrcode?text=http://sd.html5dw.com/http%EF%BC%9A//www.d5power.com"
										alt="D5Power" style="height: 184px">
									<h3 class="am-gallery-title">D5Power</h3>
								</div>
							</li>
							<li>
								<div class="am-gallery-item">
									<img
										src="<c:url value="/static/image/portal/zuqiu/1451902238537988.jpg"/>"
										data-replace-img="/qrcode?text=http://sd.html5dw.com/www.apicloud.com"
										alt="APICloud" style="height: 184px">
									<h3 class="am-gallery-title">APICloud</h3>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="am-u-sm-12 am-u-md-12 am-u-lg-4">
			<div data-am-widget="titlebar"
				class="am-titlebar am-titlebar-default am-no-layout">
				<h2 class="am-titlebar-title ">官方微信</h2>
				<nav class="am-titlebar-nav">
					<!--<a href="/categories">more &raquo;</a>-->
				</nav>
			</div>
			<div data-am-widget="list_news"
				class="am-list-news am-list-news-default right-bg am-cf am-no-layout am-scrollspy-init am-scrollspy-inview am-animation-fade"
				data-am-scrollspy="{animation:&#39;fade&#39;}">
				<div class="am-u-sm-6 border-right">
					<img
						src="<c:url value="/static/image/portal/zuqiu/1465896287457679.jpg"/>"
						class="img-gg">
					<div class="am-text-center gz-text-color">微信公众号</div>
				</div>
				<div class="am-u-sm-6">
					<img
						src="<c:url value="/static/image/portal/zuqiu/1465896410977280.jpg"/>"
						class="img-gg">
					<div class="am-text-center gz-text-color">微信头条</div>
				</div>
			</div>
			<div data-am-widget="titlebar"
				class="am-titlebar am-titlebar-default am-no-layout">
				<h2 class="am-titlebar-title ">个人专栏</h2>
				<nav class="am-titlebar-nav">
					<a href="http://www.html5dw.com/categories">more »</a>
				</nav>
			</div>

			<div data-am-widget="list_news"
				class="am-list-news am-list-news-default right-bg am-no-layout am-scrollspy-init"
				data-am-scrollspy="{animation:&#39;fade&#39;}">
				<ul class="am-list">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb am-u-sm-4-gg">
							<a href="http://www.html5dw.com/category/?id=6"> <img
								src="<c:url value="/static/image/portal/zuqiu/1451891934911843.jpg"/>"
								class="face">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/category/?id=6">勾三股四</a>
							</h3>
							<div class="am-list-item-text">
								h5slides项目发起人，阿里前端开发专家。业内第一美女产品经理的老公。</div>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-divider-gg am-no-layout">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb am-u-sm-4-gg">
							<a href="http://www.html5dw.com/category/?id=26"> <img
								src="<c:url value="/static/image/portal/zuqiu/1452484975381176.jpg"/>"
								class="face">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/category/?id=26">郭锋</a>
							</h3>
							<div class="am-list-item-text">
								郭锋，大连泛游创想CEO，《貂蝉有妖气》《带头大哥》研发商，HTML5游戏、日本市场为主要方向。</div>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-divider-gg am-no-layout">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb am-u-sm-4-gg">
							<a href="http://www.html5dw.com/category/?id=7"> <img
								src="<c:url value="/static/image/portal/zuqiu/1451534129816716.jpg"/>"
								class="face">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/category/?id=7">山边小溪</a>
							</h3>
							<div class="am-list-item-text">关注前端开发 ◆ 共享网络精彩 ◆ yyyweb.com
								你记住了吗？：）</div>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-divider-gg am-no-layout">
				</ul>
			</div>
			<div data-am-widget="titlebar"
				class="am-titlebar am-titlebar-default am-no-layout">
				<h2 class="am-titlebar-title ">合作专栏</h2>
				<nav class="am-titlebar-nav">
					<a href="http://www.html5dw.com/categories?type=2">more »</a>
				</nav>
			</div>
			<div data-am-widget="list_news"
				class="am-list-news am-list-news-default right-bg am-no-layout am-scrollspy-init"
				data-am-scrollspy="{animation:&#39;fade&#39;}">
				<ul class="am-list">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb am-u-sm-4-gg">
							<a href="http://www.html5dw.com/category/?id=33"> <img
								src="<c:url value="/static/image/portal/zuqiu/1453257542318962.png"/>"
								class="face">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/category/?id=33">淘宝前端团队（FED）</a>
							</h3>
							<div class="am-list-item-text">
								前端的世界一直在变化着，在各种熟悉的语言进化中迅速的化学反应。也许你和我们一样，对前端的理解也在不断刷新。

								不变的永远是变化，“无线”、“全栈”、“工程”、“安全”、“架构”，我们正在涉足更多的技术领域，一切的一切，为的是在变化中发展，在变化中成长，在变化中引领潮流。

								不变还有我们的目标，共同的理想和愿景把我们聚集到一起，为了一件件简单而又快乐的事情努力，我们深知手中的事情在改变世界，我们必须专业，必须严谨，必须乐于分享！

								官网：http://taobaofed.org/</div>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-divider-gg am-no-layout">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb am-u-sm-4-gg">
							<a href="http://www.html5dw.com/category/?id=14"> <img
								src="<c:url value="/static/image/portal/zuqiu/1451903850184832.jpg"/>"
								class="face">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/category/?id=14">JS小组</a>
							</h3>
							<div class="am-list-item-text">
								秉承“为你量身打造”和“为你贴心服务”这两条信仰，JS组完善了线上线下的服务支持，如果有任何使用上的困难，或者对 Tangram
								和 Magic 有任何建议、困惑，都可随时联系。 官网：http://tangram.baidu.com/</div>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-divider-gg am-no-layout">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb am-u-sm-4-gg">
							<a href="http://www.html5dw.com/category/?id=13"> <img
								src="<c:url value="/static/image/portal/zuqiu/1451903790999136.jpg"/>"
								class="face">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/category/?id=13">奇舞团</a>
							</h3>
							<div class="am-list-item-text">360奇舞团（奇虎75Team）是
								奇虎360公司Web平台部前端工程师 + 部分特约嘉宾 组成的一个前端团队。
								在这里，我们一起工作学习、一起沉淀、一起分享、一起为前端贡献影响。 开放是我们的特色，快乐是我们的使命。
								官网：http://www.75team.com/</div>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-divider-gg am-no-layout">
				</ul>
			</div>
			<div data-am-widget="titlebar"
				class="am-titlebar am-titlebar-default am-no-layout">
				<h2 class="am-titlebar-title ">评测</h2>
				<nav class="am-titlebar-nav">
					<a href="http://www.html5dw.com/profile">more »</a>
				</nav>
			</div>
			<div data-am-widget="list_news"
				class="am-list-news am-list-news-default right-bg am-no-layout am-scrollspy-init"
				data-am-scrollspy="{animation:&#39;fade&#39;}">
				<ul class="am-list">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb">
							<a href="http://www.html5dw.com/post?id=1316"> <img
								src="<c:url value="/static/image/portal/zuqiu/1455703985863057.jpg"/>">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/post?id=1316">Vue.js与其它框架对比</a>
							</h3>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-no-layout">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb">
							<a href="http://www.html5dw.com/post?id=1142"> <img
								src="<c:url value="/static/image/portal/zuqiu/1452076661702306.jpg"/>">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/post?id=1142">《觉醒吧MT》游戏评测</a>
							</h3>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-no-layout">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb">
							<a href="http://www.html5dw.com/post?id=1133"> <img
								src="<c:url value="/static/image/portal/zuqiu/1451902854251139.jpg"/>">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/post?id=1133">易企秀，兔展，MAKA三个H5制作工具分析测评</a>
							</h3>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-no-layout">
					<li
						class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left">
						<div class="am-u-sm-4 am-list-thumb">
							<a href="http://www.html5dw.com/post?id=1128"> <img
								src="<c:url value="/static/image/portal/zuqiu/1451902880696867.jpg"/>">
							</a>
						</div>
						<div class=" am-u-sm-8 am-list-main">
							<h3 class="am-list-item-hd">
								<a href="http://www.html5dw.com/post?id=1128">ANGULAR VS.
									EMBER VS. REACT 如何选择前端框架</a>
							</h3>
						</div>
					</li>
					<hr data-am-widget="divider" style=""
						class="am-divider am-divider-default am-no-layout">
				</ul>
			</div>
			<div data-am-widget="titlebar"
				class="am-titlebar am-titlebar-default am-no-layout">
				<h2 class="am-titlebar-title ">活动</h2>
				<nav class="am-titlebar-nav">
					<a href="http://www.html5dw.com/events">more »</a>
				</nav>
			</div>
			<ul
				class="am-gallery am-avg-sm-1 am-avg-md-1 am-avg-lg-1 am-gallery-default"
				data-am-gallery="{ pureview: true }">
				<li>
					<div class="am-gallery-item">
						<a href="http://www.html5dw.com/event?id=19" class=""> <img
							src="<c:url value="/static/image/portal/zuqiu/1455678577886179.jpg"/>"
							alt="2016年 iWeb峰会 台湾站">
							<h3 class="am-gallery-title">2016年 iWeb峰会 台湾站</h3>
							<div class="am-gallery-desc">
								<div class="am-fr">台湾</div>
								<div class="am-fl">2016/03/26</div>
							</div>
						</a>
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="http://www.html5dw.com/event?id=18" class=""> <img
							src="<c:url value="/static/image/portal/zuqiu/1455678259846107.jpg"/>"
							alt="第二届前端开发者大会">
							<h3 class="am-gallery-title">第二届前端开发者大会</h3>
							<div class="am-gallery-desc">
								<div class="am-fr">广州</div>
								<div class="am-fl">2016/03/19</div>
							</div>
						</a>
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="http://www.html5dw.com/event?id=20" class=""> <img
							src="<c:url value="/static/image/portal/zuqiu/1455680559761318.jpg"/>"
							alt="TFC全球移动游戏大会">
							<h3 class="am-gallery-title">TFC全球移动游戏大会</h3>
							<div class="am-gallery-desc">
								<div class="am-fr">北京</div>
								<div class="am-fl">2016/03/16</div>
							</div>
						</a>
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="http://www.html5dw.com/event?id=21" class=""> <img
							src="<c:url value="/static/image/portal/zuqiu/1456219498187374.jpg"/>"
							alt="2016 Google for Publishers">
							<h3 class="am-gallery-title">2016 Google for Publishers</h3>
							<div class="am-gallery-desc">
								<div class="am-fr">北京</div>
								<div class="am-fl">2016/03/01</div>
							</div>
						</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div data-am-widget="gotop"
		class="am-gotop am-gotop-fixed am-no-layout">
		<a href="http://www.html5dw.com/#top" title="回到顶部"> <span
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
					Amaze UI</span> <img
				src="<c:url value="/static/image/portal/zuqiu/amazeui-logo.png"/>">
			</a>

		</div>

	</footer>
</body>
</html>
