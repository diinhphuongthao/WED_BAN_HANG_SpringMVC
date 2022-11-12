package springmvc.demo.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import springmvc.demo.entity.Cart;
import springmvc.demo.entity.Menus;
import springmvc.demo.entity.ProductCart;

@Repository
public class ProductCartsDaoImpl extends BaseDao implements ProductCartsDao {

	@Override
	public void addProductCarts(ProductCart cart) {
		  Session currentSession = sessionFactory.getCurrentSession();
          // save/upate the customer ... finally
          currentSession.saveOrUpdate(cart);
	}
//	SELECT Product_Cart.product_id, Cart.user_id
//	FROM     Cart INNER JOIN
//	                  Product_Cart ON Cart.cart_id = Product_Cart.cart_id
//					  where[user_id]='28feee97-0bc1-4eaf-a797-0bd32b0c4565'
	@Override
	public List<Object[]> getProductByUserID(String userId) {
		Session currentSession = sessionFactory.getCurrentSession();
		String hql="SELECT p.productId.productId, c.user.userId\r\n"
				+ "FROM     Cart c INNER JOIN\r\n"
				+ "                  ProductCart p ON c.cartId = p.cartId.cartId\r\n"
				+ "				  where c.user.userId='"+userId+"'";
		// execute query and get result list
		TypedQuery<Object[]> query=currentSession.createQuery(hql,Object[].class);
		// return the results
		List<Object[]> product =  query.getResultList();
		return product;
	}
//	SELECT COUNT(DISTINCT Product_Cart.product_id) sl
//	FROM     Cart INNER JOIN
//	                  Product_Cart ON Cart.cart_id = Product_Cart.cart_id
//					  where [user_id]='BF832D0D-A988-4095-A2CF-E96CA327C101'
	@Override
	public int demSLCartTheoIdUser(String userId) {
		try {
			String query = "SELECT COUNT(DISTINCT Product_Cart.product_id) sl\r\n"
					+ "FROM     Cart INNER JOIN\r\n"
					+ "                  Product_Cart ON Cart.cart_id = Product_Cart.cart_id\r\n"
					+ "				  where [user_id]='"+userId+"'";
			Session currentSession = sessionFactory.getCurrentSession();

			int soHoaDon = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soHoaDon;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public void deleteProductCarts(String id) {
		Session currentSession=sessionFactory.getCurrentSession();
		Query<ProductCart> query=currentSession.createQuery("delete from ProductCart p where p.productId.productId=:id");
		query.setParameter("id", id);
		query.executeUpdate();

		
	}
//	DELETE top (1) FROM Product_Cart
//	where  EXISTS
//	   (SELECT top 1 Product_Cart.product_id, Cart.created_at
//	FROM     Product_Cart INNER JOIN
//	                  Cart ON Product_Cart.cart_id = Cart.cart_id
//					  where Product_Cart.product_id='0647194e-c5ad-40d8-b73d-1822e3751b47'
//					
//					order by  [created_at] DESC);  
//	GO  
	@Override
	public void deleteProductCartsByCreated_At(String id) {
		Session currentSession=sessionFactory.getCurrentSession();
		String query = "DELETE top (1) FROM Product_Cart\r\n"
				+ "where  EXISTS\r\n"
				+ "   (SELECT top 1 Product_Cart.product_id, Cart.created_at\r\n"
				+ "FROM     Product_Cart INNER JOIN\r\n"
				+ "                  Cart ON Product_Cart.cart_id = Cart.cart_id\r\n"
				+ "				  where Product_Cart.product_id='"+id+"'\r\n"
				+ "				\r\n"
				+ "				order by  [created_at] DESC) ";
		 currentSession.createNativeQuery(query).executeUpdate();
		// return the results
	
	}
	@Override
	public int demSLCartTheoProductId(String productId) {
		try {
			String query = "select count(product_id) from Product_Cart\r\n"
					+ "where [product_id]='"+productId+"'";
			Session currentSession = sessionFactory.getCurrentSession();

			int soProduct = (int) currentSession.createNativeQuery(query).getSingleResult();
			// return the results
			return soProduct;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
