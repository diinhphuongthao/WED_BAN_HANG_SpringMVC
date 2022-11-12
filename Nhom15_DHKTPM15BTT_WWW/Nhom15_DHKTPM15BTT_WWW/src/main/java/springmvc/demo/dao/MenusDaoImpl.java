package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Menus;

@Repository
public class MenusDaoImpl extends BaseDao implements MenusDao {

//	select * from Menus
	@Override
	public List<Menus> getDsMenus() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Menus> theQuery = currentSession.createQuery(" from Menus", Menus.class);
		// execute query and get result list
		List<Menus> menus = theQuery.getResultList();
		// return the results
		return menus;
	}



}
