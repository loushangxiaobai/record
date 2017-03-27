package com.thinkcms.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.AttachmentDao;
import com.thinkcms.entity.Attachment;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: ArticleServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年6月27日 下午4:59:42
 * 
 */
@Service("attachmentService")
public class AttachmentServiceImpl implements AttachmentService {

	@Autowired
	private AttachmentDao attachmentDao;

	@Transactional
	public Attachment saveOrUpdate(Attachment attachment) {
		return attachmentDao.saveOrUpdate(attachment);
	}

	@Transactional
	public void del(Long id) {
		attachmentDao.del(id);
	}

	@Transactional
	public void delBatch(String ids) {
		attachmentDao.delBatch(ids);
	}

	@Transactional
	public Attachment getAttachment(Long id) {
		return attachmentDao.getAttachment(id);
	}

	@Transactional
	public List<Attachment> findAll() {
		return attachmentDao.findAll();
	}

	@Transactional
	public PageDto<Attachment> findList(Date startDate, Date endDate,String type,
			Integer pageNo, Integer pageSize) {
		return attachmentDao.findList(startDate, endDate, type,pageNo, pageSize);
	}
	@Transactional
	public void delByUrl(String url) {
		attachmentDao.delByUrl(url);
	}
	@Transactional
	public List<String> findAttachments(String ids) {
		return attachmentDao.findAttachments(ids);
	}

}
