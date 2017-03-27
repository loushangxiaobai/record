package com.thinkcms.support;

import java.io.Serializable;

/**
 * @ClassName: PageDto
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月21日 上午11:31:32
 * 
 * @param <T>
 */
public class ReqDto implements Serializable {

	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 1L;
	private Integer pageNo;// 页码,当前页数
	private Integer pageSize;// 分页条数

	public ReqDto() {
		super();
	}

	public ReqDto(Integer pageNo, Integer pageSize) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
	}

	public Integer getPageNo() {
		return pageNo == null ? 1 : pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageSize() {
		return pageSize == null ? 10 : pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	@Override
	public String toString() {
		return "ReqDto [pageNo=" + pageNo + ", pageSize=" + pageSize + "]";
	}

}
