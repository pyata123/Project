package com.sairam.niit1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.ProductDao;
import com.sairam.niit1.model.Product;



@Controller
public class BasicController {
	@Autowired
	ProductDao productdao;
@RequestMapping("/adminhome")
public String m1()
{
	return "adminhome";
}
@RequestMapping("/user")
public ModelAndView user()
{
	
	  List proList=productdao.getAllProducts();
	  System.out.println(proList);
	ModelAndView modelAndView=new ModelAndView("user","productInfo",proList);
	
	return modelAndView;

}
@RequestMapping("/displayProduct")
public ModelAndView diplayProduct(@RequestParam("proid")int productid)
{ 
	Product	prod=productdao.displayProduct(productid);
	ModelAndView modelAndView=new ModelAndView("displayProduct","pro",prod);
	return modelAndView;
}
}