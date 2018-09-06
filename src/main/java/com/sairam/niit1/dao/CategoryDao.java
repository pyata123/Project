package com.sairam.niit1.dao;



import java.util.List;

import com.sairam.niit1.model.Category;

public interface CategoryDao 
{
boolean insert(Category category);
List getAllCategory();
boolean deletecat(int c);
 Category editcat(int c);
}