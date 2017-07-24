package edu.scdx.service;

import java.util.List;

import edu.scdx.entity.Product;
import edu.scdx.entity.User;

public interface ProductService {
	public List<Product> getAll();
	public Product findProductById(Integer id);
	public void addProduct(Product product);
	
}
