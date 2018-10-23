package com.sairam.niit1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.CategoryDao;
import com.sairam.niit1.model.Category;



@Controller
public class CategoryController {
	
	@Autowired
	CategoryDao categorydao;
@RequestMapping("/categories")
public ModelAndView m1()
{
	ModelAndView modelAndView= new ModelAndView("showcategory","cat",new Category());
	  List catList=categorydao.getAllCategory();
			modelAndView.addObject("catInfo",catList);

	return modelAndView;
}
@RequestMapping("/addCategory")
public ModelAndView saveCategory(@ModelAttribute("cat") Category cat)
{
    categorydao.insert(cat);
    List catList=categorydao.getAllCategory();
ModelAndView modelAndView=new ModelAndView("showcategory","catInfo",catList);
return modelAndView;
}
@RequestMapping("/deleteCategory")
public ModelAndView deleteCategory(@RequestParam("catid")int categoryid)
{
	categorydao.deleteCat(categoryid);
	  List catList=categorydao.getAllCategory();
	  ModelAndView modelAndView=new ModelAndView("showcategory","cat",new Category());
		modelAndView.addObject("catInfo",catList);

	return modelAndView;
}
@RequestMapping("/editCategory")
public ModelAndView editCategory(@RequestParam("catid")int categoryid)
{
Category	cat=categorydao.editCat(categoryid);
	  List catList=categorydao.getAllCategory();
	  ModelAndView modelAndView=new ModelAndView("showcategory","cat",cat);
		modelAndView.addObject("catInfo",catList);

	return modelAndView;
}

}