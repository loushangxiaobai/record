package com.thinkcms.service;

import java.util.List;

import com.thinkcms.entity.Article;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: PermissionService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月21日 下午2:14:41
 * 
 */
public interface ArticleService {

	public Article saveOrUpdate(Article article);

	public void del(Long id);

	public void delBatch(String ids);

	public Article getArticle(Long id);

	public List<Article> findAll();

	public PageDto<Article> findList(Long categoryId,String title, String tag, String remark,
			Integer pageNo, Integer pageSize);
}
