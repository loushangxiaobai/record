package com.thinkcms.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: Permission
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月16日 下午5:20:42
 * 
 */
@Entity
@Table(name = "sys_permissions")
public class Permission implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 6042506449595902083L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	@Column(name = "parent_id")
	private Long parentId;
	@Column(name = "permission")
	private String permission; // 权限标识 程序中判断使用,如"user:create"
	@Column(name = "description")
	private String description; // 权限描述,UI界面显示使用
	@Column(name = "show_order")
	private Integer showOrder; // 权限类型,menu-菜单/permission-细粒度权限(不会显示在菜单中,只会在做权限判断的时候用)
	@Column(name = "available")
	private Boolean available = Boolean.FALSE; // 是否可用,如果不可用将不会添加给用户
	@Transient
	private List<Permission> childList;
	@Column(name = "parent_name")
	private String  parentName;
	@Column(name = "icon")
	private String  icon;

	public Permission() {
	}

	public Permission(String permission, String description, Boolean available) {
		this.permission = permission;
		this.description = description;
		this.available = available;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Boolean getAvailable() {
		return available;
	}

	public void setAvailable(Boolean available) {
		this.available = available;
	}

	public Integer getShowOrder() {
		return showOrder;
	}

	public void setShowOrder(Integer showOrder) {
		this.showOrder = showOrder;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		Permission permission = (Permission) o;

		if (id != null ? !id.equals(permission.id) : permission.id != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		return id != null ? id.hashCode() : 0;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public List<Permission> getChildList() {
		return childList;
	}

	public void setChildList(List<Permission> childList) {
		this.childList = childList;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public String getIcon() {
		return icon==null?"am-icon-github":icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	@Override
	public String toString() {
		return "Permission [id=" + id + ", parentId=" + parentId
				+ ", permission=" + permission + ", description=" + description
				+ ", showOrder=" + showOrder + ", available=" + available
				+ ", childList=" + childList + ", parentName=" + parentName
				+ ", icon=" + icon + "]";
	}

}
