package com.thinkcms.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

/**
 * @ClassName: Article
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月27日 下午4:15:01
 * 
 */
@Entity
@Table(name = "sys_article")
public class Article implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 5505376471786790569L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;
	@Column(name = "title")
	private String title;
	@Column(name = "category_id")
	private Long categoryId;
	@Column(name = "category_name")
	private String categoryName;
	@Column(name = "show_order")
	private Integer showOrder;
	@Column(name = "available")
	private Boolean available = Boolean.FALSE; // 是否可用
	@Lob
	@Type(type = "text")
	@Column(name = "content")
	private String content;
	// 作者
	@Column(name = "author")
	private String author;
	// 标签
	@Column(name = "tag")
	private String tag;
	// 特殊属性   幻灯，置顶，推荐等
	@Column(name = "attr")
	private String attr;
	// 摘要
	@Column(name = "remark")
	private String remark;
	// 缩略图
	@Column(name = "img_url")
	private String imgUrl;

	@Column(name = "create_date")
	private Date createDate;
	@Column(name = "modify_date")
	private Date modifyDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getAttr() {
		return attr;
	}

	public void setAttr(String attr) {
		this.attr = attr;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", categoryId="
				+ categoryId + ", categoryName=" + categoryName
				+ ", showOrder=" + showOrder + ", available=" + available
				+ ", content=" + content + ", author=" + author + ", tag="
				+ tag + ", attr=" + attr + ", remark=" + remark + ", imgUrl="
				+ imgUrl + ", createDate=" + createDate + ", modifyDate="
				+ modifyDate + "]";
	}

}
