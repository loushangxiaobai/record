package com.thinkcms.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * @ClassName:Record
 * @author xiaobai
 * @date 2017年3月23日18:17:02 
 */

@Entity
@Table(name = "sys_record")
public class Record  implements Serializable{

	/**
	 * @deprecated:TODO
	 */
	private static final long serialVersionUID = -8781946298894187861L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	//门店电话
	@Column(name = "store_phone")
	private String storePhone;
	//预计开业时间
	@Column(name = "open_time")
	private String openTime;
	//门店详细地址
	@Column(name = "store_addr")
	private String storeAddr;
	//经纬度
	@Column(name = "jwd")
	private String jwd;
	//营业时间开始
	@Column(name= "business_start")
	private String businessStart;
	//营业时间结束
	@Column(name= "business_end")
	private String businessEnd;
	//法人姓名
	@Column(name = "legal_name")
	private String legalName;
	//手机号码
	@Column(name = "mobilephone")
	private String mobilePhone;
	//微信号
	@Column(name = "wechat")
	private String weChat;
	//邮箱地址
	@Column(name = "email")
	private String email;
	//QQ号码或其他联系方式
	@Column(name = "qq")
	private String QQ;
	//门店店长姓名
	@Column(name = "store_person_name")
	private String storePersonName;
	//门店店长手机号码
	@Column(name = "store_person_phone")
	private String storePersonPhone;
	//门店店长微信
	@Column(name = "store_person_wechat")
	private String storePersonWechat;
	//门店类型  1--独立店  2--店中店
	@Column(name = "storetype")
	private Integer storeType;
	//工程师人数
	@Column(name = "engineernum")
	private Integer engineerNum;
	//工程师附录地址
	@Column(name = "appendix_addr")
	private String appendixAddr;
	//线上平台
	@Column(name = "xs_pingtai")
	private String xsPingTai;
	//线上平台微信公众号
	@Column(name = "xs")
	private String xsWechat;
	//是否使用其他订单平台
	@Column(name = "isotherpt")
	private String isOtherPt;
	//其他平台说明
	@Column(name = "otherptinfo")
	private String otherPtInfo;
	//合同期限
	@Column(name = "contract_dateline")
	private String contractDateline;
	//合同开始日期
	@Column(name = "contract_start")
	private String contractStart;
	//合同开始日期
	@Column(name = "contract_end")
	private String contractEnd;
	//合作模式
	@Column(name = "cooperation_model")
	private String cooperationModel;
	//项目名称
	@Column(name = "project_name")
	private String projectName;
	//加盟费用大写
	@Column(name = "joincostbig")
	private String joinCostBig;
	//加盟费用小写
	@Column(name = "joincostsmall")
	private BigDecimal joinCostSmall;
	//加盟保证金大写
	@Column(name = "joinassurebig")
	private String joinAssureBig;
	//加盟保证金小写
	@Column(name = "joinassuresmall")
	private BigDecimal joinAssureSmall;
	//合作协议书地址
	@Column(name = "hezuoxieyiurl")
	private String heuoxieyiUrl;
	//收据地址
	@Column(name = "shoujuurl")
	private String shoujuUrl;
	//法人身份证地址
	@Column(name = "idcardurl")
	private String idCardUrl;
	//法人手持身份证地址
	@Column(name = "idcardinhandurl")
	private String idCardInHandUrl;
	//维修工程师登记表地址
	@Column(name = "engineerurl")
	private String engineerUrl;
	//门店高清横屏照片地址
	/*@Column(name = "storeimage")
	private String StoreImage;*/
	
