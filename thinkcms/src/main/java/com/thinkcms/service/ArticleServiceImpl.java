package com.thinkcms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.ArticleDao;
import com.thinkcms.entity.Article;
import com.thinkcms.support.PageDto;


/** 
 * @ClassName: ArticleServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author zhangp 
 * @date 2016年6月27日 下午4:59:42 
 *  
 */
@Service("categoryService")
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao articleDao;

	@Transactional
	public Article saveOrUpdate(Article entity) {
		return articleDao.saveOrUpdate(entity);
	}

	@Transactional
	public void del(Long id) {
		articleDao.del(id);
	}

	@Transactional
	public void delBatch(String ids) {
		articleDao.delBatch(ids);
	}

	@Transactional
	public List<Article> findAll() {
		return articleDao.findAll();
	}

	@Transactional
	public PageDto<Article> findList(Long categoryId,String title,String tag,String remark, Integer pageNo,
			Integer pageSize) {
		return articleDao.findList(categoryId,title,tag,remark, pageNo, pageSize);
	}

	@Transactional
	public Article getArticle(Long id) {
		return articleDao.getArticle(id);
	}

}
