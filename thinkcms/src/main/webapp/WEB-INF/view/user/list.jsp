<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<div class="am-u-sm-12">
	<form class="am-form">
		<table class="am-table am-table-striped am-table-hover table-main">
			<thead>
				<tr>
					<th class="table-check"><input type="checkbox" id="checkAll" onclick="selectAll();" /></th>
					<th class="table-id">ID</th>
					<th class="table-title">用户名</th>
					<th class="table-title">电话</th>
					<th class="table-title am-hide-sm-only">昵称</th>
					<th class="table-title am-hide-sm-only">部门</th>
					<th class="table-date am-hide-sm-only">是否可用</th>
					<th class="table-set">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items }" var="item">
					<tr>
						<td><input type="checkbox" name="checkitem" onclick="selectItem(this);" id="check${item.id }" value="${item.id }"/></td>
						<td>${item.id }</td>
						<td><a href="#">${item.userName }</a></td>
						<td class="am-hide-sm-only">${item.mobile }</td>
						<td class="am-hide-sm-only">${item.niceName }</td>
						<td class="am-hide-sm-only">${item.department }</td>
						<td class="am-hide-sm-only">${!item.locked }</td>
						<td>
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<button type="button" class="am-btn am-btn-default am-text-secondary"
										onclick="openWindow('user/edit?id=${item.id}','用户编辑');">
										<span class="am-icon-pencil-square-o"></span> 编辑
									</button>
									<button type="button" class="am-btn am-btn-default am-text-danger"
									    onclick="del('${item.id}')">
										<span class="am-icon-trash-o"></span> 删除
									</button>
								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		${list.pageStr }
		<hr />
		<p>注：.....</p>
	</form>
</div>
