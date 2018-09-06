package com.sairam.niit1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.SupplierDao;
import com.sairam.niit1.model.Category;
import com.sairam.niit1.model.Supplier;

@Controller
public class SupplierController
{
    
    @Autowired
    SupplierDao sdao;
    @RequestMapping("/supplier")
    public ModelAndView m1()
    {
        ModelAndView mv1=new ModelAndView("showsupplier","sup",new Supplier());
        List supList1 =sdao.getAllSupplier();
        mv1.addObject("supInfo",supList1);
        return mv1;
    }
    @RequestMapping(value="/addSupplier",method=RequestMethod.POST)
    public ModelAndView saveSupplier(@ModelAttribute("sup") Supplier sup)
    {
       sdao.insert(sup);
       List supList1 =sdao.getAllSupplier();
    ModelAndView mv=new ModelAndView("showsupplier","supInfo",supList1);
    return mv;
    }
    @RequestMapping("/deleteSupplier")
    public ModelAndView deleteSupplier(@RequestParam("supId") int sup)
    {
       sdao.deletesup(sup);
       List supList1 =sdao.getAllSupplier();
       
    ModelAndView mv=new ModelAndView("showsupplier","sup",new Supplier());
    mv.addObject("supInfo",supList1);
    return mv;
    }
    @RequestMapping("/editSupplier")
    public ModelAndView editSupplier(@RequestParam("supId") int sup)
    {
     Supplier supe =sdao.editsup(sup);
       List supList1 =sdao.getAllSupplier();
       
    ModelAndView mv=new ModelAndView("showsupplier","sup",supe);
    mv.addObject("supInfo",supList1);
    return mv;
    }
}