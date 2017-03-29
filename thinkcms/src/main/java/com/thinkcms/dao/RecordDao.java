package com.thinkcms.dao;

import com.thinkcms.entity.Record;
import com.thinkcms.support.PageDto;

/**
 * @ClassName:RecordDao
 * @author xiaobai
 * @date 2017年3月25日13:55:36
 */
public interface RecordDao {

	public Record saveOrUpdate(Record record);
	
	public PageDto<Record> findList(Long categoryId,String title, String tag, String remark,
			Integer pageNo, Integer pageSize);
	
	public void del(Long id);
	
	public void delBatch(String ids);
	
	public Record getRecord(Long id);
}
