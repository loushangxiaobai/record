package com.thinkcms.service;

import java.util.List;

import com.thinkcms.entity.Record;
import com.thinkcms.support.PageDto;

/**
 * @ClassName:RecordService
 * @author xiaobai
 * @date 2017年3月25日13:51:19
 */
public interface RecordService {
   public Record saveOrUpdate(Record record);
   
   public PageDto<Record> findList(String province,String title, String district, String city,
			Integer pageNo, Integer pageSize);
   
   public void del(Integer id);
   
   public void delBatch(String ids);
   
   public Record getRecord(Integer id);
   
   public List<Record> findById(String ids);
}
