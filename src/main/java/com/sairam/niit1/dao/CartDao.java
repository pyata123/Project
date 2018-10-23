package com.sairam.niit1.dao;

import java.util.List;

import javax.servlet.http.HttpSession;





public interface CartDao {
boolean sendToCart(int quantity,int id,String un);
public List  getAllCart(String cart);
public void deleteCart(String username);
public long cartCount(String username);
}