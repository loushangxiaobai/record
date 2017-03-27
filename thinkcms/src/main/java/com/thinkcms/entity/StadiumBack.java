package com.thinkcms.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @ClassName: Stadium
 * @Description: TODO(球场实体类)
 * @author zhangp
 * @date 2016年7月13日 上午10:44:07
 * 
 */
//@Entity
//@Table(name = "zq_stadium")
public class StadiumBack implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 5505376471786790569L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	@Column(name = "city")
	private String city;
	@Column(name = "area")
	private String area;
	@Column(name = "name")
	private String name;
	@Column(name = "site_type")
	private String siteType;// 场地类型 11、7-9、5
	@Column(name = "sod")
	private String sod;// 草皮类型 - 人工草皮、天然草皮、室内球场、沙土平地
	@Column(name = "lamplight")
	private Boolean lamplight = Boolean.FALSE;// 灯光

	@Column(name = "addr")
	private String addr;
	@Column(name = "open_time")
	private String openTime;
	@Column(name = "site_info")
	private String siteInfo;

	@Column(name = "cont_man")
	private String contMan;
	@Column(name = "cont_qq")
	private String contQQ;
	@Column(name = "cont_qqun")
	private String contQqun;
	@Column(name = "cont_wx")
	private String contWx;
	@Column(name = "cont_wb")
	private String contWb;
	@Column(name = "cont_phone")
	private String contPhone;
	
	@Column(name="modify_date")
	private Date modifyDate;
	@Column(name="show_img")
	private String showImg;
	
	@Transient
	private List<String> imgs;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSiteType() {
		return siteType;
	}

	public void setSiteType(String siteType) {
		this.siteType = siteType;
	}

	public String getSod() {
		return sod;
	}

	public void setSod(String sod) {
		this.sod = sod;
	}

	public Boolean getLamplight() {
		return lamplight;
	}

	public void setLamplight(Boolean lamplight) {
		this.lamplight = lamplight;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getOpenTime() {
		return openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getSiteInfo() {
		return siteInfo;
	}

	public void setSiteInfo(String siteInfo) {
		this.siteInfo = siteInfo;
	}

	public String getContMan() {
		return contMan;
	}

	public void setContMan(String contMan) {
		this.contMan = contMan;
	}

	public String getContQQ() {
		return contQQ;
	}

	public void setContQQ(String contQQ) {
		this.contQQ = contQQ;
	}

	public String getContQqun() {
		return contQqun;
	}

	public void setContQqun(String contQqun) {
		this.contQqun = contQqun;
	}

	public String getContWx() {
		return contWx;
	}

	public void setContWx(String contWx) {
		this.contWx = contWx;
	}

	public String getContWb() {
		return contWb;
	}

	public void setContWb(String contWb) {
		this.contWb = contWb;
	}

	public String getContPhone() {
		return contPhone;
	}

	public void setContPhone(String contPhone) {
		this.contPhone = contPhone;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getShowImg() {
		return showImg;
	}

	public void setShowImg(String showImg) {
		this.showImg = showImg;
	}

	public List<String> getImgs() {
		return imgs;
	}

	public void setImgs(List<String> imgs) {
		this.imgs = imgs;
	}

	@Override
	public String toString() {
		return "Stadium [id=" + id + ", city=" + city + ", area=" + area
				+ ", name=" + name + ", siteType=" + siteType + ", sod=" + sod
				+ ", lamplight=" + lamplight + ", addr=" + addr + ", openTime="
				+ openTime + ", siteInfo=" + siteInfo + ", contMan=" + contMan
				+ ", contQQ=" + contQQ + ", contQqun=" + contQqun + ", contWx="
				+ contWx + ", contWb=" + contWb + ", contPhone=" + contPhone
				+ ", modifyDate=" + modifyDate + ", showImg=" + showImg
				+ ", imgs=" + imgs + "]";
	}

}
