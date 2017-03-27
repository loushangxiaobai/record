package com.thinkcms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.UserDao;
import com.thinkcms.entity.User;
import com.thinkcms.entity.UserRole;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: UserServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月17日 上午11:36:34
 * 
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	@Autowired
	private PasswordHelper passwordHelper;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setPasswordHelper(PasswordHelper passwordHelper) {
		this.passwordHelper = passwordHelper;
	}

	/**
	 * 创建用户
	 * 
	 * @param user
	 */
	@Transactional
	public User add(User user, Long... roleIds) {
		// 加密密码
		passwordHelper.encryptPassword(user);
		userDao.saveOrUpdate(user);
		userDao.correlationRoles(user.getId(), roleIds);
		return user;
	}

	@Transactional
	public User update(User user, Long... roleIds) {
		User oldUser = userDao.getUser(user.getId());
		if (user.getPassword() != null) {
			oldUser.setPassword(user.getPassword());
			// 加密密码
			passwordHelper.encryptPassword(oldUser);
		}
		if (user.getNiceName() != null) {
			oldUser.setNiceName(user.getNiceName());
		}
		if (user.getDepartment() != null) {
			oldUser.setDepartment(user.getDepartment());
		}
		if (user.getMobile() != null) {
			oldUser.setMobile(user.getMobile());
		}
		userDao.saveOrUpdate(oldUser);
		userDao.uncorrelationAllRoles(oldUser.getId());
		userDao.correlationRoles(oldUser.getId(), roleIds);
		return oldUser;
	}

	/**
	 * 修改密码
	 * 
	 * @param userId
	 * @param newPassword
	 */
	@Transactional
	public void changePassword(Long userId, String newPassword) {
		User user = userDao.getUser(userId);
		user.setPassword(newPassword);
		passwordHelper.encryptPassword(user);
		userDao.saveOrUpdate(user);
	}

	/**
	 * 添加用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	@Transactional
	public void correlationRoles(Long userId, Long... roleIds) {
		userDao.correlationRoles(userId, roleIds);
	}

	/**
	 * 移除用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	@Transactional
	public void uncorrelationRoles(Long userId, Long... roleIds) {
		userDao.uncorrelationRoles(userId, roleIds);
	}

	/**
	 * 根据用户名查找用户
	 * 
	 * @param username
	 * @return
	 */
	@Transactional
	public User findByUserName(String userName) {
		return userDao.findByUserName(userName);
	}

	/**
	 * 根据用户名查找其角色
	 * 
	 * @param username
	 * @return
	 */
	@Transactional
	public List<String> findRoles(String userName) {
		return userDao.findRoles(userName);
	}

	/**
	 * 根据用户名查找其权限
	 * 
	 * @param username
	 * @return
	 */
	@Transactional
	public List<String> findPermissions(String userName) {
		return userDao.findPermissions(userName);
	}

	@Transactional
	public List<UserRole> findUserRole(Long userId) {
		return userDao.findUserRole(userId);
	}

	@Transactional
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Transactional
	public PageDto<User> findList(User user, Integer pageNo, Integer pageSize) {
		return userDao.findList(user, pageNo, pageSize);
	}

	@Transactional
	public void del(Long userId) {
		userDao.delete(userId);
	}

	@Transactional
	public void delBatch(String ids) {
		userDao.deleteBatch(ids);
	}

	@Transactional
	public User getUser(Long userId) {
		return userDao.getUser(userId);
	}

	@Transactional
	public List<String> findRolesById(Long userId) {
		return userDao.findRolesById(userId);
	}

}
