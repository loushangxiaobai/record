package com.thinkcms.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.thinkcms.entity.SiteInfo;

/**
 * @ClassName: SiteInfoDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * @date 2016年7月5日 上午11:31:35
 * 
 */
@Component("siteInfoDao")
public class SiteInfoDaoImpl extends BaseDao implements SiteInfoDao {

	public SiteInfo saveOrUpdate(final SiteInfo entity) {
		super.saveOrUpdate(entity);
		return entity;
	}

	public SiteInfo getSiteInfo(Long id) {
		if (id == null) {
			List<SiteInfo> list = super.find(SiteInfo.class);
			if (list != null && list.size() > 0) {
				return list.get(0);
			} else {
				return null;
			}
		} else {
			return super.get(SiteInfo.class, id);
		}
	}
}
