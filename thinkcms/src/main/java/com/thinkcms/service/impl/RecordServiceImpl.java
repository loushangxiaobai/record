package com.thinkcms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.RecordDao;
import com.thinkcms.entity.Record;
import com.thinkcms.service.RecordService;
import com.thinkcms.support.PageDto;
/**
 * @ClassName:RecordServiceImpl
 * @author xiaobai
 * @date 2017年3月25日13:53:58
 */
@Service("recordService")
public class RecordServiceImpl implements RecordService{
	@Autowired
	private RecordDao recordDao;

	@Transactional
	public Record saveOrUpdate(Record record) {
		return recordDao.saveOrUpdate(record);
	}
	
	@Transactional
	public PageDto<Record> findList(Long categoryId,String title,String tag,String remark, Integer pageNo,
			Integer pageSize) {
		return recordDao.findList(categoryId,title,tag,remark, pageNo, pageSize);
	}

	@Transactional
	public void del(Long id) {
		recordDao.del(id);
	}

	@Transactional
	public void delBatch(String ids) {
		recordDao.delBatch(ids);
		
	}


}
