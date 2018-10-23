package com.sairam.niit1.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sairam.niit1.model.Category;


@Component
@Repository
public interface CategoryDao {
boolean insert(Category category);
List getAllCategory();
boolean deleteCat(int c);
Category editCat(int c);

}