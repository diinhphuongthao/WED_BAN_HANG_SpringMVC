package springmvc.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
public class BaseDao {

	@Autowired
	public SessionFactory sessionFactory;
	
}
