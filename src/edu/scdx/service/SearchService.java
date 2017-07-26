package edu.scdx.service;
import java.util.List;

import edu.scdx.entity.Address;
import edu.scdx.entity.Product;


public interface SearchService {
       public List<Product> searchProduct(String keyword);
}
