package com.sairam.niit1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.SupplierDao;
import com.sairam.niit1.model.Supplier;


@Controller
public class SupplierController {
	
	@Autowired
	SupplierDao supplierdao;
	@RequestMapping("/supplier")
	public ModelAndView m1()
	{
		ModelAndView mv= new ModelAndView("showsupplier","sup",new Supplier());
		List supList=supplierdao.getAllSupplier();
		mv.addObject("supInfo",supList);
		return mv;
	}
	@RequestMapping("/addSupplier")
	public ModelAndView saveProduct(@ModelAttribute("sup") Supplier sup)
	{
	   supplierdao.insert(sup); 
	   List supList=supplierdao.getAllSupplier();
	ModelAndView mv=new ModelAndView("showsupplier","supInfo",supList);
	return mv;
	}
	@RequestMapping("/deleteSupplier")
	public ModelAndView deleteCategory(@RequestParam("supid")int supplierid)
	{
		supplierdao.deleteSup(supplierid);
		  List supList=supplierdao.getAllSupplier();
		  ModelAndView mv=new ModelAndView("showsupplier","sup",new Supplier());
			mv.addObject("supInfo",supList);

		return mv;
	}
	@RequestMapping("/editSupplier")
	public ModelAndView editProduct(@RequestParam("supid")int supplierid)
	{
	Supplier	sup=supplierdao.editSup(supplierid);
		  List supList=supplierdao.getAllSupplier();
		  ModelAndView mv=new ModelAndView("showsupplier","sup",sup);
			mv.addObject("supInfo",supList);

		return mv;
	}
}