package com.sairam.niit1.dao;



import java.util.List;

import com.sairam.niit1.model.Product;

public interface ProductDao 
{

		boolean insert(Product product);
		public List getAllProducts();
		boolean deletepro(int p);
		Product editpro(int p);
		Product displayProduct(int p);
}
