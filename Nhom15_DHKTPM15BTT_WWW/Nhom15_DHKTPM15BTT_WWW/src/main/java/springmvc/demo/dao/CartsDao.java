package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Cart;


public interface CartsDao{

	public void addCart(Cart cart);
	public Cart findCartId(String id);
	
}
