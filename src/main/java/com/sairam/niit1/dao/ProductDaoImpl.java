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
import com.sairam.niit1.model.Product;

@Component
@Repository
public class ProductDaoImpl implements ProductDao
{
@Autowired
SessionFactory sessionFactory;
    
    public boolean insert(Product product) 
    {
    	//int s=(int)(Math.random()*10000);
    	//product.setProid(s);
    Session session=sessionFactory.openSession();
    session.save(product);
Transaction transaction=session.beginTransaction();    
    transaction.commit();
        return false;
    }

	@Override
	public List getAllProducts()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List ProductList=query.list();
		return ProductList;
	}

	@Override
	public boolean deletepro(int p) 
	{
		try
		{
			Session session=sessionFactory.openSession();
			Product pro=(Product)session.get(Product.class,p);
			session.delete(pro);
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
	public Product editpro(int p) 
	{
		Session session=sessionFactory.openSession();
		Product proe=(Product)session.get(Product.class,p);
		return proe;
	}

	public Product displayProduct(int p)
	{
		Session session=sessionFactory.openSession();
		Product prod=(Product)session.get(Product.class, p);
		return prod;
	}
	
	    
	}