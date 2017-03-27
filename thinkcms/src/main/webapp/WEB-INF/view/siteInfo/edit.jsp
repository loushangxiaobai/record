<%@ taglib prefix="myfn" uri="http://www.cms.com/thinkcms/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/static/css/bootstrap.min.css"/>'>
<%@ include file="/WEB-INF/view/common/head.jsp"%>
<script type="text/javascript"
	src="<c:url value="/static/js/bootstrap-treeview.js"/>"></script>
</head>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<body>
	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">站点设置</strong> / <small>SiteInfo</small>
				</div>
			</div>

			<hr>
			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-10">
					<form class="am-form am-form-horizontal" id="form">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">站点名称
								/ SiteName</label>
							<div class="am-u-sm-9">
								<input type="text" id="siteName" name="siteName"
									value="${entity.siteName }" placeholder="站点名称/ SiteName">
								<input type="hidden" name="id" id="id" value="${entity.id }" />
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">站点副标题
								/ SubTitle</label>
							<div class="am-u-sm-9">
								<input type="text" id="subTitle" name="subTitle"
									value="${entity.subTitle }" placeholder="站点副标题 / SubTitle">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">站点模版
								/ SubTitle</label>
							<div class="am-u-sm-9 am-form-select">
								<select id="siteTemplate" name="siteTemplate"
									onchange="showTemplateImg()">
									<option value="default"
										<c:if test="${myfn:equals(entity.siteTemplate, 'default')}">selected="selected"</c:if>>样式一</option>
									<option value="news"
										<c:if test="${myfn:equals(entity.siteTemplate, 'news')}">selected="selected"</c:if>>样式二</option>
									<option value="company"
										<c:if test="${myfn:equals(entity.siteTemplate, 'company')}">selected="selected"</c:if>>样式三</option>
									<option value="zuqiu"
										<c:if test="${myfn:equals(entity.siteTemplate, 'zuqiu')}">selected="selected"</c:if>>样式四</option>
								</select>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">站点logo
								/ SiteLogo</label>
							<div class="am-u-sm-9">
								<div class="am-form-group am-form-file">
									<button type="button" class="am-btn am-btn-danger am-btn-sm"
										onclick="openChooseLayer();">
										<i class="am-icon-cloud-upload"></i> 选择要上传的文件
									</button>
								</div>
								<img alt="" src="${entity.siteLogo }" id="showImg" width="300px"
									height="200px">
								<button type="button" class="am-btn am-btn-danger am-btn-sm"
									id="deleteImg" onclick="delImg('${entity.siteLogo}')">
									删除</button>
								<input type="hidden" id="siteLogo" name="siteLogo"
									value="${entity.siteLogo }">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">联系地址
								/ ContactAddr</label>
							<div class="am-u-sm-9">
								<input type="text" id="contactAddr" name="contactAddr"
									value="${entity.contactAddr }" placeholder="联系地址/ ContactAddr">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">联系手机号
								/ ContactMobilePhone</label>
							<div class="am-u-sm-9">
								<input type="tel" id="contactMobilePhone"
									name="contactMobilePhone" value="${entity.contactMobilePhone }"
									placeholder="联系手机号 / ContactMobilePhone">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">联系座机号
								/ ContactFixedPhone</label>
							<div class="am-u-sm-9">
								<input type="text" id="contactFixedPhone"
									name="contactFixedPhone" value="${entity.contactFixedPhone }"
									placeholder="联系座机号 / ContactFixedPhone">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">联系邮箱
								/ ContactEmail</label>
							<div class="am-u-sm-9">
								<input type="email" id="contactEmail" name="contactEmail"
									value="${entity.contactEmail }"
									placeholder="联系邮箱 / ContactEmail">
							</div>
						</div>

						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<button type="button" onclick="submitDo();"
									class="am-btn am-btn-primary">保存</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>

		<%@ include file="/WEB-INF/view/common/footer.jsp"%>

	</div>
	<!-- content end -->
	<div class="am-g" id="templateDiv"
		style="display: none;text-align:center;">
		<img src="<c:url value="static/image/admin/template/default.png" />"
			id="templateImg" class="am-img-thumbnail">
	</div>
	<script type="text/javascript">
		function submitDo() {
			var data = $("#form").serialize();
			data = decodeURIComponent(data, true);
			$.ajax({
				url : "siteInfo/edit",
				data : data,
				method : 'post',
				contentType : 'application/x-www-form-urlencoded',
				encoding : 'UTF-8',
				cache : false,
				success : function(result) {
					if (result.success) {
						layer.msg('保存成功');
					} else {
						layer.msg('保存失败');
					}
				},
				error : function() {
					layer.msg('系统异常');
				}
			});
		}
		var data = {
			url : '',
			alt : ''
		};
		function openChooseLayer() {
			layer.open({
				type : 2,
				title : '选择图片',
				shadeClose : true,
				shade : 0.8,
				area : [ '92%', '90%' ],
				content : '<c:url value="/common/chooseLayer"/>',
				end : function() {
					$("#siteLogo").val(data.url);
					$("#showImg").attr("src", data.url);
					$("#deleteImg").attr("onclick",
							"delImg('" + data.url + "')");
				}
			});
		}
		function delImg(path) {
			$("#siteLogo").val("");
			$("#showImg").attr("src", "");
			/* if(path==null){
				return;
			}
			$.ajax({
				url : "../common/fileDelete",
				data : {
					path:path
				},
				method : 'post',
				contentType : 'application/x-www-form-urlencoded',
				encoding : 'UTF-8',
				cache : false,
				success : function(result) {
					if (result.success) {
						$("#siteLogo").val("");
						$("#showImg").attr("src","");
						layer.msg('删除成功');
					} else {
						layer.msg('删除失败');
					}
				},
				error : function() {
					layer.msg('系统异常');
				}
			}); */
		}

		function showTemplateImg() {
			$("#templateDiv").css("display", "block");
			
			$("#templateImg").attr("src", "./static/image/admin/template/"+$('#siteTemplate').val()+".png");
			//页面层-佟丽娅
			layer.open({
				type : 1,
				title : false,
				closeBtn : 0,
				area : '516px',
				skin : 'layui-layer-nobg', //没有背景色
				shadeClose : true,
				content : $('#templateDiv')
			});
		}
	</script>
</body>
</html>
