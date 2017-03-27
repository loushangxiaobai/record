package com.thinkcms.dao;

import java.util.List;

import com.thinkcms.entity.Permission;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: PermissionDao
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:44:48
 * 
 */
public interface PermissionDao {

	public Permission saveOrUpdate(Permission permission);

	public void del(Long permissionId);

	public void delBatch(String ids);

	public Permission getPermission(Long id);

	public Permission getRootPermission();

	public List<Permission> findAll();

	public PageDto<Permission> findList(String desc, Integer pageNo,
			Integer pageSize);

}
