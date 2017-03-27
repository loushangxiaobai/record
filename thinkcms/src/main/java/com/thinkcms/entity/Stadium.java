package com.thinkcms.entity;

//这个地方可以事先定义好需要的类   
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName: Stadium
 * @Description: TODO(Stadium实体类)
 * @author zhangp
 * 
 */
@Entity
@Table(name = "zq_stadium")
public class Stadium implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	@Column(name = "modify_date")
	private Date modifyDate;
	@Column(name = "city")
	private String city;
	@Column(name = "area")
	private String area;
	@Column(name = "name")
	private String name;
	@Column(name = "siteType")
	private String siteType;
	@Column(name = "sod")
	private String sod;
	@Column(name = "lamplight")
	private String lamplight;
	@Column(name = "addr")
	private String addr;
	@Column(name = "openTime")
	private String openTime;
	@Column(name = "siteInfo")
	private String siteInfo;
	@Column(name = "contMan")
	private String contMan;
	@Column(name = "contQQ")
	private String contQQ;
	@Column(name = "contQqun")
	private String contQqun;
	@Column(name = "contWx")
	private String contWx;
	@Column(name = "contWb")
	private String contWb;
	@Column(name = "contPhone")
	private String contPhone;
	@Column(name = "showImg")
	private String showImg;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCity() {
		return this.city;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getArea() {
		return this.area;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public void setSiteType(String siteType) {
		this.siteType = siteType;
	}

	public String getSiteType() {
		return this.siteType;
	}

	public void setSod(String sod) {
		this.sod = sod;
	}

	public String getSod() {
		return this.sod;
	}

	public void setLamplight(String lamplight) {
		this.lamplight = lamplight;
	}

	public String getLamplight() {
		return this.lamplight;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddr() {
		return this.addr;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getOpenTime() {
		return this.openTime;
	}

	public void setSiteInfo(String siteInfo) {
		this.siteInfo = siteInfo;
	}

	public String getSiteInfo() {
		return this.siteInfo;
	}

	public void setContMan(String contMan) {
		this.contMan = contMan;
	}

	public String getContMan() {
		return this.contMan;
	}

	public void setContQQ(String contQQ) {
		this.contQQ = contQQ;
	}

	public String getContQQ() {
		return this.contQQ;
	}

	public void setContQqun(String contQqun) {
		this.contQqun = contQqun;
	}

	public String getContQqun() {
		return this.contQqun;
	}

	public void setContWx(String contWx) {
		this.contWx = contWx;
	}

	public String getContWx() {
		return this.contWx;
	}

	public void setContWb(String contWb) {
		this.contWb = contWb;
	}

	public String getContWb() {
		return this.contWb;
	}

	public void setContPhone(String contPhone) {
		this.contPhone = contPhone;
	}

	public String getContPhone() {
		return this.contPhone;
	}

	public void setShowImg(String showImg) {
		this.showImg = showImg;
	}

	public String getShowImg() {
		return this.showImg;
	}

	@Override
	public String toString() {
		return "Stadium [id=" + id + ", modifyDate=" + modifyDate + ", city="
				+ city + ", area=" + area + ", name=" + name + ", siteType="
				+ siteType + ", sod=" + sod + ", lamplight=" + lamplight
				+ ", addr=" + addr + ", openTime=" + openTime + ", siteInfo="
				+ siteInfo + ", contMan=" + contMan + ", contQQ=" + contQQ
				+ ", contQqun=" + contQqun + ", contWx=" + contWx + ", contWb="
				+ contWb + ", contPhone=" + contPhone + ", showImg=" + showImg
				+ "]";
	}
	
}