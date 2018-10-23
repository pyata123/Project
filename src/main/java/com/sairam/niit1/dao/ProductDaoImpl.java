package com.sairam.niit1.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sairam.niit1.model.Product;








@Component
@Repository
public class ProductDaoImpl implements ProductDao {
@Autowired
SessionFactory sessionFactory;
	public boolean insert(Product product) {
		
	Session session=sessionFactory.openSession();
	session.saveOrUpdate(product);
Transaction transaction=session.beginTransaction();	
	transaction.commit();
	session.close();
		return false;
	}

	@Override
	public List getAllProducts() {
		 
	       Session session=sessionFactory.openSession();
	       
	       Query query=session.createQuery("from Product");
	       
	       List productList=query.list();
	       session.close();       
		return productList;
	}
	

	
	public boolean deletePro(int p ) {
		try{
		Session session=sessionFactory.openSession();
		Product prod=(Product)session.get(Product.class, p);
        session.delete(prod);
        Transaction transaction=session.beginTransaction();
        transaction.commit();
        session.close();
		return true;
		}catch(Exception e)
		{
			
			return false;
		}
		}

	
	public Product editPro(int p) {
		Session session=sessionFactory.openSession();
		Product prod=(Product)session.get(Product.class, p);
		session.close();
		return prod;
	}

	@Override
	public Product displayProduct(int p) {
		Session session=sessionFactory.openSession();
		Product prod=(Product)session.get(Product.class, p);
		session.close();
		return prod;
	}
	


	
}