package com.thinkcms.support;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: PageDto
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月21日 上午11:31:32
 * 
 * @param <T>
 */
public class PageDto<T> implements Serializable {
	private static final long serialVersionUID = 1923401118856169487L;

	private Long totalCount;// 记录总数
	private Integer pageNo;// 页码,当前页数
	private Integer pageSize;// 分页条数
	private List<T> items;// 查询结果

	public PageDto() {
		super();
	}

	public PageDto(Long totalCount, Integer pageNo, Integer pageSize,
			List<T> items) {
		super();
		this.totalCount = totalCount;
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.items = items;
	}

	public Long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Long totalCount) {
		this.totalCount = totalCount;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getItems() {
		return items;
	}

	public void setItems(List<T> items) {
		this.items = items;
	}

	@Override
	public String toString() {
		return "PageDto [totalCount=" + totalCount + ", pageNo=" + pageNo
				+ ", pageSize=" + pageSize + ", items=" + items + "]";
	}

	public String getPageStr() {
		Integer totalPage = (int) (totalCount % pageSize > 0 ? (totalCount
				/ pageSize + 1) : (totalCount / pageSize));
		Integer prePage = pageNo - 1 > 0 ? pageNo - 1 : 1;
		Integer nextPage = pageNo + 1 > totalPage ? totalPage : pageNo + 1;
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("<div class=\"am-cf\">");
		stringBuffer.append("共 " + totalCount + "条记录");
		stringBuffer.append("<div class=\"am-fr\">");
		stringBuffer.append("<ul class=\"am-pagination\">");
		if (pageNo == 1) {
			stringBuffer
					.append("<li class=\"am-disabled\"><a href=\"#\" onclick=\"query("
							+ prePage + "," + pageSize + ")\">«</a></li>");
		} else {
			stringBuffer.append("<li><a href=\"#\" onclick=\"query(" + prePage
					+ "," + pageSize + ")\">«</a></li>");
		}
		for (int i = pageNo-5; i < pageNo+5; i++) {
			if (i<1||i>totalPage) {
				continue;
			}
			if (i==pageNo) {
				stringBuffer
				.append("<li class=\"am-active\"><a href=\"#\"  onclick=\"query("
							+ i + "," + pageSize + ")\">"+i+"</a></li>");
			}else {
				stringBuffer
				.append("<li><a href=\"#\"  onclick=\"query("
							+ i + "," + pageSize + ")\">"+i+"</a></li>");
			}
		}
		if (pageNo == totalPage) {
			stringBuffer
					.append("<li class=\"am-disabled\"><a href=\"#\" onclick=\"query("
							+ nextPage + "," + pageSize + ")\">»</a></li>");
		} else {
			stringBuffer
			.append("<li><a href=\"#\" onclick=\"query("
					+ nextPage + "," + pageSize + ")\">»</a></li>");
		}
		stringBuffer.append("</ul>");
		stringBuffer.append("</div>");
		stringBuffer.append("</div>");
		return stringBuffer.toString();
	}

}
