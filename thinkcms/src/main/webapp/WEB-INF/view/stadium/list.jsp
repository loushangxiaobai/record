<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<div class="am-u-sm-12">
	<form class="am-form">
	<div class="am-scrollable-horizontal">
		<table class="am-table am-table-bordered am-table-striped am-table-compact am-table-hover table-main am-text-nowrap">
			<thead>
				<tr>
					<th class="table-check"><input type="checkbox" id="checkAll" onclick="selectAll();" /></th>
											<th class="table-date am-hide-sm-only">所属城市</th>
						<th class="table-date am-hide-sm-only">所属区域</th>
						<th class="table-date am-hide-sm-only">球场名称</th>
						<th class="table-date am-hide-sm-only">球场类型</th>
						<th class="table-date am-hide-sm-only">草皮类型</th>
						<th class="table-date am-hide-sm-only">灯光情况</th>
						<th class="table-date am-hide-sm-only">详细地址</th>
						<th class="table-date am-hide-sm-only">开放时间</th>
						<th class="table-date am-hide-sm-only">球场简介</th>
						<th class="table-date am-hide-sm-only">联系人</th>
						<th class="table-date am-hide-sm-only">QQ</th>
						<th class="table-date am-hide-sm-only">QQ群</th>
						<th class="table-date am-hide-sm-only">微信</th>
						<th class="table-date am-hide-sm-only">微博</th>
						<th class="table-date am-hide-sm-only">联系电话</th>
						<th class="table-date am-hide-sm-only">球场缩略图</th>
					<th class="table-set">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items }" var="item">
					<tr>
						<td><input type="checkbox" name="checkitem" onclick="selectItem(this);" id="check${item.id }" value="${item.id }"/></td>
							<td>${item.city}</td>
							<td>${item.area}</td>
							<td>${item.name}</td>
							<td>${item.siteType}</td>
							<td>${item.sod}</td>
							<td>${item.lamplight}</td>
							<td>${item.addr}</td>
							<td>${item.openTime}</td>
							<td>${item.siteInfo}</td>
							<td>${item.contMan}</td>
							<td>${item.contQQ}</td>
							<td>${item.contQqun}</td>
							<td>${item.contWx}</td>
							<td>${item.contWb}</td>
							<td>${item.contPhone}</td>
							<td>${item.showImg}</td>
						<td>
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<button type="button" class="am-btn am-btn-default am-text-secondary"
										onclick="openWindow('stadium/edit?id=${item.id}','编辑');">
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
		</div>
		${list.pageStr }
		<hr />
	</form>
</div>
