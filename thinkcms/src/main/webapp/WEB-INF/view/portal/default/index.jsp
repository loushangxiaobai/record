<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
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
	<div class="rollpic">
		<div data-am-widget="slider" class="am-slider am-slider-default"
			data-am-slider='{}'>
			<ul class="am-slides">
				<c:forEach items="${slideImgs.items }" var="item">
					<li><img src='<c:url value="${item.imgUrl }"/>' height="540px"/></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<div class="am-container-1">
		<div class="solutions part-all">
			<div class="part-title">
				<a href="solutions.html"> <i
					class="am-icon-lightbulb-o part-title-i"></i> <span
					class="part-title-span">解决方案</span>
					<p>Solutions</p>
				</a>
			</div>
			<ul class="am-g part-content solutions-content">
				<li class="am-u-sm-6 am-u-md-3 am-u-lg-3"><i
					class="am-icon-safari solution-circle"></i> <span
					class="solutions-title">网站、移动网站</span>
					<p class="solutions-way">微信公众号开发移动网站微信公众号开发</p></li>
				<li class="am-u-sm-6 am-u-md-3 am-u-lg-3"><i
					class="am-icon-magic solution-circle"></i> <span
					class="solutions-title">网站、移动网站</span>
					<p class="solutions-way">移动网站微信公众号开发移动网站微信公众号开发,解决方案</p></li>
				<li class="am-u-sm-6 am-u-md-3 am-u-lg-3"><i
					class="am-icon-phone solution-circle"></i> <span
					class="solutions-title">网站、移动网站</span>
					<p class="solutions-way">移动网站微信公众号开发移动网站微信公众号开发</p></li>
				<li class="am-u-sm-6 am-u-md-3 am-u-lg-3"><i
					class="am-icon-hacker-news solution-circle"></i> <span
					class="solutions-title">网站、移动网站</span>
					<p class="solutions-way">网站、移动网站微信公众号开发移动网站微信公众号开发,解决方案</p></li>

			</ul>

		</div>
	</div>
	<div class="gray-li">
		<div class="customer-case part-all ">
			<div class="part-title">
				<a href="customer-case.html"> <i
					class=" am-icon-briefcase part-title-i"></i> <span
					class="part-title-span">客户案例</span>
					<p>Customer Case</p>
				</a>
			</div>


			<ul data-am-widget="gallery"
				class=" am-avg-sm-1
  am-avg-md-4 am-avg-lg-4 am-gallery-bordered customer-case-content">
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app1.png"/>' />

						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">响应式商城</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app2.png"/>' />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">物流红娘</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app3.png"/>' />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">车型湖北</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app4.png"/>' />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">管理系统</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app5.png"/>' />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">智众商城</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app6.png"/>' />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">汇众商城</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app7.png"/>' />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">无鞋网</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>
				<li class="case-li am-u-sm-6 am-u-md-6 am-u-lg-3">
					<div class="am-gallery-item case-img1">
						<a href="#"> <img src='<c:url value="/static/image/portal/default/app8.png"/>' />
						</a>
					</div>
					<div class="case-li-mengban">
						<div class=" case-word">
							<h3 class="am-gallery-title">响应式商城</h3>
							<p>2015-06-11</p>
							<a><span><i class="am-icon-eye"></i>查看更多</span></a>
						</div>
					</div>
				</li>

			</ul>
			<div class="lan-bott">
				<div class="left">
					<span>全方位解决方案,为您轻松解决不同问题</span>
					<p>A full range of solutions for you to solve different
						problems</p>
				</div>
				<div class="right">
					<a href="customer-case.html"> <span class="see-more">查看更多<i
							class="am-icon-angle-double-right"></i></span>
					</a>
				</div>
				<div class="clear"></div>
			</div>
			<div class="part-title"></div>
		</div>
	</div>

	<div class=" news-all">
		<div class="am-container-1">
			<div class="news part-all">
				<div class="part-title">
					<a href="news.html"> <i
						class="am-icon-newspaper-o part-title-i"></i> <span
						class="part-title-span">新闻动态</span>
						<p>Hengwang News</p>
					</a>
				</div>
				<div class="news-content ">
					<ul class="news-content-ul">
						<li class="am-u-sm-12 am-u-md-6 am-u-lg-6"><a href="#">
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
									<div class="news-img">
										<img src='<c:url value="/static/image/portal/default/news.png"/>'></img>
									</div>
								</div>
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
									<span class="news-right-title">关于召开年会的通知</span>
									<p class="news-right-time">2015-06-11</p>
									<p class="news-right-words">互联网，又称网际网路或音译因特网、英特网，是网络与网络之间所串连成的庞大网络网络与网络之...</p>
									<a><span class="see-more2">查看更多<i
											class="am-icon-angle-double-right"></i></span></a>
								</div>
								<div class="clear"></div>
						</a></li>
						<li class="am-u-sm-12 am-u-md-6 am-u-lg-6"><a href="#">
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-5">
									<div class="news-img">
										<img src='<c:url value="/static/image/portal/default/news1.png"/>'></img>
									</div>
								</div>
								<div class=" am-u-sm-12 am-u-md-12 am-u-lg-7">
									<span class="news-right-title">关于召开年会的通知</span>
									<p class="news-right-time">2015-06-11</p>
									<p class="news-right-words">互联网，又称网际网路或音译因特网、英特网，是网络与网络之间所串连成的庞大网络网络与网络之...</p>
									<a><span class="see-more2">查看更多<i
											class="am-icon-angle-double-right"></i></span></a>
								</div>
								<div class="clear"></div>
						</a></li>
						<div class="clear"></div>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	
<%@ include file="/WEB-INF/view/portal/default/customer.jsp"%>
<%@ include file="/WEB-INF/view/portal/default/footer.jsp"%>
</body>
</html>
