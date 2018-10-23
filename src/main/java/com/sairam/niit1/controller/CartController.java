package com.sairam.niit1.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.CartDao;
import com.sairam.niit1.dao.ProductDao;




@Controller
public class CartController {
private static final String String = null;
@Autowired
CartDao cart;
@Autowired
ProductDao productdao;
@Autowired
HttpSession httpSession;

@RequestMapping("/SendToCart")
	public ModelAndView cart(@RequestParam ("quantity")int quantity,@RequestParam("id")int id )
	{
	String un=(String)httpSession.getAttribute("userId");
//cart.getAllCart(un);
		cart.sendToCart(quantity, id,un);
	List proList=productdao.getAllProducts();
		ModelAndView modelAndView=new ModelAndView("user","productInfo",proList);
		return modelAndView;
	}
	@RequestMapping("/cart")
	public ModelAndView cart1()
	{
		String un=(String)httpSession.getAttribute("userId");
		
		 List catList=cart.getAllCart(un);
		
		ModelAndView modelAndView=new ModelAndView("cart","cartInfo",catList);
		long count=cart.cartCount(un);
		httpSession.setAttribute("ordercount", count);
		//System.out.println(count);
				return modelAndView;
	}
	
	
}