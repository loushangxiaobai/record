<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
<head>
<style type="text/css">
.am-form-group{
padding:10px;
}
.am-form-group span{
font-weight:bold;
width:80px;
display:inline-block
}
</style>
</head>
<body>
	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">球场管理</strong> / <small>Stadium</small>
				</div>
			</div>

			<hr>

			<div class="am-g">
				<form id="form" class="am-form-inline">
					  <div class="am-form-group">
					      <span >所属城市</span>
					      <input type="text"  class="am-form-field" id="city" name="city" placeholder="所属城市">
					  </div>
					  <div class="am-form-group">
					      <span >所属区域</span>
					      <input type="text"  class="am-form-field" id="area" name="area" placeholder="所属区域">
					  </div>
					  <div class="am-form-group">
					      <span >球场名称</span>
					      <input type="text"  class="am-form-field" id="name" name="name" placeholder="球场名称">
					  </div>
					  <div class="am-form-group">
					      <span >球场类型</span>
					      <input type="text"  class="am-form-field" id="siteType" name="siteType" placeholder="球场类型">
					  </div>
					  <div class="am-form-group">
					      <span >草皮类型</span>
					      <input type="text"  class="am-form-field" id="sod" name="sod" placeholder="草皮类型">
					  </div>
					  <div class="am-form-group">
					      <span >灯光情况</span>
					      <input type="text"  class="am-form-field" id="lamplight" name="lamplight" placeholder="灯光情况">
					  </div>
					  <div class="am-form-group">
					      <span >详细地址</span>
					      <input type="text"  class="am-form-field" id="addr" name="addr" placeholder="详细地址">
					  </div>
					  <div class="am-form-group">
					      <span >开放时间</span>
					      <input type="text"  class="am-form-field" id="openTime" name="openTime" placeholder="开放时间">
					  </div>
					  <div class="am-form-group">
					      <span >球场简介</span>
					      <input type="text"  class="am-form-field" id="siteInfo" name="siteInfo" placeholder="球场简介">
					  </div>
					  <div class="am-form-group">
					      <span >联系人</span>
					      <input type="text"  class="am-form-field" id="contMan" name="contMan" placeholder="联系人">
					  </div>
					  <div class="am-form-group">
					      <span >QQ</span>
					      <input type="text"  class="am-form-field" id="contQQ" name="contQQ" placeholder="QQ">
					  </div>
					  <div class="am-form-group">
					      <span >QQ群</span>
					      <input type="text"  class="am-form-field" id="contQqun" name="contQqun" placeholder="QQ群">
					  </div>
					  <div class="am-form-group">
					      <span >微信</span>
					      <input type="text"  class="am-form-field" id="contWx" name="contWx" placeholder="微信">
					  </div>
					  <div class="am-form-group">
					      <span >微博</span>
					      <input type="text"  class="am-form-field" id="contWb" name="contWb" placeholder="微博">
					  </div>
					  <div class="am-form-group">
					      <span >联系电话</span>
					      <input type="text"  class="am-form-field" id="contPhone" name="contPhone" placeholder="联系电话">
					  </div>
					  <div class="am-form-group">
					      <span >球场缩略图</span>
					      <input type="text"  class="am-form-field" id="showImg" name="showImg" placeholder="球场缩略图">
					  </div>
  					 <div class="am-form-group" style="padding:10px;">
				      <span >更新时间</span>
				      <input type="text"  class="am-form-field" id="startDate" name="startDate" placeholder="起">
				      -
				      <input type="text"  class="am-form-field" id="endDate" name="endDate" placeholder="止">
					  </div>
					<br>
					<div class="am-u-sm-8 ">
					 	 	<button type="button" class="am-btn am-btn-secondary"
									onclick="openWindow('stadium/add','附件新增');">
									<span class="am-icon-plus"></span> 新增
							</button>
							<button type="button" class="am-btn am-btn-warning"
								onClick="del();">
								<span class="am-icon-trash-o"></span> 删除
							</button>
							<button class="am-btn am-btn-success" type="button"
								onclick="query()">
								<span class="am-icon-search"></span> 搜索
							</button>
							<button class="am-btn am-btn-primary" type="reset">
								<span class="am-icon-refresh"></span> 重置
							</button>
					</div>
			<input type="hidden" id="pageNo" name="pageNo" />
					<input type="hidden" id="pageSize" name="pageSize" />
			</form>
		</div>
		<br>
			<div id="list" class="am-g"></div>
		</div>
		<%@ include file="/WEB-INF/view/common/footer.jsp"%>
	</div>
	<!-- content end -->
	<script type="text/javascript">
		$(function() {
			query();
		});
		function query(pageNo,pageSize) {
			$("#pageNo").val(pageNo);
			$("#pageSize").val(pageSize);
			var data = $("#form").serialize();
			data = decodeURIComponent(data, true);
			$.ajax({
						url : 'stadium/list',
						type : 'post',
						data :data,
						cache : false,
						contentType : "application/x-www-form-urlencoded; charset=utf-8",
						success : function(html) {
							$('#list').html(html);
						},
						error : function() {
							layer.msg('系统异常');
						}
					});
		}
		function del(id) {
			if (!id) {
				id = "";
				$("[name='checkitem'][checked]").each(function(index) {
					id += $(this).val();
					if (index < $("[name='checkitem'][checked]").length - 1) {
						id += ",";
					}
				});
				if(id.length<1){
					layer.msg("请选择要删除的选项");
					return;
				}
			}
			layer.msg('你确定要删除么？', {
				  time: 0 //不自动关闭
				  ,btn: ['确定', '取消']
				  ,yes: function(index){
					 
					  $.ajax({
							url : 'stadium/del',
							type : 'post',
							data : {
								ids : id
							},
							cache : false,
							contentType : "application/x-www-form-urlencoded; charset=utf-8",
							success : function(html) {
								if (html.success) {
									layer.msg("删除成功");
									query();
								} else {
									layer.msg('删除失败');
								}
							},
							error : function() {
								layer.msg('系统异常');
							}
						});//end ajax
					  
				  }//end yes function
				});//end layer.msg
			
		}
		function selectAll() {
			$('input:checkbox').prop("checked",
					document.getElementById("checkAll").checked);
			$('input:checkbox').attr("checked",
					document.getElementById("checkAll").checked);
		}
		function selectItem(obj) {
			$(obj).prop("checked",
					document.getElementById($(obj).attr("id")).checked);
			$(obj).attr("checked",
					document.getElementById($(obj).attr("id")).checked);
		}
	</script>
</body>
</html>
