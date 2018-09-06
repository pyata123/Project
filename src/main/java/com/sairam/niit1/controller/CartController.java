package com.sairam.niit1.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.CartDao;
@Controller
public class CartController
{
	@Autowired
	CartDao daoc;
	
	@RequestMapping("/SendToCart")
	public ModelAndView cart(@RequestParam("quantity")int quantity,@RequestParam("proid")int proid)
	{
		
		
		ModelAndView mv=new ModelAndView();
		daoc.sendToCart(quantity, proid);
		return mv;
		
	}
}
