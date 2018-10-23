package com.sairam.niit1.dao;

import java.util.List;

import com.sairam.niit1.model.Product;

public interface ProductDao 
{
boolean insert(Product product);
List getAllProducts();
boolean deletePro(int p);
Product editPro(int p);
Product displayProduct(int p);
}