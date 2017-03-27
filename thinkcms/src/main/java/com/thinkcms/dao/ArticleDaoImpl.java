package com.thinkcms.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.entity.Article;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: ArticleDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月27日 下午4:45:58
 * 
 */
@Component("articleDao")
public class ArticleDaoImpl extends BaseDao implements ArticleDao {

	public Article saveOrUpdate(final Article article) {
		super.saveOrUpdate(article);
		return article;
	}

	public void del(Long id) {
		// 首先把与permission关联的相关表的数据删掉
		String sql = "delete from sys_category_article where article_id=?";
		super.sqlUpdate(sql, id);

		sql = "delete from sys_article where id=?";
		super.sqlUpdate(sql, id);
	}

	public void delBatch(String ids) {
		// 首先把与permission关联的相关表的数据删掉
		String sql = "delete from sys_category_article where article_id in ("
				+ ids + ")";
		super.sqlUpdate(sql);
		// 删除该数据
		sql = "delete from sys_article where id in  (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public List<Article> findAll() {
		return super.find(Article.class);
	}

	public PageDto<Article> findList(Long categoryId,String title,String tag,String remark, Integer pageNo,
			Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(Article.class);
		if (categoryId != null) {
			dc.add(Restrictions.eq("categoryId", categoryId));
		}
		if (title != null) {
			dc.add(Restrictions.like("title", title, MatchMode.ANYWHERE));
		}
		if (tag != null) {
			dc.add(Restrictions.like("tag", title, MatchMode.ANYWHERE));
		}
		if (remark != null) {
			dc.add(Restrictions.like("remark", title, MatchMode.ANYWHERE));
		}
		dc.addOrder(Order.desc("createDate"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<Article> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<Article>(total, pageNo, pageSize, list);
	}

	public Article getArticle(Long id) {
		return super.get(Article.class, id);
	}


}
