package com.sairam.niit1.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sairam.niit1.model.Cart;
import com.sairam.niit1.model.Product;
@Component
@Repository
public class CartDaoImpl implements CartDao
{
	@Autowired
	SessionFactory SessionFactory;

	@Override
	public boolean sendToCart(int quantity,int proid)
	{
		int s=(int)(Math.random()*10000);
		
		Session session=SessionFactory.openSession();
		Product pro=(Product)session.get(Product.class,proid);
		
 String p=pro.getProname();
 int pc=pro.getProprice();
 Cart c=new Cart();
 c.setCartId(s);
 c.setProname(p);
 c.setProprice(pc);
 c.setQuantity(quantity);
 c.setTotalPrice(pc*quantity);
 session.save(pro);
 
return true;
	}
}
