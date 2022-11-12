package springmvc.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Menus;

@Repository
public class CartsDaoImpl extends BaseDao implements CartsDao {

	@Override
	public void addCart(Cart cart) {
		  Session currentSession = sessionFactory.getCurrentSession();
          // save/upate the customer ... finally
          currentSession.save(cart);
	}

	@Override
	public Cart findCartId(String id) {
		 Session currentSession = sessionFactory.getCurrentSession();
         // now retrieve/read from database using the primary key
         Cart theCart = currentSession.get(Cart.class, id);
         return theCart;
	}


}