	//门店高清横屏照片地址
	@Column(name = "storeImage")
	private String storeImage;
	//其他文件资料地址
	@Column(name = "otherfileurl")
	private String otherFileUrl;
	//分公司提交人
	@Column(name = "filiale_submit_person")
	private String filialeSubmitPerson;
	//提交日期
	@Column(name = "submit_date")
	private String submitDate;
	//分公司负责人
	@Column(name = "filiale_principal")
	private String filialePrincipal;
	//分公司负责人签署日期
	@Column(name = "filiale_principal_date")
	private String filialePrincipalDate;
	//财务部审核人
	@Column(name = "Finance")
	private String finance;
	//财务部审核人签署日期
	@Column(name = "finance_date")
	private String financeDate;
	//门店名称
	@Column(name = "store_name")
	private String storeName;
	//门店编码
	@Column(name = "store_no")
	private String storeNo;
	//经手人签名
	@Column(name = "handler_name")
	private String handlerName;
	//经手人签署日期
	@Column(name = "handler_date")
	private String handlerDate;
	//网络部推广配对
	@Column(name = "wlb_tuiguang")
	private String wlbTuiGuang;
	//网络部负责人
	@Column(name = "wlb_sign")
	private String wlbSign;
	//网络部签署日期
	@Column(name = "wlb_sign_date")
	private String wlbSignDate;
	//运营助理
	@Column(name = "gbu_int")
	private String gbuInt;
	//运营助理签署日期
	@Column(name = "gbu_int_date")
	private String gbuIntDate;
	//运营部负责人
	@Column(name = "operations_director")
	private String operationsDirector;
	//运营部负责人签署日期
	@Column(name = "operations_director_date")
	private String operationsDirectorDate;
		
