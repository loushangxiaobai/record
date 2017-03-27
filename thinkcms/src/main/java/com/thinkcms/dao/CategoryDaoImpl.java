package com.thinkcms.dao;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.entity.Category;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: CategoryDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月27日 下午2:18:35
 * 
 */
@Component("categoryDao")
public class CategoryDaoImpl extends BaseDao implements CategoryDao {

	public Category saveOrUpdate(final Category category) {
		super.saveOrUpdate(category);
		return category;
	}

	public void del(Long id) {
		// 首先把与permission关联的相关表的数据删掉
		String sql = "delete from sys_category_article where category_id=?";
		super.sqlUpdate(sql, id);
		// 删除栏目下的所有文章
		sql = "delete from sys_article where category_id =?";
		super.sqlUpdate(sql);
		sql = "delete from sys_category where id=?";
		super.sqlUpdate(sql, id);
	}

	public void delBatch(String ids) {
		// 首先把与permission关联的相关表的数据删掉
		String sql = "delete from sys_category_article where category_id in ("
				+ ids + ")";
		super.sqlUpdate(sql);
		// 删除该数据下关联的数据
		sql = "delete from sys_category where parent_id in  (" + ids + ")";
		super.sqlUpdate(sql);
		// 删除栏目下的所有文章
		sql = "delete from sys_article where category_id in  (" + ids + ")";
		super.sqlUpdate(sql);
		// 删除该数据
		sql = "delete from sys_category where id in  (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public Category getRootCategory() {
		List<Category> categories = super
				.orderFind(Category.class, "showOrder");
		Map<Long, Category> map = new HashMap<Long, Category>();
		Category parent = new Category(0L, "根节点", 0, true);
		map.put(0L, parent);
		Map<Long, List<Category>> pMap = new HashMap<Long, List<Category>>();
		for (Category entity : categories) {
			map.put(entity.getId(), entity);
			List<Category> list = pMap.get(entity.getParentId());
			if (list != null) {
				list.add(entity);
			} else {
				list = new LinkedList<Category>();
				list.add(entity);
			}
			pMap.put(entity.getParentId(), list);
		}
		return setChildren(map, pMap, 0L);
	}

	public Category setChildren(Map<Long, Category> map,
			Map<Long, List<Category>> pMap, Long parentId) {
		Category parent = map.get(parentId);
		List<Category> children = pMap.get(parentId);
		parent.setChildList(children);
		if (children != null) {
			for (Category entity : children) {
				setChildren(map, pMap, entity.getId());
			}
		}
		return parent;
	}

	public List<Category> findAll() {
		return super.find(Category.class);
	}

	public PageDto<Category> findList(String name,String listType ,Integer pageNo,
			Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(Category.class);
		if (name != null) {
			dc.add(Restrictions.like("name", name, MatchMode.ANYWHERE));
		}
		if (listType != null) {
			dc.add(Restrictions.eq("listType", listType));
		}
		dc.addOrder(Order.asc("showOrder"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<Category> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<Category>(total, pageNo, pageSize, list);
	}

	public Category getCategory(Long id) {
		return super.get(Category.class, id);
	}

}
