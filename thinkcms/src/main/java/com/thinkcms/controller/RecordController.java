package com.thinkcms.controller;


import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Record;
import com.thinkcms.service.RecordService;
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
	public Object add(Record record,Model model) {
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

}
