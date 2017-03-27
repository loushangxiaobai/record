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
 * @ClassName: Category
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月27日 下午1:56:18
 * 
 */
@Entity
@Table(name = "sys_category")
public class Category implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 5505376471786790569L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	@Column(name = "name")
	private String name;
	@Column(name = "parent_id")
	private Long parentId;
	@Column(name = "parent_name")
	private String parentName;
	@Column(name = "show_order")
	private Integer showOrder;
	@Column(name = "available")
	private Boolean available = Boolean.FALSE; // 是否可用
	@Column(name = "list_type")
	private String listType;
	@Column(name = "url")
	private String url;
	@Column(name = "blank")
	private Boolean blank = Boolean.FALSE; // 是否打开新页签
	@Transient
	private List<Category> childList;

	
	public Category() {
		super();
	}
	public Category(String name) {
		super();
		this.name=name;
	}

	public Category(Long id, String name, Integer showOrder, Boolean available) {
		super();
		this.id = id;
		this.name = name;
		this.showOrder = showOrder;
		this.available = available;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public Integer getShowOrder() {
		return showOrder;
	}

	public void setShowOrder(Integer showOrder) {
		this.showOrder = showOrder;
	}

	public Boolean getAvailable() {
		return available;
	}

	public void setAvailable(Boolean available) {
		this.available = available;
	}

	public List<Category> getChildList() {
		return childList;
	}

	public void setChildList(List<Category> childList) {
		this.childList = childList;
	}

	public String getListType() {
		return listType;
	}

	public void setListType(String listType) {
		this.listType = listType;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Boolean getBlank() {
		return blank;
	}

	public void setBlank(Boolean blank) {
		this.blank = blank;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", parentId="
				+ parentId + ", parentName=" + parentName + ", showOrder="
				+ showOrder + ", available=" + available + ", listType="
				+ listType + ", url=" + url + ", blank=" + blank
				+ ", childList=" + childList + "]";
	}


}
