<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<div class="am-u-sm-12">
	<form class="am-form">
		<table class="am-table am-table-striped am-table-hover table-main">
			<thead>
				<tr>
					<th class="table-id">ID</th>
					<th class="table-title">图片名</th>
					<th class="table-title am-hide-sm-only">图片</th>
					<th class="table-title am-hide-sm-only">大小</th>
					<th class="table-date am-hide-sm-only">创建日期</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items }" var="item">
					<tr onclick="doChoose('${item.url }');doClose();">
						<td>${item.id }</td>
						<td>${item.fileName }</td>
						<td><img class="am-radius" src="${item.url }" width="180px;" height="140px"/></td>
						<td class="am-hide-sm-only">${item.fileSize }</td>
						<td class="am-hide-sm-only">${item.createDate }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		${list.pageStr }
		<hr />
		<p>注：.....</p>
	</form>
</div>
