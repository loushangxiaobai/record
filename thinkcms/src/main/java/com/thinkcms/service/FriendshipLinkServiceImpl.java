package com.thinkcms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.FriendshipLinkDao;
import com.thinkcms.entity.FriendshipLink;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: FriendshipLinkServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月5日 下午2:17:35
 * 
 */
@Service("friendshipLinkService")
public class FriendshipLinkServiceImpl implements FriendshipLinkService {

	@Autowired
	private FriendshipLinkDao friendshipLinkDao;

	@Transactional
	public FriendshipLink saveOrUpdate(FriendshipLink entity) {
		return friendshipLinkDao.saveOrUpdate(entity);
	}

	@Transactional
	public void del(Long id) {
		friendshipLinkDao.del(id);
	}

	@Transactional
	public void delBatch(String ids) {
		friendshipLinkDao.delBatch(ids);
	}

	@Transactional
	public FriendshipLink getFriendshipLink(Long id) {
		return friendshipLinkDao.getFriendshipLink(id);
	}

	@Transactional
	public List<FriendshipLink> findAll() {
		return friendshipLinkDao.findAll();
	}

	@Transactional
	public PageDto<FriendshipLink> findList(String siteName, Integer pageNo,
			Integer pageSize) {
		return friendshipLinkDao.findList(siteName, pageNo, pageSize);
	}

}
