package com.thinkcms.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Attachment;
import com.thinkcms.service.AttachmentService;
import com.thinkcms.support.QiniuFileUtil;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/attachment")
public class AttachmentController {
	@Autowired
	private AttachmentService attachmentService;

	@RequiresPermissions({ "attachment/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "attachment/index";
	}
//上传文件
	@RequiresPermissions({ "attachment/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(String startDate, String endDate,String type, ReqDto req, Model model) {
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date sDate = null;
			Date eDate = null;
			if (null != startDate && !"".equals(startDate)) {
				sDate = dateFormat.parse(startDate);
			}
			if (null != endDate && !"".equals(endDate)) {
				eDate = dateFormat.parse(endDate);
				Calendar cal = Calendar.getInstance();
				cal.setTime(eDate);
				cal.add(Calendar.DATE, 1);
				eDate = cal.getTime();
			}
			model.addAttribute("list", attachmentService.findList(sDate, eDate,type,
					req.getPageNo(), req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "attachment/list";
	}

	@RequiresPermissions({ "attachment/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		return "attachment/add";
	}

	@RequiresPermissions({ "attachment/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(Attachment attachment, Model model) {
		try {
			attachment.setCreateDate(new Date());
			attachment = attachmentService.saveOrUpdate(attachment);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, attachment);
	}

	@RequiresPermissions({ "attachment/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Long id, Model model) {
		try {
			Attachment attachment = attachmentService.getAttachment(id);
			model.addAttribute("entity", attachment);
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "attachment/edit";
	}

	@RequiresPermissions({ "attachment/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(Attachment attachment, Model model) {
		try {
			attachment = attachmentService.saveOrUpdate(attachment);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, attachment);
	}

	@RequiresPermissions({ "attachment/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			List<String> imgPath = attachmentService.findAttachments(ids);
			QiniuFileUtil.deleteQiniuBatch(imgPath);
			;
			attachmentService.delBatch(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result();
	}

}