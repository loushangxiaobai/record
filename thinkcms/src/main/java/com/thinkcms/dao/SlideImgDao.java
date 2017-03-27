package com.thinkcms.dao;

import java.util.List;

import com.thinkcms.entity.SlideImg;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: SlideImgDao
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月6日 下午4:45:24
 * 
 */
public interface SlideImgDao {

	public SlideImg saveOrUpdate(SlideImg entity);

	public void del(Long id);

	public void delBatch(String ids);

	public SlideImg getSlideImg(Long id);

	public List<SlideImg> findAll();

	public PageDto<SlideImg> findList(Integer pageNo, Integer pageSize,Boolean avarlable);

}
