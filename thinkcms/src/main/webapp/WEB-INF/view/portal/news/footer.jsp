<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<footer class="footer ">

	<ul>

		<li class="am-u-lg-4 am-u-md-4 am-u-sm-12 part-5-li2">
			<div class="part-5-title">联系我们</div>
			<div class="part-5-words2">
				<span>地址:${siteInfo.contactAddr }</span>
				<span>电话:${siteInfo.contactMobilePhone }</span> 
                <span>邮箱:${siteInfo.contactEmail }</span>
                <span><i class="am-icon-phone"></i><em>${siteInfo.contactFixedPhone }</em></span>
			</div>
		</li>
		<li class="am-u-lg-4 am-u-md-4 am-u-sm-12 ">
			<div class="part-5-title">相关链接</div>
			<div class="part-5-words2">
				<ul class="part-5-words2-ul">
					<c:forEach items="${links}" var="item">
					<li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a
						href="${item.siteUrl }" target="_blank">${item.siteName }</a></li>
					</c:forEach>
					<div class="clear"></div>
				</ul>
			</div>
		</li>
		<div class="clear"></div>
	</ul>

</footer>