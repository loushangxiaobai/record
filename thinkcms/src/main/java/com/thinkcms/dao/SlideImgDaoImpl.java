package com.thinkcms.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.entity.SlideImg;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: SlideImgDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月6日 下午4:49:26
 * 
 */
@Component("slideImgDao")
public class SlideImgDaoImpl extends BaseDao implements SlideImgDao {

	public SlideImg saveOrUpdate(final SlideImg entity) {
		super.saveOrUpdate(entity);
		return entity;
	}

	public void del(Long id) {
		String sql = "delete from sys_slide_img where id=?";
		super.sqlUpdate(sql, id);
	}

	public void delBatch(String ids) {
		// 删除该数据
		String sql = "delete from sys_slide_img where id in  (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public List<SlideImg> findAll() {
		return super.find(SlideImg.class);
	}

	public PageDto<SlideImg> findList(Integer pageNo, Integer pageSize,Boolean avarlable) {
		DetachedCriteria dc = DetachedCriteria.forClass(SlideImg.class);
		if (avarlable!=null) {
			dc.add(Restrictions.eq("available", avarlable));
		}
		dc.addOrder(Order.desc("showOrder"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<SlideImg> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<SlideImg>(total, pageNo, pageSize, list);
	}

	public SlideImg getSlideImg(Long id) {
		return super.get(SlideImg.class, id);
	}

}