	@Column(name = "create_date")
	private String createDate;
	@Column(name = "modify_date")
	private String modifyDate;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getStorePhone() {
		return storePhone;
	}
	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}
	public String getOpenTime() {
		return openTime;
	}
	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}
	public String getStoreAddr() {
		return storeAddr;
	}
	public void setStoreAddr(String storeAddr) {
		this.storeAddr = storeAddr;
	}
	public String getJwd() {
		return jwd;
	}
	public void setJwd(String jwd) {
		this.jwd = jwd;
	}
	public String getBusinessStart() {
		return businessStart;
	}
	public void setBusinessStart(String businessStart) {
		this.businessStart = businessStart;
	}
	public String getBusinessEnd() {
		return businessEnd;
	}
	public void setBusinessEnd(String businessEnd) {
		this.businessEnd = businessEnd;
	}
	public String getLegalName() {
		return legalName;
	}
	public void setLegalName(String legalName) {
		this.legalName = legalName;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getWeChat() {
		return weChat;
	}
	public void setWeChat(String weChat) {
		this.weChat = weChat;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getStorePersonName() {
		return storePersonName;
	}
	public void setStorePersonName(String storePersonName) {
		this.storePersonName = storePersonName;
	}
	public String getStorePersonPhone() {
		return storePersonPhone;
	}
	public void setStorePersonPhone(String storePersonPhone) {
		this.storePersonPhone = storePersonPhone;
	}
	public String getStorePersonWechat() {
		return storePersonWechat;
	}
	public void setStorePersonWechat(String storePersonWechat) {
		this.storePersonWechat = storePersonWechat;
	}
	public Integer getStoreType() {
		return storeType;
	}
	public void setStoreType(Integer storeType) {
		this.storeType = storeType;
	}
	public Integer getEngineerNum() {
		return engineerNum;
	}
	public void setEngineerNum(Integer engineerNum) {
		this.engineerNum = engineerNum;
	}
	public String getAppendixAddr() {
		return appendixAddr;
	}
	public void setAppendixAddr(String appendixAddr) {
		this.appendixAddr = appendixAddr;
	}
	public String getXsPingTai() {
		return xsPingTai;
	}
	public void setXsPingTai(String xsPingTai) {
		this.xsPingTai = xsPingTai;
	}
	public String getXsWechat() {
		return xsWechat;
	}
	public void setXsWechat(String xsWechat) {
		this.xsWechat = xsWechat;
	}
	public String getIsOtherPt() {
		return isOtherPt;
	}
	public void setIsOtherPt(String isOtherPt) {
		this.isOtherPt = isOtherPt;
	}
	public String getOtherPtInfo() {
		return otherPtInfo;
	}
	public void setOtherPtInfo(String otherPtInfo) {
		this.otherPtInfo = otherPtInfo;
	}
	public String getContractDateline() {
		return contractDateline;
	}
	public void setContractDateline(String contractDateline) {
		this.contractDateline = contractDateline;
	}
	public String getContractStart() {
		return contractStart;
	}
	public void setContractStart(String contractStart) {
		this.contractStart = contractStart;
	}
	public String getContractEnd() {
		return contractEnd;
	}
	public void setContractEnd(String contractEnd) {
		this.contractEnd = contractEnd;
	}
	public String getCooperationModel() {
		return cooperationModel;
	}
	public void setCooperationModel(String cooperationModel) {
		this.cooperationModel = cooperationModel;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getJoinCostBig() {
		return joinCostBig;
	}
	public void setJoinCostBig(String joinCostBig) {
		this.joinCostBig = joinCostBig;
	}
	public BigDecimal getJoinCostSmall() {
		return joinCostSmall;
	}
	public void setJoinCostSmall(BigDecimal joinCostSmall) {
		this.joinCostSmall = joinCostSmall;
	}
	public String getJoinAssureBig() {
		return joinAssureBig;
	}
	public void setJoinAssureBig(String joinAssureBig) {
		this.joinAssureBig = joinAssureBig;
	}
	public BigDecimal getJoinAssureSmall() {
		return joinAssureSmall;
	}
	public void setJoinAssureSmall(BigDecimal joinAssureSmall) {
		this.joinAssureSmall = joinAssureSmall;
	}
	public String getHeuoxieyiUrl() {
		return heuoxieyiUrl;
	}
	public void setHeuoxieyiUrl(String heuoxieyiUrl) {
		this.heuoxieyiUrl = heuoxieyiUrl;
	}
	public String getShoujuUrl() {
		return shoujuUrl;
	}
	public void setShoujuUrl(String shoujuUrl) {
		this.shoujuUrl = shoujuUrl;
	}
	public String getIdCardUrl() {
		return idCardUrl;
	}
	public void setIdCardUrl(String idCardUrl) {
		this.idCardUrl = idCardUrl;
	}
	public String getIdCardInHandUrl() {
		return idCardInHandUrl;
	}
	public void setIdCardInHandUrl(String idCardInHandUrl) {
		this.idCardInHandUrl = idCardInHandUrl;
	}
	public String getEngineerUrl() {
		return engineerUrl;
	}
	public void setEngineerUrl(String engineerUrl) {
		this.engineerUrl = engineerUrl;
	}
	
	
	public String getStoreImage() {
		return storeImage;
	}
	public void setStoreImage(String storeImage) {
		this.storeImage = storeImage;
	}
	public String getOtherFileUrl() {
		return otherFileUrl;
	}
	public void setOtherFileUrl(String otherFileUrl) {
		this.otherFileUrl = otherFileUrl;
	}
	public String getFilialeSubmitPerson() {
		return filialeSubmitPerson;
	}
	public void setFilialeSubmitPerson(String filialeSubmitPerson) {
		this.filialeSubmitPerson = filialeSubmitPerson;
	}
	public String getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(String submitDate) {
		this.submitDate = submitDate;
	}
	public String getFilialePrincipal() {
		return filialePrincipal;
	}
	public void setFilialePrincipal(String filialePrincipal) {
		this.filialePrincipal = filialePrincipal;
	}
	public String getFilialePrincipalDate() {
		return filialePrincipalDate;
	}
	public void setFilialePrincipalDate(String filialePrincipalDate) {
		this.filialePrincipalDate = filialePrincipalDate;
	}
	public String getFinance() {
		return finance;
	}
	public void setFinance(String finance) {
		this.finance = finance;
	}
	public String getFinanceDate() {
		return financeDate;
	}
	public void setFinanceDate(String financeDate) {
		this.financeDate = financeDate;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(String storeNo) {
		this.storeNo = storeNo;
	}
	public String getHandlerName() {
		return handlerName;
	}
	public void setHandlerName(String handlerName) {
		this.handlerName = handlerName;
	}
	public String getHandlerDate() {
		return handlerDate;
	}
	public void setHandlerDate(String handlerDate) {
		this.handlerDate = handlerDate;
	}
	public String getWlbTuiGuang() {
		return wlbTuiGuang;
	}
	public void setWlbTuiGuang(String wlbTuiGuang) {
		this.wlbTuiGuang = wlbTuiGuang;
	}
	public String getWlbSign() {
		return wlbSign;
	}
	public void setWlbSign(String wlbSign) {
		this.wlbSign = wlbSign;
	}
	public String getWlbSignDate() {
		return wlbSignDate;
	}
	public void setWlbSignDate(String wlbSignDate) {
		this.wlbSignDate = wlbSignDate;
	}
	public String getGbuInt() {
		return gbuInt;
	}
	public void setGbuInt(String gbuInt) {
		this.gbuInt = gbuInt;
	}
	public String getGbuIntDate() {
		return gbuIntDate;
	}
	public void setGbuIntDate(String gbuIntDate) {
		this.gbuIntDate = gbuIntDate;
	}
	public String getOperationsDirector() {
		return operationsDirector;
	}
	public void setOperationsDirector(String operationsDirector) {
		this.operationsDirector = operationsDirector;
	}
	public String getOperationsDirectorDate() {
		return operationsDirectorDate;
	}
	public void setOperationsDirectorDate(String operationsDirectorDate) {
		this.operationsDirectorDate = operationsDirectorDate;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Record [id=" + id + ", storePhone=" + storePhone
				+ ", openTime=" + openTime + ", storeAddr=" + storeAddr
				+ ", jwd=" + jwd + ", businessStart=" + businessStart
				+ ", businessEnd=" + businessEnd + ", legalName=" + legalName
				+ ", mobilePhone=" + mobilePhone + ", weChat=" + weChat
				+ ", email=" + email + ", QQ=" + QQ + ", storePersonName="
				+ storePersonName + ", storePersonPhone=" + storePersonPhone
				+ ", storePersonWechat=" + storePersonWechat + ", storeType="
				+ storeType + ", engineerNum=" + engineerNum
				+ ", appendixAddr=" + appendixAddr + ", xsPingTai=" + xsPingTai
				+ ", xsWechat=" + xsWechat + ", isOtherPt=" + isOtherPt
				+ ", otherPtInfo=" + otherPtInfo + ", contractDateline="
				+ contractDateline + ", contractStart=" + contractStart
				+ ", contractEnd=" + contractEnd + ", cooperationModel="
				+ cooperationModel + ", projectName=" + projectName
				+ ", joinCostBig=" + joinCostBig + ", joinCostSmall="
				+ joinCostSmall + ", joinAssureBig=" + joinAssureBig
				+ ", joinAssureSmall=" + joinAssureSmall + ", heuoxieyiUrl="
				+ heuoxieyiUrl + ", shoujuUrl=" + shoujuUrl + ", idCardUrl="
				+ idCardUrl + ", idCardInHandUrl=" + idCardInHandUrl
				+ ", engineerUrl=" + engineerUrl + ", storeImage=" + storeImage
				+ ", otherFileUrl=" + otherFileUrl + ", filialeSubmitPerson="
				+ filialeSubmitPerson + ", submitDate=" + submitDate
				+ ", filialePrincipal=" + filialePrincipal
				+ ", filialePrincipalDate=" + filialePrincipalDate
				+ ", finance=" + finance + ", financeDate=" + financeDate
				+ ", storeName=" + storeName + ", storeNo=" + storeNo
				+ ", handlerName=" + handlerName + ", handlerDate="
				+ handlerDate + ", wlbTuiGuang=" + wlbTuiGuang + ", wlbSign="
				+ wlbSign + ", wlbSignDate=" + wlbSignDate + ", gbuInt="
				+ gbuInt + ", gbuIntDate=" + gbuIntDate
				+ ", operationsDirector=" + operationsDirector
				+ ", operationsDirectorDate=" + operationsDirectorDate
				+ ", createDate=" + createDate + ", modifyDate=" + modifyDate
				+ "]";
	}
	

}
