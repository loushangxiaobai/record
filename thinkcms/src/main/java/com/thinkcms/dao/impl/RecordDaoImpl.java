package com.thinkcms.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.thinkcms.dao.BaseDao;
import com.thinkcms.dao.RecordDao;
import com.thinkcms.entity.Record;
import com.thinkcms.support.PageDto;
/**
 * @Classname:RecordDao
 * @author xiaobai
 * @date 2017年3月25日13:56:59
 */
@Component("recordDao")
public class RecordDaoImpl extends BaseDao implements RecordDao{


	public Record saveOrUpdate(final Record record) {
		super.saveOrUpdate(record);
		return record;
	}

	@Override
	public PageDto<Record> findList(Long categoryId, String title, String tag,
			String remark, Integer pageNo, Integer pageSize) {
		DetachedCriteria dc = DetachedCriteria.forClass(Record.class);
		if (categoryId != null) {
			dc.add(Restrictions.eq("categoryId", categoryId));
		}
		if (title != null) {
			dc.add(Restrictions.like("province", title, MatchMode.ANYWHERE));
		}
		if (tag != null) {
			dc.add(Restrictions.like("tag", title, MatchMode.ANYWHERE));
		}
		if (remark != null) {
			dc.add(Restrictions.like("remark", title, MatchMode.ANYWHERE));
		}
		dc.addOrder(Order.desc("createDate"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<Record> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<Record>(total, pageNo, pageSize, list);
	}

	@Override
	public void del(Integer id) {
		// 首先把与permission关联的相关表的数据删掉

				String	sql = "delete from sys_record where id=?";
				super.sqlUpdate(sql, id);
	}

	@Override
	public void delBatch(String ids) {
		// 首先把与permission关联的相关表的数据删掉
				// 删除该数据
				String	sql = "delete from sys_record where id in  (" + ids + ")";
				super.sqlUpdate(sql);
		
	}

	@Override
	public Record getRecord(Integer id) {
		// TODO Auto-generated method stub
		return super.get(Record.class, id);
	}

	@Override
	public List<Record> findById(String ids) {
		// TODO Auto-generated method stub
		String sql= "select * from sys_record where id in (" + ids + ")";
		List<Record> list=  super.sqlQuery(Record.class, sql);
		return list;
	}

}
