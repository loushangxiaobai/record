package com.thinkcms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @ClassName: CategoryArticle
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月27日 下午5:43:44
 * 
 */
@Entity
@Table(name = "sys_category_article")
public class CategoryArticle implements Serializable {

	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = -6935311114728524534L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(name = "category_id")
	private Long categoryId;
	@Column(name = "article_id")
	private Long articleId;

	public CategoryArticle() {
		super();
	}

	public CategoryArticle(Long id, Long categoryId, Long articleId) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.articleId = articleId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}

	@Override
	public String toString() {
		return "CategoryArticle [id=" + id + ", categoryId=" + categoryId
				+ ", articleId=" + articleId + "]";
	}

}
