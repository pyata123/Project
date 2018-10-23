package com.sairam.niit1.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sairam.niit1.model.Register;
@Component
@Repository
public class RegisterDaoImpl implements RegisterDao
{
@Autowired
SessionFactory sessionFactory;
	
	public void registerUser(Register reg)
	{
		Session session=sessionFactory.openSession();
		reg.setRole("ROLE_USER");
		reg.setEnabled(true);
		session.save(reg);
		Transaction transaction=session.beginTransaction();
		transaction.commit();
		session.close();
		
	}

	
	public Register getUser(String userName) 
	{
		String hql="from Register where userName=:uname";
		Session session=sessionFactory.openSession();
		Query query=session.createQuery(hql);
		query.setParameter("uname",userName);
		Register register=(Register)query.uniqueResult();
		if (register!=null)
		
		{
			return register;
		}
		else
		{
			return null;
		}
	}

}
