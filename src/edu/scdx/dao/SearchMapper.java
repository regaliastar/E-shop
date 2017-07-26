package edu.scdx.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import edu.scdx.entity.Product;
@Repository
public interface SearchMapper {
	

	public List<Product> searchProduct(String keyword);
}
