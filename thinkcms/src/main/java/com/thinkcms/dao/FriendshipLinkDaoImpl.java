package com.thinkcms.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.entity.FriendshipLink;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: FriendshipLinkDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月5日 上午11:25:39
 * 
 */
@Component("friendshipLinkDao")
public class FriendshipLinkDaoImpl extends BaseDao implements FriendshipLinkDao {

	public FriendshipLink saveOrUpdate(final FriendshipLink entity) {
		super.saveOrUpdate(entity);
		return entity;
	}

	public void del(Long id) {
		String sql = "delete from sys_friendship_link where id=?";
		super.sqlUpdate(sql, id);
	}

	public void delBatch(String ids) {
		// 删除该数据
		String sql = "delete from sys_friendship_link where id in  (" + ids
				+ ")";
		super.sqlUpdate(sql);
	}

	public List<FriendshipLink> findAll() {
		return super.find(FriendshipLink.class);
	}

	public PageDto<FriendshipLink> findList(String siteName, Integer pageNo,
			Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(FriendshipLink.class);
		if (siteName != null) {
			dc.add(Restrictions.like("siteName", siteName, MatchMode.ANYWHERE));
		}
		dc.addOrder(Order.desc("showOrder"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<FriendshipLink> list = super.findByCriteria(dc, (pageNo - 1)
				* pageSize, pageSize);
		return new PageDto<FriendshipLink>(total, pageNo, pageSize, list);
	}

	public FriendshipLink getFriendshipLink(Long id) {
		return super.get(FriendshipLink.class, id);
	}

}
