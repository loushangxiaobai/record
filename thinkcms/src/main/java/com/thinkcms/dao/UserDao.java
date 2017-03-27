package com.thinkcms.dao;

import java.util.List;

import com.thinkcms.entity.User;
import com.thinkcms.entity.UserRole;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: UserDao
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:45:46
 * 
 */
public interface UserDao {

	public User saveOrUpdate(User user);

	public void delete(Long userId);

	public void deleteBatch(String ids);

	public void correlationRoles(Long userId, Long... roleIds);

	public void uncorrelationRoles(Long userId, Long... roleIds);

	public void uncorrelationAllRoles(Long userId);

	User getUser(Long userId);

	User findByUserName(String userName);

	List<String> findRoles(String userName);

	List<String> findRolesById(Long id);

	List<String> findPermissions(String userName);

	public List<UserRole> findUserRole(Long userId);

	public List<User> findAll();

	public PageDto<User> findList(User user, Integer pageNo, Integer pageSize);

}
