package com.thinkcms.controller;

import java.util.Date;
import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thinkcms.entity.Article;
import com.thinkcms.entity.Category;
import com.thinkcms.service.ArticleService;
import com.thinkcms.service.CategoryService;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
@RequestMapping("/article")
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;

	@RequiresPermissions({ "article/list" })
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		return "article/index";
	}

	@RequiresPermissions({ "article/list" })
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public String list(Long categoryId, String title, String tag,
			String remark, ReqDto req, Model model) {
		try {
			model.addAttribute(
					"list",
					articleService.findList(categoryId, title, tag, remark,
							req.getPageNo(), req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "article/list";
	}

	@RequiresPermissions({ "article/add" })
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAdd(Model model) {
		try {
			model.addAttribute("category", getCategoryStr("根节点"));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "article/add";
	}

	@RequiresPermissions({ "article/add" })
	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Object add(Article article, Model model) {
		try {
			article.setCreateDate(new Date());
			article.setModifyDate(new Date());
			article = articleService.saveOrUpdate(article);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, article);
	}

	@RequiresPermissions({ "article/edit" })
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String toEdit(Long id, Model model) {
		try {
			Article article = articleService.getArticle(id);
			model.addAttribute("entity", article);
			model.addAttribute("category",
					getCategoryStr(article.getCategoryName()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "article/edit";
	}

	@RequiresPermissions({ "article/edit" })
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public Object edit(Article article, Model model) {
		try {
			article.setModifyDate(new Date());
			article = articleService.saveOrUpdate(article);
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, e);
		}
		return new Result(true, article);
	}

	@RequiresPermissions({ "article/del" })
	@ResponseBody
	@RequestMapping(value = "/del", method = RequestMethod.POST)
	public Object del(String ids, Model model) {
		try {
			articleService.delBatch(ids);
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