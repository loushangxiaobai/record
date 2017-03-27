package com.thinkcms.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Category;
import com.thinkcms.service.CategoryService;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;

	@RequiresPermissions({ "category/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "category/index";
	}

	@RequiresPermissions({ "category/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(String name,String listType, ReqDto req, Model model) {
		try {
			model.addAttribute(
					"list",
					categoryService.findList(name,listType, req.getPageNo(),
							req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}

		return "category/list";
	}

	@RequiresPermissions({ "category/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		try {
			model.addAttribute("category", getCategoryStr("根节点"));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "category/add";
	}

	@RequiresPermissions({ "category/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(Category Category, Model model) {
		try {
			Category = categoryService.saveOrUpdate(Category);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, Category);
	}

	@RequiresPermissions({ "category/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Long id, Model model) {
		try {
			Category Category = categoryService.getCategory(id);
			model.addAttribute("entity", Category);
			model.addAttribute("category",
					getCategoryStr(Category.getParentName()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "category/edit";
	}

	@RequiresPermissions({ "category/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(Category Category, Model model) {
		try {
			Category = categoryService.saveOrUpdate(Category);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, Category);
	}

	@RequiresPermissions({ "category/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			categoryService.delBatch(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result();
	}

	private String getCategoryStr(String selected) {
		Category category = categoryService.getRoot();
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("[ {");
		stringBuffer.append("\"text\": \"" + category.getName() + "\",");
		stringBuffer.append("\"tags\": \"" + category.getId() + "\"");
		stringBuffer.append(",\"state\": {");
		stringBuffer.append("\"expanded\": false");
		if (selected.equals(category.getName())) {
			stringBuffer.append(",\"selected\": true");
		}
		stringBuffer.append("}");
		stringBuffer.append(",\"nodes\" : [ ");
		List<Category> level1 = category.getChildList();
		if (level1 != null) {
			for (int i = 0; i < level1.size(); i++) {
				stringBuffer.append(" { ");
				stringBuffer.append("\"tags\": \"" + level1.get(i).getId()
						+ "\",");
				stringBuffer.append(" \"text\" : \"" + level1.get(i).getName()
						+ "\" ");

				stringBuffer.append(",\"state\": {");
				stringBuffer.append("\"expanded\": true");
				if (selected.equals(level1.get(i).getName())) {
					stringBuffer.append(",\"selected\": true");
				}
				stringBuffer.append("}");

				List<Category> level2 = level1.get(i).getChildList();
				if (level2 != null) {
					stringBuffer.append(" ,\"nodes\" : [ ");
					for (int j = 0; j < level2.size(); j++) {
						stringBuffer.append(" { ");
						stringBuffer.append("\"tags\": \""
								+ level2.get(j).getId() + "\"");

						stringBuffer.append(",\"state\": {");
						stringBuffer.append("\"expanded\": true");
						if (selected.equals(level2.get(j).getName())) {
							stringBuffer.append(",\"selected\": true");
						}
						stringBuffer.append("}");

						stringBuffer.append(", \"text\" : \""
								+ level2.get(j).getName() + "\" ");
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
		}
		stringBuffer.append(" ] }] ");
		return stringBuffer.toString();
	}
}