package  com.thinkcms.dao;  

import java.util.List;
import java.util.Date;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.thinkcms.entity.Stadium;
import com.thinkcms.support.PageDto;

/**
 * @ClassName: StadiumDaoImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author zhangp
 * 
 */
@Component("stadiumDao")
public class StadiumDaoImpl extends BaseDao implements StadiumDao {

	public Stadium saveOrUpdate(final Stadium entity) {
		entity.setModifyDate(new Date());
		super.saveOrUpdate(entity);
		return entity;
	}

	public void del(Long id) {
		String	sql = "delete from zq_stadium where id=?";
		super.sqlUpdate(sql, id);
	}

	public void delBatch(String ids) {
		// 删除该数据
		String sql = "delete from zq_stadium where id in  (" + ids + ")";
		super.sqlUpdate(sql);
	}

	public List<Stadium> findAll() {
		return super.find(Stadium.class);
	}

	public PageDto<Stadium> findList( String city,   String area,   String name,   String siteType,   String sod,   String lamplight,   String addr,   String openTime,   String siteInfo,   String contMan,   String contQQ,   String contQqun,   String contWx,   String contWb,   String contPhone,   Date startDate,Date endDate,Integer pageNo, Integer pageSize){
		DetachedCriteria dc = DetachedCriteria.forClass(Stadium.class);
		
		
	  	if (!StringUtils.isEmpty(city)) {
			dc.add(Restrictions.eq("city", city));
		}
	  	if (!StringUtils.isEmpty(area)) {
			dc.add(Restrictions.eq("area", area));
		}
	  	if (!StringUtils.isEmpty(name)) {
			dc.add(Restrictions.like("name", name, MatchMode.ANYWHERE));
		}
	  	if (!StringUtils.isEmpty(siteType)) {
			dc.add(Restrictions.eq("siteType", siteType));
		}
	  	if (!StringUtils.isEmpty(sod)) {
			dc.add(Restrictions.eq("sod", sod));
		}
	  	if (!StringUtils.isEmpty(lamplight)) {
			dc.add(Restrictions.eq("lamplight", lamplight));
		}
	  	if (!StringUtils.isEmpty(addr)) {
			dc.add(Restrictions.like("addr", addr, MatchMode.ANYWHERE));
		}
	  	if (!StringUtils.isEmpty(openTime)) {
			dc.add(Restrictions.like("openTime", openTime, MatchMode.ANYWHERE));
		}
	  	if (!StringUtils.isEmpty(siteInfo)) {
			dc.add(Restrictions.like("siteInfo", siteInfo, MatchMode.ANYWHERE));
		}
	  	if (!StringUtils.isEmpty(contMan)) {
			dc.add(Restrictions.eq("contMan", contMan));
		}
	  	if (!StringUtils.isEmpty(contQQ)) {
			dc.add(Restrictions.eq("contQQ", contQQ));
		}
	  	if (!StringUtils.isEmpty(contQqun)) {
			dc.add(Restrictions.eq("contQqun", contQqun));
		}
	  	if (!StringUtils.isEmpty(contWx)) {
			dc.add(Restrictions.eq("contWx", contWx));
		}
	  	if (!StringUtils.isEmpty(contWb)) {
			dc.add(Restrictions.eq("contWb", contWb));
		}
	  	if (!StringUtils.isEmpty(contPhone)) {
			dc.add(Restrictions.eq("contPhone", contPhone));
		}
		if (startDate != null) {
			dc.add(Restrictions.ge("modifyDate", startDate));
		}
		if (endDate != null) {
			dc.add(Restrictions.le("modifyDate", endDate));
		}
		dc.addOrder(Order.desc("modifyDate"));
		/* 一定先取count值 */
		Long total = super.countByCriteria(dc);
		List<Stadium> list = super.findByCriteria(dc, (pageNo - 1) * pageSize,
				pageSize);
		return new PageDto<Stadium>(total, pageNo, pageSize, list);
	}

	public Stadium getStadium(Long id) {
		return super.get(Stadium.class, id);
	}


}
