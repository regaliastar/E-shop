package edu.scdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.scdx.dao.CartMapper;
import edu.scdx.dao.ProductMapper;
import edu.scdx.entity.Cart;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
    private CartMapper cartMapper;
	
	@Override
	public List<Cart> getAll(Integer id) {
		return cartMapper.getAll(id);
	}

	@Override
	public void addCart(Cart cart) {
		cartMapper.insertCart(cart);
	}

	@Override
	public void deleteCart(Integer id) {
		cartMapper.deleteCart(id);
	}



}
