package com.thinkcms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName: FriendshipLink
 * @Description: TODO(友情链接实体类)
 * @author zhangp
 * @date 2016年7月5日 上午11:06:00
 * 
 */
@Entity
@Table(name = "sys_friendship_link")
public class FriendshipLink implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	@Column(name = "site_name")
	private String siteName;
	@Column(name = "site_logo")
	private String siteLogo;
	@Column(name = "site_url")
	private String siteUrl;
	@Column(name = "show_order")
	private Integer showOrder;
	@Column(name = "available")
	private Boolean available = Boolean.FALSE; // 是否可用

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSiteName() {
		return siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public String getSiteLogo() {
		return siteLogo;
	}

	public void setSiteLogo(String siteLogo) {
		this.siteLogo = siteLogo;
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

	public String getSiteUrl() {
		return siteUrl;
	}

	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}

	@Override
	public String toString() {
		return "FriendshipLink [id=" + id + ", siteName=" + siteName
				+ ", siteLogo=" + siteLogo + ", siteUrl=" + siteUrl
				+ ", showOrder=" + showOrder + ", available=" + available + "]";
	}

}
