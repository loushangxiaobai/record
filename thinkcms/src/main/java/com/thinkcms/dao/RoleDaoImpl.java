package com.thinkcms.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.entity.Role;
import com.thinkcms.entity.RolePermission;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: RoleDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:45:33
 * 
 */
@Component("roleDao")
public class RoleDaoImpl extends BaseDao implements RoleDao {

	public Role saveOrUpdate(final Role Role) {
		super.saveOrUpdate(Role);
		return Role;
	}

	public void del(Long roleId) {
		// 首先把和role关联的相关表数据删掉
		String sql = "delete from sys_users_roles where role_id=?";
		super.sqlUpdate(sql, roleId);

		sql = "delete from sys_roles where id=?";
		super.sqlUpdate(sql, roleId);
	}

	public void delBatch(String ids) {
		// 首先把和role关联的相关表数据删掉
		String sql = "delete from sys_users_roles where role_id in (" + ids
				+ ")";
		super.sqlUpdate(sql);
		// 删除该数据
		sql = "delete from sys_roles where id in  (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public void correlationPermissions(Long roleId, Long... permissionIds) {
		if (permissionIds == null || permissionIds.length == 0) {
			return;
		}
		String sql = "insert into sys_roles_permissions(role_id, permission_id) values(?,?)";
		for (Long permissionId : permissionIds) {
			if (!exists(roleId, permissionId)) {
				super.sqlUpdate(sql, roleId, permissionId);
			}
		}
	}

	public void uncorrelationPermissions(Long roleId, Long... permissionIds) {
		if (permissionIds == null || permissionIds.length == 0) {
			return;
		}
		String sql = "delete from sys_roles_permissions where role_id=? and permission_id=?";
		for (Long permissionId : permissionIds) {
			if (exists(roleId, permissionId)) {
				super.sqlUpdate(sql, roleId, permissionId);
			}
		}
	}

	public void uncorrelationAllPermissions(Long roleId) {
		String sql = "delete from sys_roles_permissions where role_id=?";
		super.sqlUpdate(sql, roleId);
	}

	private boolean exists(Long roleId, Long permissionId) {
		RolePermission rolePermssion = new RolePermission(roleId, permissionId);
		return super.countByExample(rolePermssion) > 0;
	}

	public Role getRole(Long id) {
		return super.get(Role.class, id);
	}

	public List<RolePermission> findRolePermssions(Long roleId) {
		return super.findByProperty(RolePermission.class, "roleId", roleId);
	}

	public List<Role> findAll() {
		return super.find(Role.class);
	}

	public PageDto<Role> findList(String desc, Integer pageNo, Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(Role.class);
		if (desc != null) {
			dc.add(Restrictions.like("description", desc, MatchMode.ANYWHERE));
		}
		dc.addOrder(Order.asc("showOrder"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<Role> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<Role>(total, pageNo, pageSize, list);
	}

	public List<String> findRoles() {
		String sql = "select id from sys_role ";
		return super.sqlQuery(String.class, sql);
	}

}
