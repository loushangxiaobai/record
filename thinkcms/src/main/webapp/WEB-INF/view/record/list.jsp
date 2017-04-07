<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<div class="am-u-sm-12">
	<form class="am-form">
	<div class="am-scrollable-horizontal">
		<table class="am-table am-table-bordered am-table-striped am-table-compact am-table-hover table-main am-text-nowrap " style="text-align: center;" >
			<thead>
				<tr>
					<th class="table-check"><input type="checkbox" id="checkAll" onclick="selectAll();" /></th>
					<th class="table-id">ID</th>
					<th class="table-title">门店电话</th>
					<th class="table-title">预计开业时间</th>
					<th class="table-date am-hide-sm-only">门店详细地址</th>
					<th class="table-date am-hide-sm-only">经纬度</th>
					<th class="table-date am-hide-sm-only">开始营业时间</th>
					<th class="table-date am-hide-sm-only">结束营业时间</th>
					<th class="table-date am-hide-sm-only">法人姓名</th>
					<th class="table-date am-hide-sm-only">手机号码</th>
					<th class="table-date am-hide-sm-only">微信号</th>
					<th class="table-date am-hide-sm-only">邮箱地址</th>
					<th class="table-date am-hide-sm-only">QQ号码</th>
					<th class="table-date am-hide-sm-only">门店店长姓名</th>
					<th class="table-date am-hide-sm-only">门店店长手机号码</th>
					<th class="table-date am-hide-sm-only">门店店长微信</th>
					<th class="table-date am-hide-sm-only">门店类型</th>
					<th class="table-date am-hide-sm-only">工程师人数</th>
					<th class="table-date am-hide-sm-only">工程师附录地址</th>
					<th class="table-date am-hide-sm-only">线上平台</th>
					<th class="table-date am-hide-sm-only">线上平台微信公众号</th>
					<th class="table-date am-hide-sm-only">是否使用其他订单平台</th>
					<th class="table-date am-hide-sm-only">其他平台说明</th>
					<th class="table-date am-hide-sm-only">合同期限</th>
					<th class="table-date am-hide-sm-only">合同开始日期</th>
					<th class="table-date am-hide-sm-only">合同结束日期</th>
					<th class="table-date am-hide-sm-only">合作模式</th>
					<th class="table-date am-hide-sm-only">项目名称</th>
					<th class="table-date am-hide-sm-only">加盟费用大写</th>
					<th class="table-date am-hide-sm-only">加盟费用小写</th>
					<th class="table-date am-hide-sm-only">加盟保证金大写</th>
					<th class="table-date am-hide-sm-only">加盟保证金小写</th>
					<th class="table-date am-hide-sm-only">合作协议书地址</th>
					<th class="table-date am-hide-sm-only">收据地址</th>
					<th class="table-date am-hide-sm-only">法人身份证地址</th>
					<th class="table-date am-hide-sm-only">法人手持身份证地址</th>
					<th class="table-date am-hide-sm-only">维修工程师登记表地址</th>
				 <th class="table-date am-hide-sm-only">门店高清横屏照片地址</th>
					<th class="table-date am-hide-sm-only">其他文件资料地址</th>
					<th class="table-date am-hide-sm-only">分公司提交人</th>
					<th class="table-date am-hide-sm-only">分公司提交日期</th>
					<th class="table-date am-hide-sm-only">分公司负责人</th>
					<th class="table-date am-hide-sm-only">分公司负责人签署日期</th>
					<th class="table-date am-hide-sm-only">财务部审核人</th>
					<th class="table-date am-hide-sm-only">财务部审核人签署日期</th>
					<th class="table-date am-hide-sm-only">门店名称</th>
					<th class="table-date am-hide-sm-only">门店编码</th>
					<th class="table-date am-hide-sm-only">经手人签名</th>
					<th class="table-date am-hide-sm-only">经手人签署日期</th>
					 <th class="table-date am-hide-sm-only">网络部推广配对</th>
					<th class="table-date am-hide-sm-only">网络部负责人</th> 
					<th class="table-date am-hide-sm-only">网络部签署日期</th> 
					<th class="table-date am-hide-sm-only">运营助理</th> 
					<th class="table-date am-hide-sm-only">运营助理签署日期</th> 
					<th class="table-date am-hide-sm-only">运营部负责人</th> 
					<th class="table-date am-hide-sm-only">运营部负责人签署日期</th> 
					<th class="table-set" >编辑</th>
					<th class="table-set" >打印</th>
					<th class="table-set" >发送短信</th>
					<th class="table-set" >删除</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items }" var="item">
					<tr>
						<td class="am-text-middle"><input type="checkbox" name="checkitem" onclick="selectItem(this);" id="check${item.id }" value="${item.id }"/></td>
						<td class="am-text-middle">${item.id }</td>
						<td class="am-text-middle">${item.storePhone }</td>
						<td class="am-text-middle">${item.openTime }</td>
						<td class="am-text-middle">${item.province }${item.city }${item.district } ${item.storeAddr }</td>
						<td class="am-text-middle">${item.jwd }</td>
						<td class="am-text-middle">${item.businessStart }</td>
						<td class="am-text-middle">${item.businessEnd }</td>
						<td class="am-text-middle">${item.legalName }</td>
						<td class="am-text-middle">${item.mobilePhone }</td>
						<td class="am-text-middle">${item.weChat }</td>
						<td class="am-text-middle">${item.email }</td>
						<td class="am-text-middle">${item.QQ }</td>
						<td class="am-text-middle">${item.storePersonName }</td>
						<td class="am-text-middle">${item.storePersonPhone }</td>
						<td class="am-text-middle">${item.storePersonWechat }</td>
						<td class="am-text-middle">
						<c:choose>
						<c:when test="${item.storeType eq 1}">
						   独立店
						</c:when>
						<c:otherwise>
						    店中店
						</c:otherwise>
						</c:choose>
						</td>
						<td class="am-text-middle">${item.engineerNum }</td>
						<td class="am-text-middle">${item.appendixAddr }</td>
						<td class="am-text-middle">${item.xsPingTai }</td>
						<td class="am-text-middle">${item.xsWechat }</td>
						<td class="am-text-middle">${item.isOtherPt }</td>
						<td class="am-text-middle">${item.otherPtInfo }</td>
						<td class="am-text-middle">${item.contractDateline }</td>
						<td class="am-text-middle">${item.contractStart }</td>
						<td class="am-text-middle">${item.contractEnd }</td>
						<td class="am-text-middle">${item.cooperationModel }</td>
						<td class="am-text-middle">${item.projectName }</td>
						<td class="am-text-middle">${item.joinCostBig }</td>
						<td class="am-text-middle">${item.joinCostSmall }</td>
						<td class="am-text-middle">${item.joinAssureBig }</td>
						<td class="am-text-middle">${item.joinAssureSmall }</td>
						<td class="am-text-middle">
						<a href="record/download?fileName=${item.heuoxieyiUrl }">${item.heuoxieyiUrl }</a>
						
						</td>
						<td class="am-text-middle"> <a href="record/download?fileName=${item.shoujuUrl }">${item.shoujuUrl }</a></td>
						<td class="am-text-middle"> <a href="record/download?fileName=${item.idCardUrl }">${item.idCardUrl }</a></td>
						<td class="am-text-middle"> <a href="record/download?fileName=${item.idCardInHandUrl }">${item.idCardInHandUrl }</a> </td>
						<td class="am-text-middle">  <a href="record/download?fileName=${item.engineerUrl }">${item.engineerUrl }</a></td>
						 <td class="am-text-middle"> <a href="record/download?fileName=${item.storeImage }">${item.storeImage }</a></td> 
						<td class="am-text-middle"> <a href="record/download?fileName=${item.otherFileUrl }">${item.otherFileUrl }</a></td>
						<td class="am-text-middle">${item.filialeSubmitPerson }</td>
						<td class="am-text-middle">${item.submitDate }</td>
						<td class="am-text-middle">${item.filialePrincipal }</td>
						<td class="am-text-middle">${item.filialePrincipalDate }</td>
						<td class="am-text-middle">${item.finance }</td>
						<td class="am-text-middle">${item.financeDate }</td>
						<td class="am-text-middle">${item.storeName }</td>
						<td class="am-text-middle">${item.storeNo }</td>
						<td class="am-text-middle">${item.handlerName }</td>
						<td class="am-text-middle">${item.handlerDate }</td>
					    <td class="am-text-middle">${item.wlbTuiGuang } <span> ${wlbTuiGuangOther }</span></td>
						<td class="am-text-middle">${item.wlbSign }</td>
						<td class="am-text-middle">${item.wlbSignDate }</td>
						<td class="am-text-middle">${item.gbuInt }</td>
						<td class="am-text-middle">${item.gbuIntDate }</td>
						<td class="am-text-middle">${item.operationsDirector }</td>
						<td class="am-text-middle">${item.operationsDirectorDate }</td>
						<td >
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<button type="button" class="am-btn am-btn-default am-text-secondary"
										onclick="openWindow('record/edit?id=${item.id}','备案编辑');" style="float: left;">
										<span class="am-icon-pencil-square-o"></span> 编辑
									</button>
								</div>
							</div>
						</td>
						
						<td >
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
								<a href="record/print?id=${item.id}" class="am-btn am-btn-default am-text-secondary">打印</a>
								
									<%-- <button type="button" class="am-btn am-btn-default am-text-secondary"
										onclick="openWindow('record/print?id=${item.id}','备案编辑');" style="float: left;">
										<span class="am-icon-pencil-square-o"></span> 打印
									</button> --%>
								</div>
							</div>
						</td>
						<td>
						
						<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
						<button type="button" class="am-btn am-btn-default am-text-secondary"
										onclick="openWindow('record/sendMessage?phone=${item.storePersonPhone}','短信编辑');" style="float: left;">
										<span class="am-icon-pencil-square-o"></span> 发送短信
									</button>
										</div>
							</div>
									</td>
						<td>
						<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
						
						<button type="button" class="am-btn am-btn-default am-text-danger"
									    onclick="del('${item.id}')" style="float: left;">
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
