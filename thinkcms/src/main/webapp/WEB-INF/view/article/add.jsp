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
				<hr>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-10">
					<form class="am-form am-form-horizontal" id="form">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">标题
								/ Title</label>
							<div class="am-u-sm-9">
								<input type="text" id="title" name="title"
									placeholder="标题 / Title">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">栏目
								/ Category</label>
							<div class="am-u-sm-9">
								<div id="tree"></div>
								<input type="hidden" name="categoryId" id="categoryId">
								<input type="hidden" name="categoryName" id="categoryName">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">特殊属性
								/ Attr</label>
							<div class="am-u-sm-9">
								<input type="checkbox"  name="attr" value="1">推荐
								<input type="checkbox"  name="attr" value="2">幻灯
								<input type="checkbox"  name="attr" value="3">高亮
								<input type="checkbox"  name="attr" value="4">置顶
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">作者
								/ Author</label>
							<div class="am-u-sm-9">
								<input type="text" id="author" name="author"
									placeholder="作者 / Author">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">标签
								/ Tag</label>
							<div class="am-u-sm-9">
								<input type="text" id="tag" name="tag" placeholder="标签 / Tag">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">摘要
								/ Remark</label>
							<div class="am-u-sm-9">
								<textarea rows="6" name="remark" id="remark" placeholder="摘要 / Remak"></textarea>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-u-sm-3 am-form-label">缩略图
								/ ImgUrl</label>
							<div class="am-u-sm-9">
								<div class="am-form-group am-form-file" >
									<button type="button" class="am-btn am-btn-danger am-btn-sm" onclick="openChooseLayer();">
										<i class="am-icon-cloud-upload"></i> 选择要上传的文件
									</button>
								</div>
								<img alt="" src="" id="showImg" width="300px" height="200px">
									<button type="button" class="am-btn am-btn-danger am-btn-sm" id="deleteImg">
										删除
									</button>
								<input type="hidden" id="imgUrl" name="imgUrl">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-weibo" class="am-u-sm-3 am-form-label">是否可用
								/ Available</label>
							<div class="am-u-sm-9 am-form-select">
								<select  id="available"
									name="available">
									<option value="1">可用</option>
									<option value="0">禁用</option>
								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-QQ" class="am-u-sm-3 am-form-label">显示顺序
								/ ShowOrder</label>
							<div class="am-u-sm-9">
								<input type="number" pattern="[0-9]*" id="showOrder"
									name="showOrder" placeholder="显示顺序   / ShowOrder">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-QQ" class="am-u-sm-3 am-form-label">内容 /
								Content</label>
							<div class="am-u-sm-9">
								<textarea name="content" id="content" rows="20"></textarea>
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
	<script type="text/javascript"
		src="<c:url value="/static/plugin/tinymce/tinymce.min.js"/>"></script>
	<!-- content end -->
	<script type="text/javascript">
		$(function() {
			setTree();
			setTexteara();
		});
		function submitDo() {
			$("#content").val(tinyMCE.get('content').getContent());
			var data = $("#form").serialize();
			data = decodeURIComponent(data, true);
			$.ajax({
				url : "add",
				data : data,
				method : 'post',
				contentType : 'application/x-www-form-urlencoded',
				encoding : 'UTF-8',
				cache : false,
				success : function(result) {
					if (result.success) {
						layer.msg('保存成功');
						setTimeout("closeWindow()", 1000);
					} else {
						layer.msg('保存失败');
					}
				},
				error : function() {
					layer.msg('系统异常');
				}
			});
		}
		function setTree() {
			$('#tree').treeview({
				data : '${category}'
			});
			$("#categoryId").val($('#tree').treeview('getSelected')[0].tags);
			$("#categoryName").val($('#tree').treeview('getSelected')[0].text);
			$('#tree').on(
					'nodeSelected',
					function(event, data) {
						$("#categoryId").val(
								$('#tree').treeview('getSelected')[0].tags);
						$("#categoryName").val(
								$('#tree').treeview('getSelected')[0].text);
					});
		}
		var data = {
			url : '',
			alt : ''
		};
		function setTexteara() {
			tinymce.init({
						selector : '#content',
						height : 500,
						language : 'zh_CN',
						menubar : false,
						automatic_uploads : true,
						paste_data_images : true,
						convert_urls : false,
						imagetools_toolbar : "rotateleft rotateright | flipv fliph | editimage imageoptions",
						/*  imagetools_proxy: '${CPATH}/admin/tinymce/image/proxy',
						 images_upload_url: '${CPATH}/admin/tinymce/image/upload', */
						wordcount_countregex : /[\u4e00-\u9fa5_a-zA-Z0-9]/g,
						file_picker_callback : function(callback, value, meta) {
							layer.open({
								type : 2,
								title : '选择图片',
								shadeClose : true,
								shade : 0.8,
								area : [ '92%', '90%' ],
								content : '<c:url value="/common/chooseLayer"/>',
								end : function() {
									callback(data.url, {alt : data.alt});
								}
							});
						},
						plugins : [
								"advlist autolink autosave link image imagetools lists charmap print preview hr anchor pagebreak spellchecker",
								"searchreplace wordcount visualblocks visualchars code codesample fullscreen insertdatetime media nonbreaking",
								"table contextmenu directionality emoticons template textcolor paste fullpage textcolor colorpicker textpattern" ],
						toolbar1 : '  bold italic underline strikethrough removeformat | blockquote hr table image | link  anchor unlink | alignleft aligncenter alignright alignjustify | bullist numlist  | fullscreen code   ',
						toolbar2 : '  formatselect | outdent indent | forecolor backcolor  | codesample undo redo  ',
					});
		}
		function openChooseLayer() {
			layer.open({
				type : 2,
				title : '选择图片',
				shadeClose : true,
				shade : 0.8,
				area : [ '92%', '90%' ],
				content : '<c:url value="/common/chooseLayer"/>',
				end : function() {
					$("#imgUrl").val(data.url);
					$("#showImg").attr("src",data.url);
					$("#deleteImg").attr("onclick","delImg('"+data.url+"')");
				}
			});
		}
		function delImg(path){
			$("#imgUrl").val("");
			$("#showImg").attr("src","");
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
	</script>
</body>
</html>
