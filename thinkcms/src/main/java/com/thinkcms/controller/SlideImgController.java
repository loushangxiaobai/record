package com.thinkcms.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.SlideImg;
import com.thinkcms.service.SlideImgService;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/slideImg")
public class SlideImgController {
	@Autowired
	private SlideImgService slideImgService;

	@RequiresPermissions({ "slideImg/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "slideImg/index";
	}

	@RequiresPermissions({ "slideImg/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(ReqDto req, Model model) {
		try {
			model.addAttribute("list", slideImgService.findList(
					req.getPageNo(), req.getPageSize(),null));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "slideImg/list";
	}

	@RequiresPermissions({ "slideImg/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		return "slideImg/add";
	}

	@RequiresPermissions({ "slideImg/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(SlideImg entity, Model model) {
		try {
			entity = slideImgService.saveOrUpdate(entity);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, entity);
	}

	@RequiresPermissions({ "slideImg/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Long id, Model model) {
		try {
			SlideImg entity = slideImgService.getSlideImg(id);
			model.addAttribute("entity", entity);
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "slideImg/edit";
	}

	@RequiresPermissions({ "slideImg/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(SlideImg entity, Model model) {
		try {
			entity = slideImgService.saveOrUpdate(entity);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, entity);
	}

	@RequiresPermissions({ "slideImg/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			slideImgService.delBatch(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result();
	}

}