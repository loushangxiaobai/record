package com.thinkcms.service;

import java.util.List;

import com.thinkcms.entity.User;
import com.thinkcms.entity.UserRole;
import com.thinkcms.support.PageDto;

/**
 * <p>
 * User: Zhang Kaitao
 * <p>
 * Date: 14-1-28
 * <p>
 * Version: 1.0
 */
public interface UserService {

	/**
	 * 创建用户
	 * 
	 * @param user
	 */
	public User add(User user,Long... roleIds);

	/**
	 * 修改密码
	 * 
	 * @param userId
	 * @param newPassword
	 */
	public void changePassword(Long userId, String newPassword);

	/**
	 * 添加用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	public void correlationRoles(Long userId, Long... roleIds);

	/**
	 * 移除用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	public void uncorrelationRoles(Long userId, Long... roleIds);

	/**
	 * 根据用户名查找用户
	 * 
	 * @param username
	 * @return
	 */
	public User findByUserName(String userName);

	/**
	 * 根据用户名查找其角色
	 * 
	 * @param username
	 * @return
	 */
	public List<String> findRoles(String userName);

	/**
	 * 根据用户名查找其权限
	 * 
	 * @param username
	 * @return
	 */
	public List<String> findPermissions(String userName);

	public User getUser(Long userId);

	public User update(User user,Long... roleIds);

	public void del(Long userId);

	public void delBatch(String ids);

	public List<UserRole> findUserRole(Long userId);

	public List<String> findRolesById(Long userId);

	public List<User> findAll();

	public PageDto<User> findList(User user, Integer pageNo, Integer pageSize);

}
