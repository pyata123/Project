package com.sairam.niit1.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sairam.niit1.model.Register;

@Component
@Repository
public class loginDaoImpl implements loginDao
{
@Autowired
SessionFactory sessionFactory;
@Autowired
Register reg;
	
	public String loginCheck(String email, String password)
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("From Register where email=:em and password=:pwd");
		query.setParameter("em",email).setParameter("pwd",password);
		reg=(Register)query.uniqueResult();
		if(reg==null)
		{
			System.out.println("fail");
			return "fail";
			
		}
		else
		{

			System.out.println("success");
			return "success";	
		}
		
	}

}
