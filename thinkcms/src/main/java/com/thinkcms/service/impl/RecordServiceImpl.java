package com.thinkcms.service.impl;

import java.util.List;

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
	public PageDto<Record> findList(String province,String title,String district,String city, Integer pageNo,
			Integer pageSize) {
		return recordDao.findList(province,title,district,city, pageNo, pageSize);
	}

	@Transactional
	public void del(Integer id) {
		recordDao.del(id);
	}

	@Transactional
	public void delBatch(String ids) {
		recordDao.delBatch(ids);
		
	}

	@Transactional
	public Record getRecord(Integer id) {
		// TODO Auto-generated method stub
		return recordDao.getRecord(id);
	}

	@Transactional
	public List<Record> findById(String ids) {
		// TODO Auto-generated method stub
		return recordDao.findById(ids);
	}


}
