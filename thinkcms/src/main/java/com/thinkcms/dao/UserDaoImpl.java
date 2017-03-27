package com.thinkcms.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.entity.User;
import com.thinkcms.entity.UserRole;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: UserDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:45:53
 * 
 */
@Component("userDao")
public class UserDaoImpl extends BaseDao implements UserDao {

	public User saveOrUpdate(User user) {
		super.saveOrUpdate(user);
		return user;
	}

	public void delete(Long userId) {
		String sql = "delete from sys_users where id=?";
		super.sqlUpdate(sql, userId);
	}

	public void deleteBatch(String ids) {
		String sql = "delete from sys_users where id in (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public void correlationRoles(Long userId, Long... roleIds) {
		if (roleIds == null || roleIds.length == 0) {
			return;
		}
		String sql = "insert into sys_users_roles(user_id, role_id) values(?,?)";
		for (Long roleId : roleIds) {
			if (!exists(userId, roleId)) {
				super.sqlUpdate(sql, userId, roleId);
			}
		}
	}

	public void uncorrelationRoles(Long userId, Long... roleIds) {
		if (roleIds == null || roleIds.length == 0) {
			return;
		}
		String sql = "delete from sys_users_roles where user_id=? and role_id=?";
		for (Long roleId : roleIds) {
			if (exists(userId, roleId)) {
				super.sqlUpdate(sql, userId, roleId);
			}
		}
	}

	public void uncorrelationAllRoles(Long userId) {
		String sql = "delete from sys_users_roles where user_id=?";
		super.sqlUpdate(sql, userId);
	}

	private boolean exists(Long userId, Long roleId) {
		UserRole userRole = new UserRole(userId, roleId);
		return super.countByExample(userRole) > 0;
	}

	public User getUser(Long userId) {
		return super.get(User.class, userId);
	}

	public User findByUserName(String userName) {
		return super.getByProperty(User.class, "userName", userName);
	}

	public List<String> findRoles(String userName) {
		String sql = "select r.role from User u, Role r,UserRole ur where u.userName=? and u.id=ur.userId and r.id=ur.roleId";
		return super.hqlQuery(sql, userName);
	}

	public List<String> findPermissions(String userName) {
		// TODO 此处可以优化，比如查询到role后，一起获取roleId，然后直接根据roleId获取即可 
		String sql = "select p.permission from User u, Role r, Permission p, UserRole ur, RolePermission rp where u.userName=? and u.id=ur.userId and r.id=ur.roleId and r.id=rp.roleId and p.id=rp.permissionId";
		return super.hqlQuery(sql, userName);
	}

	public List<String> findRolesById(Long id) {
		String sql = "select roleId from  UserRole  where userId=?";
		return super.hqlQuery(sql, id);
	}

	public List<UserRole> findUserRole(Long userId) {
		return super.find(UserRole.class);
	}

	public List<User> findAll() {
		return super.find(User.class);
	}

	public PageDto<User> findList(User user, Integer pageNo, Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(User.class);
		if (user != null) {
			if (user.getDepartment() != null) {
				dc.add(Restrictions.like("department", user.getDepartment(),
						MatchMode.ANYWHERE));
			}
			if (user.getNiceName() != null) {
				dc.add(Restrictions.like("niceName", user.getNiceName(),
						MatchMode.ANYWHERE));
			}
			if (user.getUserName() != null) {
				dc.add(Restrictions.eq("userName", user.getUserName()));
			}
			if (user.getMobile() != null) {
				dc.add(Restrictions.eq("mobile", user.getMobile()));
			}
		}
		dc.addOrder(Order.asc("userName"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<User> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<User>(total, pageNo, pageSize, list);
	}

}
