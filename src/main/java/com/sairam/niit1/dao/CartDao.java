package com.sairam.niit1.dao;

import com.sairam.niit1.model.Cart;

public interface CartDao 
{	
	boolean sendToCart(int quantity,int proid);	
}
