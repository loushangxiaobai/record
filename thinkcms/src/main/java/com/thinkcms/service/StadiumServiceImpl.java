package com.thinkcms.service;

import java.util.List;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.StadiumDao;
import com.thinkcms.entity.Stadium;
import com.thinkcms.support.PageDto;


/** 
 * @ClassName: StadiumServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author zhangp 
 *  
 */
@Service("stadiumService")
public class StadiumServiceImpl implements StadiumService {

	@Autowired
	private StadiumDao stadiumDao;

	@Transactional
	public Stadium saveOrUpdate(Stadium entity) {
		return stadiumDao.saveOrUpdate(entity);
	}

	@Transactional
	public void del(Long id) {
		stadiumDao.del(id);
	}

	@Transactional
	public void delBatch(String ids) {
		stadiumDao.delBatch(ids);
	}

	@Transactional
	public List<Stadium> findAll() {
		return stadiumDao.findAll();
	}

	@Transactional
	public PageDto<Stadium> findList( String city,   String area,   String name,   String siteType,   String sod,   String lamplight,   String addr,   String openTime,   String siteInfo,   String contMan,   String contQQ,   String contQqun,   String contWx,   String contWb,   String contPhone,   Date startDate,Date endDate,Integer pageNo, Integer pageSize) {
		return stadiumDao.findList(city, area, name, siteType, sod, lamplight, addr, openTime, siteInfo, contMan, contQQ, contQqun, contWx, contWb, contPhone,  startDate,endDate,pageNo,pageSize);
	}

	@Transactional
	public Stadium getStadium(Long id) {
		return stadiumDao.getStadium(id);
	}

}
