

package com.thinkcms.controller;


import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Record;
import com.thinkcms.service.RecordService;
import com.thinkcms.support.DownloadFile;
import com.thinkcms.support.Export;
import com.thinkcms.support.NumberToCN;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;
import com.thinkcms.support.SMSUtil;
import com.thinkcms.support.SendEmaliUtil;

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
	public String list(String province, String title, String district,
			String city, ReqDto req, Model model) {
		try {
			model.addAttribute(
					"list",
					recordService.findList(province, title, district, city,
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
	
	@RequiresPermissions({ "record/add" })
	@ResponseBody
	@RequestMapping(value = "/changermb", method = RequestMethod.POST)
	public Object changeRMB(BigDecimal money,Model model,HttpServletRequest request) {
		String RMB="";
		try {
			 RMB= NumberToCN.number2CNMontrayUnit(money);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return RMB;
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
			String xspingtai=record.getXsPingTai();
			if(xspingtai!=null){
				String[]  xs =xspingtai.split(",");
				ArrayList<String> xslist =new ArrayList<String>();
				for(int i=0;i<xs.length;i++){
					xslist.add(xs[i]);
				}
				model.addAttribute("xs", xslist);
			}
			
			String wlbtuiguang=record.getWlbTuiGuang();
			if(wlbtuiguang!=null){
				String [] tuiguang =wlbtuiguang.split(",");
				ArrayList<String> tglist = new ArrayList<>();
				for(int j=0;j<tuiguang.length;j++){
					tglist.add(tuiguang[j]);
				}
				model.addAttribute("tuiguang", tglist);
			}
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
		List<Record> list=recordService.findById(ids);
		SimpleDateFormat myFmt=new SimpleDateFormat("yyyy-MM-dd");  
		Export.doExportByObj(request, response, list, "record"+myFmt.format(new Date())+".xls", new String[]{"编号","门店电话","预计开业时间","门店详细地址","经纬度","开始营业时间","结束营业时间","法人姓名","手机号码","微信号","邮箱地址","门店店长姓名","门店店长手机号码","门店店长微信","门店类型  1--独立店  2--店中店","工程师人数","工程师附录地址","线上平台","线上平台微信公众号","是否使用其他订单平台","其他平台说明","合同期限","合同开始日期","合同结束日期","合作模式","项目名称","加盟费用大写","加盟费用小写","加盟保证金大写","加盟保证金小写","合作协议书","收据","法人身份证","法人手持身份证","维修工程师登记表","门店高清横屏照片","其他文件资料","分公司提交人","提交日期","分公司负责人","分公司负责人签署日期","财务部审核人","财务部审核人签署日期","门店名称","门店编码","经手人签名","经手人签署日期","网络部推广配对","网络部负责人","网络部签署日期","运营助理","运营助理签署日期","运营部负责人","运营部负责人签署日期","录入日期","修改日期"}, new String[]{"id","storePhone","openTime","storeAddr","jwd","businessStart","businessEnd","legalName","mobilePhone","weChat","email","storePersonName","storePersonPhone","storePersonWechat","storeType","engineerNum","appendixAddr","xsPingTai","xsWechat","isOtherPt","otherPtInfo","contractDateline","contractStart","contractEnd","cooperationModel","projectName","joinCostBig","joinCostSmall","joinAssureBig","joinAssureSmall","heuoxieyiUrl","shoujuUrl","idCardUrl","idCardInHandUrl","engineerUrl","storeImage","otherFileUrl","filialeSubmitPerson","submitDate","filialePrincipal","filialePrincipalDate","finance","financeDate","storeName","storeNo","handlerName","handlerDate","wlbTuiGuang","wlbSign","wlbSignDate","gbuInt","gbuIntDate","operationsDirector","operationsDirectorDate","createDate","modifyDate"});
		return null;
	}
	
	@RequiresPermissions({ "record/sendMessage" })
	@ResponseBody
	@RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
	public String sendMessage(String phone,String  context, Record record, Model model) throws Exception{
		
		System.out.println("发送短信： "+context +" 到"+phone);
		String result=SMSUtil.sendMessage(phone, context);
		return result;
	}
	
	@RequiresPermissions({ "record/sendMessage" })
	@RequestMapping(value = "/sendMessage", method = RequestMethod.GET)
	public String toSendMessage(String phone, Record record, Model model) throws Exception{
		//String result=SMSUtil.sendMessage(phone, context);
		model.addAttribute("phone", phone);
		return "record/sendMessage";
	}
	
	
	
	    @RequiresPermissions({ "record/sendMessage" })
	    @RequestMapping(value = "/download", method = RequestMethod.GET)    
	    public ResponseEntity<byte[]> download(String fileName, HttpServletRequest request ) throws IOException {
	    	String basepath=request.getSession().getServletContext().getRealPath("/")+ "upload/";
	    	String fileNames[] =fileName.split(";");
	    	String path="";
	    	HttpHeaders headers = new HttpHeaders();    
	    	if(fileNames.length>1){
	    		String zipName=DownloadFile.toZip(fileName,fileNames, request);
	    		path=basepath+zipName;
	    		 headers.setContentDispositionFormData("attachment", new String(zipName.getBytes("UTF-8"),"ISO-8859-1"));
	    	}
	    	else{
	    		  path=basepath+fileName;
	    		  headers.setContentDispositionFormData("attachment", new String(fileName.getBytes("UTF-8"),"ISO-8859-1"));
	    		  
	    	}
	        File file=new File(path);  
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);   
	        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
	                                          headers, HttpStatus.CREATED);    
	      
	}  
	    
	    
	    @RequiresPermissions({ "record/print" })
		@RequestMapping(value = "/print", method = RequestMethod.GET)
		public String toPrint(Integer id, Model model) {
			try {
				Record record = recordService.getRecord(id);
				model.addAttribute("entity", record);
			} catch (Exception e) {
				e.printStackTrace();
				return "common/error";
			}
			return "record/print";
		}
	    
	    @RequiresPermissions({ "record/add" })
		@ResponseBody
		@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
		public Object sendEmail(String toEmails,Record record,Model model,HttpServletRequest request) {
			try {
				recordService.saveOrUpdate(record);
				SendEmaliUtil emaliUtil = new SendEmaliUtil();
			  boolean ok=emaliUtil.sendEmail(null, null, null, null, null);
			} catch (Exception e) {
				e.printStackTrace();
				return new Result(false, e);
			}
			return new Result(true, record);
		}
	    
	    @RequiresPermissions({ "record/add" })
		@ResponseBody
		@RequestMapping(value = "/findEmail", method = RequestMethod.POST)
		public Object findEmail(String ids,Record record,Model model,HttpServletRequest request) {
	    	String emailAddrs="";
	    	try {
				List<Record> list= recordService.findById(ids);
				
				for(int i=0;i<list.size();i++){
					emailAddrs+=list.get(i).getEmail()+",";
				}
				emailAddrs=emailAddrs.substring(0, emailAddrs.length()-1);
				System.out.println(emailAddrs);
			} catch (Exception e) {
				e.printStackTrace();
				return new Result(false, e);
			}
			return emailAddrs;
		}
	    
	    

}
