package com.thinkcms.service;

import java.util.List;

import com.thinkcms.entity.SlideImg;
import com.thinkcms.support.PageDto;


/** 
 * @ClassName: SlideImgService 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author zhangp 
 * @date 2016年7月6日 下午5:03:48 
 *  
 */
public interface SlideImgService {

	public SlideImg saveOrUpdate(SlideImg entity);

	public void del(Long id);

	public void delBatch(String ids);

	public SlideImg getSlideImg(Long id);

	public List<SlideImg> findAll();

	public PageDto<SlideImg> findList(Integer pageNo, Integer pageSize,Boolean avarlable);

}
