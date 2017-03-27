package com.thinkcms.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Stadium;
import com.thinkcms.service.StadiumService;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/stadium")
public class StadiumController {
	@Autowired
	private StadiumService stadiumService;

	@RequiresPermissions({ "stadium/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "stadium/index";
	}

	@RequiresPermissions({ "stadium/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(String city, String area, String name, String siteType, String sod, String lamplight, String addr, String openTime, String siteInfo, String contMan, String contQQ, String contQqun, String contWx, String contWb, String contPhone,  String startDate, String endDate,ReqDto req, Model model) {
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
			model.addAttribute(
					"list",
					stadiumService.findList(city, area, name, siteType, sod, lamplight, addr, openTime, siteInfo, contMan, contQQ, contQqun, contWx, contWb, contPhone,  sDate,eDate,req.getPageNo(), req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "stadium/list";
	}

	@RequiresPermissions({ "stadium/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		return "stadium/add";
	}

	@RequiresPermissions({ "stadium/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(Stadium entity, Model model) {
		try {
			entity = stadiumService.saveOrUpdate(entity);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, entity);
	}
	
	@RequestMapping(value = "/portalAdd", method = RequestMethod.GET)
	public String toPortalAdd(Model model) {
		return "portal/football/add";
	}

	@ResponseBody
	@RequestMapping(value = "/portalAdd", method = RequestMethod.POST)
	public Object portAdd(Stadium entity, Model model) {
		try {
			entity = stadiumService.saveOrUpdate(entity);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, entity);
	}

	@RequiresPermissions({ "stadium/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Long id, Model model) {
		try {
			Stadium entity = stadiumService.getStadium(id);
			model.addAttribute("entity", entity);
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "stadium/edit";
	}

	@RequiresPermissions({ "stadium/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(Stadium entity, Model model) {
		try {
			entity = stadiumService.saveOrUpdate(entity);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, entity);
	}

	@RequiresPermissions({ "stadium/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			stadiumService.delBatch(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result();
	}

}