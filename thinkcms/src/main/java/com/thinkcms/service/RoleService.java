package com.thinkcms.service;

import java.util.List;

import com.thinkcms.entity.Role;
import com.thinkcms.entity.RolePermission;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: RoleService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月23日 下午2:12:36
 * 
 */
public interface RoleService {

	public Role save(Role role, Long... permissionIds);

	public Role update(Role role, Long... permissionIds);

	public void delete(Long roleId);

	public void delBatch(String ids);

	public Role getRole(Long roleId);

	public List<RolePermission> findRolePermssions(Long roleId);

	public List<Role> findAll();

	public List<String> findRoles();

	public PageDto<Role> findList(String desc, Integer pageNo, Integer pageSize);

}
