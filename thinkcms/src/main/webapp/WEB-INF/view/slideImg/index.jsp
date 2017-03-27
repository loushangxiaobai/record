<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
					<strong class="am-text-primary am-text-lg">幻灯管理</strong> / <small>SlideImg</small>
				</div>
			</div>

			<hr>

			<div class="am-g">
				<form id="form">
					<div class="am-u-sm-12 am-u-md-6">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<button type="button" class="am-btn am-btn-default"
									onclick="openWindow('slideImg/add','幻灯新增');">
									<span class="am-icon-plus"></span> 新增
								</button>
								<button type="button" class="am-btn am-btn-default"
									onClick="del();">
									<span class="am-icon-trash-o"></span> 删除
								</button>
							</div>
						</div>
					</div>
					<div class="am-u-sm-12 am-u-md-3">
						<div class="am-input-group am-input-group-sm">
							<input type="text" class="am-form-field" id="description" name="description" placeholder="用户名称模糊查询">
							<span class="am-input-group-btn">
								<button class="am-btn am-btn-default" type="button" onclick="query()">搜索</button>
							</span>
						</div>
					</div>
				</form>
			</div>
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
			$.ajax({
						url : 'slideImg/list',
						type : 'post',
						data : {
							pageNo:pageNo,
							pageSize:pageSize
						},
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
							url : 'slideImg/del',
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
