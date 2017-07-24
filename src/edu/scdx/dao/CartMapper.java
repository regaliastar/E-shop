package edu.scdx.dao;

import java.util.List;

import edu.scdx.entity.Cart;

public interface CartMapper {
	public List<Cart> getAll(Integer id);
	public void insertCart(Cart cart);
	public void deleteCart(Integer id);
}
