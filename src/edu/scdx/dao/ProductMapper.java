package edu.scdx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import edu.scdx.entity.Product;
import edu.scdx.entity.User;

@Repository
public interface ProductMapper {
	public List<Product> getAll();
	public Product getProductById(@Param("id")Integer id);
	public void insertProduct(Product product);
}
