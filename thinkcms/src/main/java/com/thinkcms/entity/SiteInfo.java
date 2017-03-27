package com.thinkcms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName: SiteInfo
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月5日 上午10:26:37
 * 
 */
@Entity
@Table(name = "sys_site_info")
public class SiteInfo implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	@Column(name = "site_logo")
	private String siteLogo;
	@Column(name = "site_name")
	private String siteName;
	@Column(name = "sub_title")
	private String subTitle;
	@Column(name = "site_template")
	private String siteTemplate;
	/* 联系方式 */
	@Column(name = "contact_addr")
	private String contactAddr;
	@Column(name = "contact_mobile_phone")
	private String contactMobilePhone;
	@Column(name = "contact_fixed_phone")
	private String contactFixedPhone;
	@Column(name = "contact_email")
	private String contactEmail;

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

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public String getContactAddr() {
		return contactAddr;
	}

	public void setContactAddr(String contactAddr) {
		this.contactAddr = contactAddr;
	}

	public String getContactMobilePhone() {
		return contactMobilePhone;
	}

	public void setContactMobilePhone(String contactMobilePhone) {
		this.contactMobilePhone = contactMobilePhone;
	}

	public String getContactFixedPhone() {
		return contactFixedPhone;
	}

	public void setContactFixedPhone(String contactFixedPhone) {
		this.contactFixedPhone = contactFixedPhone;
	}

	public String getContactEmail() {
		return contactEmail;
	}

	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}

	public String getSiteLogo() {
		return siteLogo;
	}

	public void setSiteLogo(String siteLogo) {
		this.siteLogo = siteLogo;
	}

	public String getSiteTemplate() {
		return siteTemplate;
	}

	public void setSiteTemplate(String siteTemplate) {
		this.siteTemplate = siteTemplate;
	}

	@Override
	public String toString() {
		return "SiteInfo [id=" + id + ", siteLogo=" + siteLogo + ", siteName="
				+ siteName + ", subTitle=" + subTitle + ", siteTemplate="
				+ siteTemplate + ", contactAddr=" + contactAddr
				+ ", contactMobilePhone=" + contactMobilePhone
				+ ", contactFixedPhone=" + contactFixedPhone
				+ ", contactEmail=" + contactEmail + "]";
	}

}
