package com.thinkcms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkcms.dao.SlideImgDao;
import com.thinkcms.entity.SlideImg;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: SlideImgServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月6日 下午5:03:40
 * 
 */
@Service("slideImgService")
public class SlideImgServiceImpl implements SlideImgService {

	@Autowired
	private SlideImgDao slideImgDao;

	@Transactional
	public SlideImg saveOrUpdate(SlideImg entity) {
		return slideImgDao.saveOrUpdate(entity);
	}

	@Transactional
	public void del(Long id) {
		slideImgDao.del(id);
	}

	@Transactional
	public void delBatch(String ids) {
		slideImgDao.delBatch(ids);
	}

	@Transactional
	public SlideImg getSlideImg(Long id) {
		return slideImgDao.getSlideImg(id);
	}

	@Transactional
	public List<SlideImg> findAll() {
		return slideImgDao.findAll();
	}

	@Transactional
	public PageDto<SlideImg> findList(Integer pageNo, Integer pageSize,Boolean avarlable) {
		return slideImgDao.findList(pageNo, pageSize, avarlable);
	}

}
