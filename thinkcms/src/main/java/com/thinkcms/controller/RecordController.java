package com.thinkcms.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Record;
import com.thinkcms.service.RecordService;
import com.thinkcms.support.Export;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/record")
public class RecordController {
	@Autowired
	private RecordService recordService;
	
	@RequiresPermissions({ "record/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "record/index";
	}
	
	@RequiresPermissions({ "record/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(Long categoryId, String title, String tag,
			String remark, ReqDto req, Model model) {
		try {
			model.addAttribute(
					"list",
					recordService.findList(categoryId, title, tag, remark,
							req.getPageNo(), req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "record/list";
	}
	
	
	@RequiresPermissions({ "record/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		return "record/insert";
	}
	
	@RequiresPermissions({ "record/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(Record record,Model model,HttpServletRequest request) {
		try {
			recordService.saveOrUpdate(record);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, record);
	}
	
	@RequiresPermissions({ "record/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			recordService.delBatch(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result();
	}
	
	@RequiresPermissions({ "record/add" })
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String upload( Model model,HttpServletRequest request) {
		String id=request.getParameter("id");
		request.getSession().setAttribute("id", id);
		model.addAttribute("inputid", id);
		return "record/add";
	}
	
	
	@RequiresPermissions({ "record/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Integer id, Model model) {
		try {
			Record record = recordService.getRecord(id);
			model.addAttribute("entity", record);
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "record/edit";
	}
	
	
	@RequiresPermissions({ "record/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(Record record, Model model) {
		try {
			record.setModifyDate(new Date().toString());
			record = recordService.saveOrUpdate(record);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, record);
	}
	
	
	@RequiresPermissions({ "record/export" })
	@ResponseBody
	@RequestMapping(value = "/export", method = RequestMethod.GET)
	public String export(String ids, Record record, Model model,HttpServletRequest request,HttpServletResponse response){
		System.out.println("------------------------------------");
		List<Record> list=recordService.findById(ids);
		SimpleDateFormat myFmt=new SimpleDateFormat("yyyy-MM-dd");  
		Export.doExportByObj(request, response, list, "record"+myFmt.format(new Date())+".xls", new String[]{"编号","门店电话","预计开业时间","门店详细地址","经纬度","开始营业时间","结束营业时间","法人姓名","手机号码","微信号","邮箱地址","门店店长姓名","门店店长手机号码","门店店长微信","门店类型  1--独立店  2--店中店","工程师人数","工程师附录地址","线上平台","线上平台微信公众号","是否使用其他订单平台","其他平台说明","合同期限","合同开始日期","合同结束日期","合作模式","项目名称","加盟费用大写","加盟费用小写","加盟保证金大写","加盟保证金小写","合作协议书","收据","法人身份证","法人手持身份证","维修工程师登记表","门店高清横屏照片","其他文件资料","分公司提交人","提交日期","分公司负责人","分公司负责人签署日期","财务部审核人","财务部审核人签署日期","门店名称","门店编码","经手人签名","经手人签署日期","网络部推广配对","网络部负责人","网络部签署日期","运营助理","运营助理签署日期","运营部负责人","运营部负责人签署日期","录入日期","修改日期"}, new String[]{"id","storePhone","openTime","storeAddr","jwd","businessStart","businessEnd","legalName","mobilePhone","weChat","email","storePersonName","storePersonPhone","storePersonWechat","storeType","engineerNum","appendixAddr","xsPingTai","xsWechat","isOtherPt","otherPtInfo","contractDateline","contractStart","contractEnd","cooperationModel","projectName","joinCostBig","joinCostSmall","joinAssureBig","joinAssureSmall","heuoxieyiUrl","shoujuUrl","idCardUrl","idCardInHandUrl","engineerUrl","storeImage","otherFileUrl","filialeSubmitPerson","submitDate","filialePrincipal","filialePrincipalDate","finance","financeDate","storeName","storeNo","handlerName","handlerDate","wlbTuiGuang","wlbSign","wlbSignDate","gbuInt","gbuIntDate","operationsDirector","operationsDirectorDate","createDate","modifyDate"});
		return null;
	}

}
