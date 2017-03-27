package com.thinkcms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkcms.entity.Permission;
import com.thinkcms.service.PermissionService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private PermissionService permissionService;

	@RequestMapping("")
	public String admin(Model model) {
		Permission menu = permissionService.getMenu();
		model.addAttribute("menu", menu);
		return "admin/admin";
	}

	@RequestMapping("/index")
	public String index() {
		return "admin/index";
	}

	@RequestMapping("/user")
	public String user() {
		return "admin/user";
	}
}