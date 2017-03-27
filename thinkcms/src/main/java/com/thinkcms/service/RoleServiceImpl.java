package com.thinkcms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.RoleDao;
import com.thinkcms.entity.Role;
import com.thinkcms.entity.RolePermission;
import com.thinkcms.support.PageDto;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;

	public RoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

	@Transactional
	public Role save(Role role, Long... permissionIds) {
		role = roleDao.saveOrUpdate(role);
		roleDao.correlationPermissions(role.getId(), permissionIds);
		return role;
	}

	@Transactional
	public Role update(Role role, Long... permissionIds) {
		role = roleDao.saveOrUpdate(role);
		roleDao.uncorrelationAllPermissions(role.getId());
		roleDao.correlationPermissions(role.getId(), permissionIds);
		return role;
	}

	@Transactional
	public void delete(Long roleId) {
		roleDao.del(roleId);
	}

	@Transactional
	public void delBatch(String ids) {
		roleDao.delBatch(ids);
	}

	/**
	 * 添加角色-权限之间关系
	 * 
	 * @param roleId
	 * @param permissionIds
	 */
	@Transactional
	public void correlationPermissions(Long roleId, Long... permissionIds) {
		roleDao.correlationPermissions(roleId, permissionIds);
	}

	/**
	 * 移除角色-权限之间关系
	 * 
	 * @param roleId
	 * @param permissionIds
	 */
	@Transactional
	public void uncorrelationPermissions(Long roleId, Long... permissionIds) {
		roleDao.uncorrelationPermissions(roleId, permissionIds);
	}

	@Transactional
	public Role getRole(Long roleId) {
		return roleDao.getRole(roleId);
	}

	@Transactional
	public List<Role> findAll() {
		return roleDao.findAll();
	}

	@Transactional
	public PageDto<Role> findList(String desc, Integer pageNo, Integer pageSize) {
		return roleDao.findList(desc, pageNo, pageSize);
	}

	@Transactional
	public List<RolePermission> findRolePermssions(Long roleId) {
		return roleDao.findRolePermssions(roleId);
	}

	public List<String> findRoles() {
		return roleDao.findRoles();
	}

}
