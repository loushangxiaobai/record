package com.thinkcms.service;

import com.thinkcms.entity.SiteInfo;

/**
 * @ClassName: SiteInfoService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月5日 下午2:13:32
 * 
 */
public interface SiteInfoService {

	public SiteInfo saveOrUpdate(SiteInfo article);

	public SiteInfo getSiteInfo(Long id);

}
