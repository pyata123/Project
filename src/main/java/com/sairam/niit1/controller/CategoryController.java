package com.sairam.niit1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.CategoryDao;
import com.sairam.niit1.model.Category;

@Controller
public class CategoryController 
{

    @Autowired
    CategoryDao cdao;
    
@RequestMapping("/category")
public ModelAndView m1()
{
    ModelAndView mv1= new ModelAndView("showcategory","cate",new Category());
    List catList1 =cdao.getAllCategory();
    mv1.addObject("catInfo",catList1);
    return mv1;
}
@RequestMapping(value="/addCategory",method=RequestMethod.POST )
public ModelAndView saveCategory(@ModelAttribute("cate") Category cat)
{
   cdao.insert(cat);
   List catList1 =cdao.getAllCategory();
   
ModelAndView mv=new ModelAndView("showcategory","catInfo",catList1);
return mv;
}
@RequestMapping("/deleteCategory")
public ModelAndView deleteCategory(@RequestParam("catId") int cat)
{
   cdao.deletecat(cat);
   List catList1 =cdao.getAllCategory();
   
ModelAndView mv=new ModelAndView("showcategory","cate",new Category());
mv.addObject("catInfo",catList1);
return mv;
}
@RequestMapping("/editCategory")
public ModelAndView editCategory(@RequestParam("catId") int cat)
{
 Category cate= cdao.editcat(cat);
   List catList1 =cdao.getAllCategory();
   
ModelAndView mv=new ModelAndView("showcategory","cate", cate);
mv.addObject("catInfo",catList1);
return mv;
}
}