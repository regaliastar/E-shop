package edu.scdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import edu.scdx.entity.Product;
import edu.scdx.dao.SearchMapper;
@Service
public class SearchServiceImpl implements SearchService{
	@Autowired
    private SearchMapper searchMapper;

	@Override
	public List<Product> searchProduct(String keyword) {
		// TODO Auto-generated method stub
		return searchMapper.searchProduct(keyword);
	}

}
