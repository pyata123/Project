package com.sairam.niit1.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sairam.niit1.model.Supplier;


@Component
@Repository
public class SupplierDaoImpl implements SupplierDao{

	@Autowired
	SessionFactory sessionFactory;
	public boolean insert(Supplier supplier) {
		int s=(int)(Math.random()*10000);
		supplier.setSupplierId(s);
		
		Session session=sessionFactory.openSession();
		session.save(supplier);
		Transaction transaction=session.beginTransaction();
		transaction.commit();
		return false;
	}
	
	public List getAllSupplier() {
		  Session session=sessionFactory.openSession();
	       
	       Query query=session.createQuery("from Supplier");
	       
	       List supplierList=query.list();
	       
		return supplierList;
	}

	@Override
	public boolean deleteSup(int s) {
	try
	{
		Session session=sessionFactory.openSession();
		Supplier sup=(Supplier)session.get(Supplier.class, s);
        session.delete(sup);
        Transaction transaction=session.beginTransaction();
        transaction.commit();
		return true;}
	catch(Exception e)
	{
		return false;
	}
	}

	@Override
	public Supplier editSup(int s) {
		Session session=sessionFactory.openSession();
		Supplier sdao=(Supplier)session.get(Supplier.class, s);
		return sdao;
	}

}