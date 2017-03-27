package com.thinkcms.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.entity.Attachment;
import com.thinkcms.support.PageDto;


/** 
 * @ClassName: AttachmentDaoImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author zhangp 
 * @date 2016年6月29日 下午2:07:19 
 *  
 */
@Component("attachmentDao")
public class AttachmentDaoImpl extends BaseDao implements AttachmentDao {

	public Attachment saveOrUpdate(final Attachment attachment) {
		super.saveOrUpdate(attachment);
		return attachment;
	}

	public void del(Long id) {
		String sql = "delete from sys_attachment where id=?";
		super.sqlUpdate(sql, id);
	}

	public void delBatch(String ids) {
		// 删除该数据
		String sql = "delete from sys_attachment where id in  (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public List<Attachment> findAll() {
		return super.find(Attachment.class);
	}

	public PageDto<Attachment> findList(Date startDate,Date endDate,String type, Integer pageNo,
			Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(Attachment.class);
		if (startDate != null) {
			dc.add(Restrictions.ge("createDate", startDate));
		}
		if (endDate != null) {
			dc.add(Restrictions.le("createDate", endDate));
		}
		if (type != null) {
			dc.add(Restrictions.like("fileType", type,MatchMode.ANYWHERE));
		}
		dc.addOrder(Order.desc("createDate"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<Attachment> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<Attachment>(total, pageNo, pageSize, list);
	}

	public Attachment getAttachment(Long id) {
		return super.get(Attachment.class, id);
	}

	public void delByUrl(String url) {
		super.hqlUpdate("delete from Attachment where url=?",url);
	}

	public List<String> findAttachments(String ids) {
		String sql = "select url from  Attachment  where id in ("+ids+")";
		return super.hqlQuery(sql);
	}

}
