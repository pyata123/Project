package com.sairam.niit1.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sairam.niit1.model.Category;

@Component
@Repository
public class CategoryDaoImpl implements CategoryDao
{
    @Autowired
    SessionFactory sessionFactory;
    
    public boolean insert(Category category)
    {
        Session session=sessionFactory.openSession();
        session.save(category);
        
        Transaction transaction=session.beginTransaction();
        
        transaction.commit();
        
        return false;
    }
	
	public List getAllCategory() 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List categoryList=query.list();		
		return categoryList;
	}

	@Override
	public boolean deletecat(int c) 
	{
		try
		{
			Session session=sessionFactory.openSession();
			Category cat=(Category)session.get(Category.class,c);
			session.delete(cat);
			Transaction transaction=session.beginTransaction();
			transaction.commit();
			return true;
		}
		catch (Exception e)
		{
			return false;
		}
		
	}

	@Override
	public Category editcat(int c) 
	{
		Session session=sessionFactory.openSession();
		Category cate=(Category)session.get(Category.class,c);
		return cate;
	}
	


}

