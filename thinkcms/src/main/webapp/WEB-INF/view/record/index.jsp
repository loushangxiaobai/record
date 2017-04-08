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
					<strong class="am-text-primary am-text-lg">备案管理</strong> / <small>Record</small>
				</div>
			</div>

			<hr>

			<div class="am-g">
				<form id="form">
					<div class="am-u-sm-12 am-u-md-6">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<button type="button" class="am-btn am-btn-default"
									onclick="exportByid();">
									<span class="am-icon-plus"></span> 导出
								</button>
								<button type="button" class="am-btn am-btn-default"
									onclick="sendemail();">
									<span class="am-icon-plus"></span> 发送邮件
								</button>
								<button type="button" class="am-btn am-btn-default"
									onClick="del();">
									<span class="am-icon-trash-o"></span> 删除
								</button>
							</div>
						</div>
					</div>
					
		 <div id="distpicker5" style="height: 30px;margin-left: -200px;margin-bottom: -60px;">
        <div  style="float: left;height: 30px; width: 100px;">
          <select  id="province10" name="province" onchange="query()"></select>
        </div>
        <div style="float: left;height: 30px;margin-left:52px;">
          <select  id="city10" style="margin-left: 5px;" name="city" onchange="query()"></select>
        </div>
        <div style="float: left;height: 30px;margin-left: 5px;">
          <select id="district10" name="district" onchange="query()"></select>
      
						</div>
					</div> 
					<div class="am-u-sm-12 am-u-md-3" style="float: left;margin-left: 75%;">
						<div class="am-input-group am-input-group-sm">
							<input type="text" class="am-form-field" id="description" name="description" placeholder="门店名称模糊查询">
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
		<%@ include file="/WEB-INF/view/common/head.jsp"%>
	</div>
	<!-- content end -->
	<script type="text/javascript">
		$(function() {
			query();
		});
		function query(pageNo,pageSize) {
			$.ajax({
						url : 'record/list',
						type : 'post',
						data : {
							/* description:$("#description10").val(), */
							province:$("#province10").val(),
							city:$("#city10").val(),
							district:$("#district10").val(),
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
		
		/* function queryByString(pageNo,pageSize) {
			$.ajax({
						url : 'record/list',
						type : 'post',
						data : {
							description:$("#description").val(),
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
		} */
		
		
		
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
							url : 'record/del',
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
		
		function sendemail(id) {
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
			 $.ajax({
					url : 'record/findEmail',
					type : 'post',
					data : {
						ids : id
					},
					cache : false,
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
					success : function(data) {
						alert(data);
						if (data) {
							query();
						} else {
							layer.msg('请选择接收人');
						}
					},
					error : function() {
						layer.msg('系统异常');
					}
				});//end aja
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
		
		function exportByid(id) {
			if (!id) {
				id = "";
				$("[name='checkitem'][checked]").each(function(index) {
					id += $(this).val();
					if (index < $("[name='checkitem'][checked]").length - 1) {
						id += ",";
					}
				});
				if(id.length<1){
					layer.msg("请选择要导出的选项");
					return;
				}
			}
			layer.msg('你确定要导出么？', {
				  time: 0 //不自动关闭
				  ,btn: ['确定', '取消']
				  ,yes: function(index){
					 location.href="record/export?ids="+id;
					 layer.msg("导出成功！");
				  }//end yes function
				});//end layer.msg
			
		}
		
		
		
	</script>
	<script type="text/javascript">
	
	$("#distpicker5").distpicker({
		  autoSelect: false
		});
	
	</script>
</body>
</html>
