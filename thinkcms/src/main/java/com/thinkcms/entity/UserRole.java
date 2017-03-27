package com.thinkcms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName: UserRole
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:21:39
 * 之所以自己写关联表是为了方便自己控制。hibernate的关联关系特定查询层级太多会产生大量的sql查询
 */
@Entity
@Table(name="sys_users_roles")
public class UserRole implements Serializable {

	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 286725696058591193L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(name="user_id")
	private Long userId;
	@Column(name="role_id")
	private Long roleId;

	
	public UserRole(Long userId, Long roleId) {
		super();
		this.userId = userId;
		this.roleId = roleId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		UserRole userRole = (UserRole) o;

		if (roleId != null ? !roleId.equals(userRole.roleId)
				: userRole.roleId != null)
			return false;
		if (userId != null ? !userId.equals(userRole.userId)
				: userRole.userId != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = userId != null ? userId.hashCode() : 0;
		result = 31 * result + (roleId != null ? roleId.hashCode() : 0);
		return result;
	}

	@Override
	public String toString() {
		return "UserRole [id=" + id + ", userId=" + userId + ", roleId="
				+ roleId + "]";
	}

}
