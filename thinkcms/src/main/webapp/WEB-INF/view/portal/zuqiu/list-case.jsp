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
			<a href="http://www.html5dw.com/cases#"><img
				src="<c:url value="/static/image/portal/zuqiu/"/>logo_new.png" alt=""></a>
		</h1>
		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-warning am-show-sm-only"
			data-am-collapse="{target: &#39;#collapse-head&#39;}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>
		<div class="am-collapse am-topbar-collapse" id="collapse-head">
			<ul class="am-nav am-nav-pills am-topbar-nav">
				<li><a href="<c:url value="/"/>">首页</a></li>
				<li><a href="<c:url value="/list?categoryId=4"/>">资讯</a></li>
				<li class="am-active"><a href="<c:url value="/list?categoryId=5"/>">案例</a></li>
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
	<!--banner-->
<div class="banner" style="margin-bottom: 20px">
    <div class="am-g am-container padding-none">
        <div class="am-u-sm-12 am-u-md-12 am-u-lg-12 padding-none">
            <div data-am-widget="slider" class="am-slider am-slider-c1" data-am-slider='{"directionNav":false}' >
                <ul class="am-slides">
                                        <li>
                        <img src="<c:url value="/static/image/portal/zuqiu/1453178666515423.jpg"/>">
                        <div class="am-slider-desc">"娜喊杯"圆满落幕 聚合HTML5资源构建完善生态圈</div>
                    </li>
                                        <li>
                        <img src="<c:url value="/static/image/portal/zuqiu/1451816278867404.jpg"/>">
                        <div class="am-slider-desc">资讯</div>
                    </li>
                                        <li>
                        <img src="<c:url value="/static/image/portal/zuqiu/1451816278867404.jpg"/>">
                        <div class="am-slider-desc">"娜喊杯"圆满落幕 聚合HTML5资源构建完善生态圈</div>
                    </li>
                                        <li>
                        <img src="<c:url value="/static/image/portal/zuqiu/1453178666515423.jpg"/>">
                        <div class="am-slider-desc">slide</div>
                    </li>
                                    </ul>
            </div>
        </div>
    </div>
