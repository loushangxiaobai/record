<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<html>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<head>
<%@ include file="/WEB-INF/view/portal/football/head.jsp"%>
</head>
<body>
<body class="am-with-topbar-fixed-top">
	<!--[if lte IE 9 ]>
  <div class="am-alert am-alert-danger ie-warning" data-am-alert>
    <button type="button" class="am-close">&times;</button>
    <div class="am-container">
      365 安全卫士提醒：你的浏览器太古董了，妹子无爱，
      <a href="http://browsehappy.com/" target="_blank">速速点击换一个</a>
    </div>
  </div>
  <![endif]-->
	<header
		class="am-topbar am-topbar-inverse am-topbar-fixed-top headercolor"
		id="header">
		<div class="am-container">
			<h1 class="am-topbar-brand am-text-ir">
				<a href="http://amazeui.org/showcase/#">YY ZuQiu</a>
			</h1>

			<button
				class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
				data-am-collapse="{target: &#39;#doc-topbar-collapse&#39;}">
				<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
			</button>

			<div class="am-collapse am-topbar-collapse am-topbar-right"
				id="doc-topbar-collapse">
				<ul class="am-nav am-nav-pills am-topbar-nav">
					<li class="am-active"><a href="http://amazeui.org/showcase/#">首页</a>
					</li>
					<li><a href="http://amazeui.org/" target="_blank">球场</a></li>
					<li><a href="http://t.amazeui.org/" target="_blank">球队</a>
					</li>
					<li><a href="https://github.com/amazeui" target="_blank">球赛</a>
					</li>
					<li><a href="http://ask.amazeui.org/" target="_blank">论坛</a></li>
					<li><a href="http://www.yunshipei.com/about/contacts.html"
						target="_blank">联系我们</a></li>
				</ul>
			</div>
		</div>
	</header>

	<!-- banner -->
	<div class="bgimg ">
		<div class="am-container">
			<h1 class="am-animation-slide-right">专注业余足球场地信息收集整理,赛事活动组织</h1>
			<h2 class="am-animation-scale-up">球场精选</h2>
		</div>
	</div>

	<article>
		<div class="am-container" id="caseimgs">
			<div class="am-tabs" data-am-tabs="">
				<!-- 响应式tab -->
				<div class="am-tabs-bd"
					style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
					<div class="am-tab-panel am-active am-in" id="tab1">
						<ul class="am-avg-sm-1 am-avg-md-2 am-avg-lg-2 am-thumbnails">
							<c:forEach items="${stadiums }" var="item">
							<li>
								<div class="gallery-inner">
									<a href="http://www.solove.com.hk/" target="_blank"
										class="onimg" rel="nofollow" style="padding: 20px;">
										<h2>${item.name }</h2>
										<ul>
											<li>地区：${item.area }</li>
											<li>地址：${item.addr }</li>
											<li>场地类型：${item.siteType }</li>
											<li>草皮质量：完美素乐</li>
											<li>草皮类型：${item.sod }</li>
											<li>球场灯光：${item.lamplight }</li>
										</ul>
									</a> <img class="am-thumbnail"
										src="${item.showImg }">
								</div>
							</li>
							</c:forEach>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</article>
	<footer>
		<!-- <div data-am-widget="navbar"
			class="am-navbar am-cf am-navbar-default " id="">
			<ul class="am-navbar-nav am-cf am-avg-sm-4">
				<li><a href="tel:123456789" class=""> <span
						class="am-icon-phone"></span> <span class="am-navbar-label">呼叫</span>
				</a></li>
				<li data-am-navbar-share><a href="###" class=""> <span
						class="am-icon-share-square-o"></span> <span
						class="am-navbar-label">分享</span>
				</a></li>
				<li data-am-navbar-qrcode><a href="/" class=""> <span
						class="am-icon-home"></span> <span class="am-navbar-label">首页</span>
				</a></li>
			</ul>
		</div> -->
	</footer>
	<!-- 返回顶部 -->
	<div data-am-widget="gotop" class="am-gotop am-gotop-fixed">
		<a href="#top" title="回到顶部"> <span class="am-gotop-title">回到顶部</span>
			<i class="am-gotop-icon am-icon-chevron-up"></i>
		</a>
	</div>
	<script type="text/javascript">
		$(window).scroll(function() {
			if ($(window).scrollTop() > 0) {
				$("#header").addClass('chageheader');
			} else {
				$("#header").removeClass('chageheader');
			}
		});
	</script>
</body>
</html>
