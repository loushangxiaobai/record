package com.thinkcms.service;

import com.thinkcms.entity.Record;
import com.thinkcms.support.PageDto;

/**
 * @ClassName:RecordService
 * @author xiaobai
 * @date 2017年3月25日13:51:19
 */
public interface RecordService {
   public Record saveOrUpdate(Record record);
   
   public PageDto<Record> findList(Long categoryId,String title, String tag, String remark,
			Integer pageNo, Integer pageSize);
   
   public void del(Long id);
   
   public void delBatch(String ids);
}