</div>
	<!--游戏案例-->
	<div class="star am-container mcenter">
		<span><img src="<c:url value="/static/image/portal/zuqiu/star.png"/>">游戏案例</span>
	</div>
	<div class="am-container events">
		<ul data-am-widget="gallery"
			class="am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-gallery-bordered am-no-layout"
			data-am-gallery="{  }">
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467345575957477.jpg"/>"
						data-replace-img="/qrcode?text=http://m.newyx.net/h5/736.html"
						alt="口袋妖怪联盟(不支持PC)" style="height: 184px">
					<h3 class="am-gallery-title">口袋妖怪联盟(不支持PC)</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467344792865637.jpg"/>"
						data-replace-img="/qrcode?text=http://m.newyx.net/h5/743.html"
						alt="新秦时明月(不支持PC)" style="height: 184px">
					<h3 class="am-gallery-title">新秦时明月(不支持PC)</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467342514896051.jpg"/>"
						data-replace-img="/qrcode?text=http://www.newyx.net/h5/89.htm"
						alt="小鸟回家" style="height: 184px">
					<h3 class="am-gallery-title">小鸟回家</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467342368966457.jpg"/>"
						data-replace-img="/qrcode?text=http://www.newyx.net/h5/4.htm"
						alt="拇指姑娘漂流记" style="height: 184px">
					<h3 class="am-gallery-title">拇指姑娘漂流记</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467182617637173.jpg"/>"
						data-replace-img="/qrcode?text=http://www.newyx.net/h5/258.htm"
						alt="2048恋爱教程(建议手机玩)" style="height: 184px">
					<h3 class="am-gallery-title">2048恋爱教程(建议手机玩)</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467182337436061.jpg"/>"
						data-replace-img="/qrcode?text=http://www.newyx.net/h5/1.htm"
						alt="大圣抓福" style="height: 184px">
					<h3 class="am-gallery-title">大圣抓福</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467181606105258.jpg"/>"
						data-replace-img="/qrcode?text=http://www.newyx.net/h5/31.htm"
						alt="找茬美女(5个不同之处)" style="height: 184px">
					<h3 class="am-gallery-title">找茬美女(5个不同之处)</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467103687947896.jpg"/>"
						data-replace-img="/qrcode?text=http://m.newyx.net/h5/314.html"
						alt="动态拼图(这个拼图有些难)" style="height: 184px">
					<h3 class="am-gallery-title">动态拼图(这个拼图有些难)</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467009483501160.jpg"/>"
						data-replace-img="/qrcode?text=http://m.newyx.net/h5/734.html"
						alt="少女H计划(须登录)" style="height: 184px">
					<h3 class="am-gallery-title">少女H计划(须登录)</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467009063287196.jpg"/>"
						data-replace-img="/qrcode?text=http://m.newyx.net/h5/256.html"
						alt="美女麻将摸摸看" style="height: 184px">
					<h3 class="am-gallery-title">美女麻将摸摸看</h3>
				</div>
			</li>
		</ul>
	</div>
	<!--工具案例-->
	<div class="star am-container mcenter">
		<span><img src="<c:url value="/static/image/portal/zuqiu/star.png"/>">工具案例</span>
	</div>
	<div class="am-container">
		<ul data-am-widget="gallery"
			class="am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-gallery-bordered am-no-layout"
			data-am-gallery="{  }">
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1464599154741066.jpg"/>"
						data-replace-img="/qrcode?text=http://pixudio.com/"
						alt="用鼠标“滚”就能看的涉及灵感" style="height: 184px">
					<h3 class="am-gallery-title">用鼠标“滚”就能看的涉及灵感</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1464332323543195.jpg"/>"
						data-replace-img="/qrcode?text=http://www.rabbitpre.com/m/F3FfMeEZ"
						alt="办公软件七宗罪" style="height: 184px">
					<h3 class="am-gallery-title">办公软件七宗罪</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1464244873804151.jpg"/>"
						data-replace-img="/qrcode?text=http://www.rrxiu.net/" alt="人人秀"
						style="height: 184px">
					<h3 class="am-gallery-title">人人秀</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1464243349986286.jpg"/>"
						data-replace-img="/qrcode?text=https://www.porschemarriage.nl/home"
						alt="保时捷的“婚姻”" style="height: 184px">
					<h3 class="am-gallery-title">保时捷的“婚姻”</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1451281639110488.png"/>"
						data-replace-img="/qrcode?text=http://flax.so/" alt="Flax"
						style="height: 184px">
					<h3 class="am-gallery-title">Flax</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1451902354799644.jpg"/>"
						data-replace-img="/qrcode?text=http://www.mugeda.com/"
						alt="Mugeda（木疙瘩）" style="height: 184px">
					<h3 class="am-gallery-title">Mugeda（木疙瘩）</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1451902540302052.jpg"/>"
						data-replace-img="/qrcode?text=http://sd.html5dw.com/http%EF%BC%9A//www.d5power.com"
						alt="D5Power" style="height: 184px">
					<h3 class="am-gallery-title">D5Power</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1451902238537988.jpg"/>"
						data-replace-img="/qrcode?text=http://sd.html5dw.com/www.apicloud.com"
						alt="APICloud" style="height: 184px">
					<h3 class="am-gallery-title">APICloud</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1451280250115832.jpg"/>"
						data-replace-img="/qrcode?text=http://amazeui.org/" alt="Amaze UI"
						style="height: 184px">
					<h3 class="am-gallery-title">Amaze UI</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1451280166111069.jpg"/>"
						data-replace-img="/qrcode?text=http://echarts.baidu.com/"
						alt="ECharts" style="height: 184px">
					<h3 class="am-gallery-title">ECharts</h3>
				</div>
			</li>
		</ul>
	</div>
	<!--工具案例-->
	<div class="star am-container mcenter">
		<span><img src="<c:url value="/static/image/portal/zuqiu/star.png"/>">营销案例</span>
	</div>
	<div class="am-container">
		<ul data-am-widget="gallery"
			class="am-gallery am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-gallery-bordered am-no-layout"
			data-am-gallery="{  }">
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467352634432203.jpg"/>"
						data-replace-img="/qrcode?text=http://jd.buyansu.com/pub1/index.php"
						alt="京东H5游戏营销：正好玩" style="height: 184px">
					<h3 class="am-gallery-title">京东H5游戏营销：正好玩</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src="<c:url value="/static/image/portal/zuqiu/1467351848472544.jpg"/>"
						data-replace-img="/qrcode?text=http://www.houjt.com/userproject/isafety/andorid.html"
						alt="尼桑楼兰“马路天使”自学指南" style="height: 184px">
					<h3 class="am-gallery-title">尼桑楼兰“马路天使”自学指南</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1467184527541800.jpg"/>'
						data-replace-img="/qrcode?text=http://bmw2.thefront.com.cn/fathersday/"
						alt="高品质H5案例 你最想和谁嗨？" style="height: 184px">
					<h3 class="am-gallery-title">高品质H5案例 你最想和谁嗨？</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1467007695195054.jpg"/>'
						data-replace-img="/qrcode?text=http://wap.i-h5.cn/ljd_game/May_Yaoningtiaowu/index.html"
						alt="腰疼宁 爱腰Disco" style="height: 184px">
					<h3 class="am-gallery-title">腰疼宁 爱腰Disco</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1467006900788944.jpg"/>'
						data-replace-img="/qrcode?text=http://mo.tenpay.com/2016/wx_papa2/index.shtml"
						alt="腾讯理财 老爸手机里的秘密" style="height: 184px">
					<h3 class="am-gallery-title">腾讯理财 老爸手机里的秘密</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1466060362764699.jpg"/>'
						data-replace-img="/qrcode?text=http://wqs.jd.com/promote/201606/618zbh5/index.html"
						alt="京东618逼格UP指南" style="height: 184px">
					<h3 class="am-gallery-title">京东618逼格UP指南</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1464596810835659.jpg"/>'
						data-replace-img="/qrcode?text=http://2016.e7free.com/420/index.aspx?"
						alt="以游戏体现H5创意广告Free飞" style="height: 184px">
					<h3 class="am-gallery-title">以游戏体现H5创意广告Free飞</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1464571479405621.jpg"/>'
						data-replace-img="/qrcode?text=http://app.topray-media.cn/xiayinjianghu/android.html"
						alt="H5创意营销：只要功夫深 撩妹100分" style="height: 184px">
					<h3 class="am-gallery-title">H5创意营销：只要功夫深 撩妹100分</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1464333747649028.jpg"/>'
						data-replace-img="/qrcode?text=http://evt.dianping.com/midas/160517/index.html"
						alt="什么样的肠子才能算是吃货" style="height: 184px">
					<h3 class="am-gallery-title">什么样的肠子才能算是吃货</h3>
				</div>
			</li>
			<li>
				<div class="am-gallery-item">
					<img src='<c:url value="/static/image/portal/zuqiu/1464333377933527.jpg"/>'
						data-replace-img="/qrcode?text=http://m.durex.com.cn/qr/artmuseum/?utm_source=Campaign&amp;utm_medium=SocialabQRQR&amp;utm_campaign=Durex2015GelH5&amp;utm_content=Socialab&amp;smtid=464333181z1aiuze4f0z1fgz0z"
						alt="杜蕾斯“液体主义”美术馆" style="height: 184px">
					<h3 class="am-gallery-title">杜蕾斯“液体主义”美术馆</h3>
				</div>
			</li>
		</ul>
	</div>
	<div data-am-widget="gotop"
		class="am-gotop am-gotop-fixed am-no-layout">
		<a href="http://www.html5dw.com/cases#top" title="回到顶部"> <span
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