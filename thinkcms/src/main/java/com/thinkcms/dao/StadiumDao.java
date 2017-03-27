package com.thinkcms.dao;

import java.util.List;
import java.util.Date;

import com.thinkcms.entity.Stadium;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: StadiumDao
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * 
 */
public interface StadiumDao {

	public Stadium saveOrUpdate(Stadium article);

	public void del(Long id);

	public void delBatch(String ids);

	public Stadium getStadium(Long id);

	public List<Stadium> findAll();

	public PageDto<Stadium> findList( String city,   String area,   String name,   String siteType,   String sod,   String lamplight,   String addr,   String openTime,   String siteInfo,   String contMan,   String contQQ,   String contQqun,   String contWx,   String contWb,   String contPhone,   Date startDate,Date endDate,Integer pageNo, Integer pageSize);

}
