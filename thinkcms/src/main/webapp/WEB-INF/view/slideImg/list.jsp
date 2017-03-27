<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<div class="am-u-sm-12">
	<form class="am-form">
		<table class="am-table am-table-striped am-table-hover table-main">
			<thead>
				<tr>
					<th class="table-check"><input type="checkbox" id="checkAll" onclick="selectAll();" /></th>
					<th class="table-id">ID</th>
					<th class="table-title">图片说明</th>
					<th class="table-title">幻灯图片</th>
					<th class="table-title">显示顺序</th>
					<th class="table-date am-hide-sm-only">是否可用</th>
					<th class="table-set">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items }" var="item">
					<tr>
						<td><input type="checkbox" name="checkitem" onclick="selectItem(this);" id="check${item.id }" value="${item.id }"/></td>
						<td>${item.id }</td>
						<td>${item.alt }</td>
						<td><img src="${item.imgUrl }" width="200px" height="120px"/></td>
						<td>${item.showOrder }</td>
						<td class="am-hide-sm-only">${item.available }</td>
						<td>
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<button type="button" class="am-btn am-btn-default am-text-secondary"
										onclick="openWindow('slideImg/edit?id=${item.id}','链接编辑');">
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
