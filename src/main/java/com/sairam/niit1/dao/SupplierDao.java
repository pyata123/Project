package com.sairam.niit1.dao;



import java.util.List;

import com.sairam.niit1.model.Category;
import com.sairam.niit1.model.Supplier;

public interface SupplierDao 
{
boolean insert(Supplier supplier);
public List getAllSupplier();
boolean deletesup(int s);
Supplier editsup(int s);
}