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

import com.thinkcms.entity.Permission;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: PermissionDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:44:57
 * 
 */
@Component("permissionDao")
public class PermissionDaoImpl extends BaseDao implements PermissionDao {

	public Permission saveOrUpdate(final Permission permission) {
		super.saveOrUpdate(permission);
		return permission;
	}

	public void del(Long permissionId) {
		// 首先把与permission关联的相关表的数据删掉
		String sql = "delete from sys_roles_permissions where permission_id=?";
		super.sqlUpdate(sql, permissionId);

		sql = "delete from sys_permissions where id=?";
		super.sqlUpdate(sql, permissionId);
	}

	public void delBatch(String ids) {
		// 首先把与permission关联的相关表的数据删掉
		String sql = "delete from sys_roles_permissions where permission_id in ("
				+ ids + ")";
		super.sqlUpdate(sql);
		// 删除该数据下关联的数据
		sql = "delete from sys_permissions where parent_id in  (" + ids + ")";
		super.sqlUpdate(sql);
		// 删除该数据
		sql = "delete from sys_permissions where id in  (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public Permission getRootPermission() {
		List<Permission> permissions = super.orderFind(Permission.class,
				"showOrder");
		Map<Long, Permission> map = new HashMap<Long, Permission>();
		Map<Long, List<Permission>> pMap = new HashMap<Long, List<Permission>>();
		for (Permission permission : permissions) {
			map.put(permission.getId(), permission);
			List<Permission> list = pMap.get(permission.getParentId());
			if (list != null) {
				list.add(permission);
			} else {
				list = new LinkedList<Permission>();
				list.add(permission);
			}
			pMap.put(permission.getParentId(), list);
		}
		return setChildren(map, pMap, 1L);
	}

	public Permission setChildren(Map<Long, Permission> map,
			Map<Long, List<Permission>> pMap, Long parentId) {
		Permission parent = map.get(parentId);
		List<Permission> children = pMap.get(parentId);
		parent.setChildList(children);
		if (children != null) {
			for (Permission permission : children) {
				setChildren(map, pMap, permission.getId());
			}
		}
		return parent;
	}

	public List<Permission> findAll() {
		return super.find(Permission.class);
	}

	public PageDto<Permission> findList(String desc, Integer pageNo,
			Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(Permission.class);
		if (desc != null) {
			dc.add(Restrictions.like("description", desc, MatchMode.ANYWHERE));
		}
		dc.addOrder(Order.desc("description"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<Permission> list = super.findByCriteria(dc, (pageNo - 1)
				* pageSize, pageSize);
		return new PageDto<Permission>(total, pageNo, pageSize, list);
	}

	public Permission getPermission(Long id) {
		return super.get(Permission.class, id);
	}

}
