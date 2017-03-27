package com.thinkcms.dao;

import java.util.List;

import com.thinkcms.entity.Role;
import com.thinkcms.entity.RolePermission;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: RoleDao
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:45:19
 * 
 */
public interface RoleDao {

	public Role saveOrUpdate(Role role);

	public void del(Long id);

	public void delBatch(String ids);

	public void correlationPermissions(Long roleId, Long... permissionIds);

	public void uncorrelationPermissions(Long roleId, Long... permissionIds);

	public void uncorrelationAllPermissions(Long roleId);

	public Role getRole(Long id);

	public List<RolePermission> findRolePermssions(Long roleId);

	public List<Role> findAll();

	public List<String> findRoles();

	public PageDto<Role> findList(String desc, Integer pageNo, Integer pageSize);

}
