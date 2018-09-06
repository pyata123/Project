package com.sairam.niit1.controller;

import java.util.List;

import org.hibernate.loader.custom.Return;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.ProductDaoImpl;
import com.sairam.niit1.model.Product;

@Controller
public class BasicController 
{
	@Autowired
	 ProductDaoImpl dao;
    @RequestMapping("/home")
	public ModelAndView m1() 
	{
  
   Product p=new Product();
    p.setProname("laptop");
    p.setProid(10);
    ModelAndView mv= new ModelAndView("pro","v1",p);
return mv;
}
@RequestMapping("/index")
public String admin() 
{
return "index";
}
@RequestMapping("/user")
public ModelAndView mv()
{

    List proList1 =dao.getAllProducts();
	ModelAndView mv=new ModelAndView("user","productInfo",proList1);
	
return mv;	
}
@RequestMapping("/displayProduct")
public ModelAndView displayProduct(@RequestParam("proId")int productid)
{
	Product prod=dao.displayProduct(productid);
	ModelAndView mv=new ModelAndView("displayProduct","pro",prod);
	return mv;
}

}