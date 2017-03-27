package com.thinkcms.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Permission;
import com.thinkcms.service.PermissionService;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@Autowired
	private PermissionService permissionService;

	@RequiresPermissions({ "menu/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "menu/index";
	}

	@RequiresPermissions({ "menu/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(String description, ReqDto req, Model model) {
		try {
			model.addAttribute("list", permissionService.findList(description,
					req.getPageNo(), req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}

		return "menu/list";
	}

	@RequiresPermissions({ "menu/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		try {
			model.addAttribute("menu", getMenuStr("根节点"));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "menu/add";
	}

	@RequiresPermissions({ "menu/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(Permission permission, Model model) {
		try {
			permission = permissionService.saveOrUpdate(permission);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, permission);
	}

	@RequiresPermissions({ "menu/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Long id, Model model) {
		try {
			Permission permission = permissionService.getPermission(id);
			model.addAttribute("entity", permission);
			model.addAttribute("menu", getMenuStr(permission.getParentName()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "menu/edit";
	}

	@RequiresPermissions({ "menu/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(Permission permission, Model model) {
		try {
			permission = permissionService.saveOrUpdate(permission);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, permission);
	}

	@RequiresPermissions({ "menu/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			permissionService.delBatch(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result();
	}

	private String getMenuStr(String selected) {
		Permission permission = permissionService.getMenu();
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("[ {");
		stringBuffer.append("\"text\": \"" + permission.getDescription()
				+ "\",");
		stringBuffer.append("\"tags\": \"" + permission.getId() + "\"");
		stringBuffer.append(",\"state\": {");
		stringBuffer.append("\"expanded\": false");
		if (selected.equals(permission.getDescription())) {
			stringBuffer.append(",\"selected\": true");
		}
		stringBuffer.append("}");
		stringBuffer.append(",\"nodes\" : [ ");
		List<Permission> level1 = permission.getChildList();
		for (int i = 0; i < level1.size(); i++) {
			stringBuffer.append(" { ");
			stringBuffer.append("\"tags\": \"" + level1.get(i).getId() + "\",");
			stringBuffer.append(" \"text\" : \""
					+ level1.get(i).getDescription() + "\" ");

			stringBuffer.append(",\"state\": {");
			stringBuffer.append("\"expanded\": true");
			if (selected.equals(level1.get(i).getDescription())) {
				stringBuffer.append(",\"selected\": true");
			}
			stringBuffer.append("}");

			List<Permission> level2 = level1.get(i).getChildList();
			if (level2 != null) {
				stringBuffer.append(" ,\"nodes\" : [ ");
				for (int j = 0; j < level2.size(); j++) {
					stringBuffer.append(" { ");
					stringBuffer.append("\"tags\": \"" + level2.get(j).getId()
							+ "\"");

					stringBuffer.append(",\"state\": {");
					stringBuffer.append("\"expanded\": true");
					if (selected.equals(level2.get(j).getDescription())) {
						stringBuffer.append(",\"selected\": true");
					}
					stringBuffer.append("}");

					stringBuffer.append(", \"text\" : \""
							+ level2.get(j).getDescription() + "\" ");
					stringBuffer.append(" } ");
					if (j < level2.size() - 1) {
						stringBuffer.append(" , ");
					}
				}
				stringBuffer.append(" ] ");
			}
			stringBuffer.append(" } ");
			if (i < level1.size() - 1) {
				stringBuffer.append(" , ");
			}
		}
		stringBuffer.append(" ] }] ");
		return stringBuffer.toString();
	}
}