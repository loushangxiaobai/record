package com.thinkcms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkcms.entity.Article;
import com.thinkcms.entity.Category;
import com.thinkcms.entity.SiteInfo;
import com.thinkcms.service.ArticleService;
import com.thinkcms.service.CategoryService;
import com.thinkcms.service.FriendshipLinkService;
import com.thinkcms.service.SiteInfoService;
import com.thinkcms.service.SlideImgService;
import com.thinkcms.service.StadiumService;
import com.thinkcms.support.PageDto;

@Controller
public class PortalController {

	@Autowired
	private SiteInfoService siteInfoService;
	@Autowired
	private FriendshipLinkService friendshipLinkService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private SlideImgService slideImgService;
	@Autowired
	private StadiumService stadiumService;
	private String template ="";

	@ModelAttribute
	public void loadCategory(Model model, Long categoryId) {
		try {
			SiteInfo siteInfo = siteInfoService.getSiteInfo(null);
			model.addAttribute("categories",
					categoryService.findList(null, null, 1, 15));
			model.addAttribute("siteInfo", siteInfo);
			model.addAttribute("links", friendshipLinkService.findAll());
			template=siteInfo.getSiteTemplate();
			if (StringUtils.isEmpty(template)) {
				template="default";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/")
	public String index(Model model, HttpServletRequest request) {
		model.addAttribute("category", new Category("首页"));
		model.addAttribute("slideImgs", slideImgService.findList(1, 5,true));
		model.addAttribute("stadiums", stadiumService.findAll());
//		return "portal/index";
		return "portal/"+template+"/index";
	}

	@RequestMapping("/list")
	public String list(Long categoryId, Integer pageNo, Integer pageSize,
			Model model) {
		if (pageNo == null) {
			pageNo = 1;
		}
		if (pageSize == null) {
			pageSize = 15;
		}
		Category category = categoryService.getCategory(categoryId);
		PageDto<Article> list = articleService.findList(categoryId, null, null,
				null, pageNo, pageSize);
		model.addAttribute("list", list);
		if ("single".equals(category.getListType()) && list.getItems() != null
				&& list.getItems().size() > 0) {
			model.addAttribute("article", list.getItems().get(0));
		}
		model.addAttribute("category", category);
		return "portal/"+template+"/"+ category.getListType();
	}

	@RequestMapping("/article")
	public String listCase(Model model, Long id, Long categoryId) {
		model.addAttribute("entity", articleService.getArticle(id));
		model.addAttribute("category", categoryService.getCategory(categoryId));
		return "portal/"+template+"article-show";
	}

}