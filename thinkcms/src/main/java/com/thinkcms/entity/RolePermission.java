package com.thinkcms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName: RolePermssion
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:21:15
 *       之所以自己写关联表是为了方便自己控制。hibernate的关联关系特定查询层级太多会产生大量的sql查询
 */
@Entity
@Table(name = "sys_roles_permissions")
public class RolePermission implements Serializable {

	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = -6935311114728524534L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(name = "role_id")
	private Long roleId;
	@Column(name = "permission_id")
	private Long permissionId;

	public RolePermission() {
		super();
	}

	public RolePermission(Long roleId, Long permissionId) {
		super();
		this.roleId = roleId;
		this.permissionId = permissionId;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public Long getPermissionId() {
		return permissionId;
	}

	public void setPermissionId(Long permissionId) {
		this.permissionId = permissionId;
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

		RolePermission that = (RolePermission) o;

		if (permissionId != null ? !permissionId.equals(that.permissionId)
				: that.permissionId != null)
			return false;
		if (roleId != null ? !roleId.equals(that.roleId) : that.roleId != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = roleId != null ? roleId.hashCode() : 0;
		result = 31 * result
				+ (permissionId != null ? permissionId.hashCode() : 0);
		return result;
	}

	@Override
	public String toString() {
		return "RolePermssion [id=" + id + ", roleId=" + roleId
				+ ", permissionId=" + permissionId + "]";
	}

}
