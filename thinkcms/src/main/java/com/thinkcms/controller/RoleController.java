package com.thinkcms.controller;

import java.util.LinkedList;
import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Role;
import com.thinkcms.entity.RolePermission;
import com.thinkcms.service.PermissionService;
import com.thinkcms.service.RoleService;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	private RoleService roleService;
	@Autowired
	private PermissionService permissionService;

	@RequiresPermissions({ "role/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "role/index";
	}

	@RequiresPermissions({ "role/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(String description, ReqDto req, Model model) {
		try {
			model.addAttribute(
					"list",
					roleService.findList(description, req.getPageNo(),
							req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "role/list";
	}

	@RequiresPermissions({ "role/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		try {
			model.addAttribute("menu", permissionService.getMenu());
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "role/add";
	}

	@RequiresPermissions({ "role/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(Role role, Model model, Long... permissionIds) {
		try {
			role = roleService.save(role, permissionIds);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, role);
	}

	@RequiresPermissions({ "role/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Long id, Model model) {
		try {
			List<Long> permissions = new LinkedList<Long>();
			for (RolePermission rolePermssion : roleService
					.findRolePermssions(id)) {
				permissions.add(rolePermssion.getPermissionId());
			}
			model.addAttribute("permissions", permissions);
			model.addAttribute("menu", permissionService.getMenu());
			model.addAttribute("entity", roleService.getRole(id));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "role/edit";
	}

	@RequiresPermissions({ "role/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(Role role, Model model, Long... permissionIds) {
		try {
			role = roleService.update(role, permissionIds);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, role);
	}

	@RequiresPermissions({ "role/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			roleService.delBatch(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result();
	}

}