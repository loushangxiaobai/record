package com.thinkcms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.PermissionDao;
import com.thinkcms.entity.Permission;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: PermissionServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月17日 上午11:37:15
 * 
 */
@Service("permissionService")
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionDao permissionDao;

	public void setPermissionDao(PermissionDao permissionDao) {
		this.permissionDao = permissionDao;
	}

	@Transactional
	public Permission saveOrUpdate(Permission permission) {
		return permissionDao.saveOrUpdate(permission);
	}

	@Transactional
	public void del(Long permissionId) {
		permissionDao.del(permissionId);
	}

	@Transactional
	public void delBatch(String ids) {
		permissionDao.delBatch(ids);
	}

	@Transactional
	public Permission getMenu() {
		return permissionDao.getRootPermission();
	}

	@Transactional
	public List<Permission> findAll() {
		return permissionDao.findAll();
	}

	@Transactional
	public PageDto<Permission> findList(String desc, Integer pageNo,
			Integer pageSize) {
		return permissionDao.findList(desc, pageNo, pageSize);
	}

	@Transactional
	public Permission getPermission(Long id) {
		return permissionDao.getPermission(id);
	}
}
