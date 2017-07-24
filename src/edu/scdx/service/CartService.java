package edu.scdx.service;

import java.util.List;

import edu.scdx.entity.Cart;
import edu.scdx.entity.Product;

public interface CartService {
	public List<Cart> getAll(Integer id);
	public void addCart(Cart cart);
	public void deleteCart(Integer id);
}
