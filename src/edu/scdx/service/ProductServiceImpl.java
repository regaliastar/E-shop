package edu.scdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.scdx.dao.ProductMapper;
import edu.scdx.dao.UserMapper;
import edu.scdx.entity.Product;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
    private ProductMapper productMapper;

	@Override
	public List<Product> getAll() {
		 return productMapper.getAll();
	}

	@Override
	public Product findProductById(Integer id) {
		return productMapper.getProductById(id);
	}

	@Override
	public void addProduct(Product product) {
		productMapper.insertProduct(product);
	}
	
}
