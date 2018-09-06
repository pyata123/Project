package com.sairam.niit1.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.ProductDao;
import com.sairam.niit1.model.Category;
import com.sairam.niit1.model.Product;

@Controller
public class ProductController
{
    @Autowired
    ProductDao dao;
    
    @RequestMapping("/product")
    public ModelAndView proInfo()
    {
    	
      ModelAndView mv1 = new ModelAndView("showproduct","pro",new Product());
      List proList1 =dao.getAllProducts();
      mv1.addObject("productInfo",proList1);
      return mv1;
    }
    @RequestMapping(value="/addProduct",method=RequestMethod.POST)
    public ModelAndView saveProduct(@ModelAttribute("pro") Product pro) throws IOException
   {
    	pro.setProid((int)(Math.random()*10000));
    	int id=pro.getProid();
MultipartFile image=pro.getImage();
        
        File file=new File("D:\\niit\\32bit\\eclipse\\dt12\\Sairam2\\src\\main\\webapp\\resources\\"+pro.getProid()+".jpg");
        
        //System.out.println(image.getClass().getName());
        FileOutputStream fos=new FileOutputStream(file);
        BufferedOutputStream bos=new BufferedOutputStream(fos);
        bos.write(image.getBytes());
       dao.insert(pro);
       List proList1 =dao.getAllProducts();
   ModelAndView mv=new ModelAndView("showproduct","productInfo",proList1);
   return mv;
   }
    @RequestMapping("/deleteProduct")
    public ModelAndView deleteProduct(@RequestParam("proId") int pro)
    {
       dao.deletepro(pro);
       List proList1 =dao.getAllProducts();
       
    ModelAndView mv=new ModelAndView("showproduct","pro",new Product());
    mv.addObject("productInfo",proList1);
    return mv;
    
    }
    @RequestMapping("/editProduct")
    public ModelAndView editProduct(@RequestParam("proId") int pro)
    {
     Product proe =dao.editpro(pro);
       List proList1 =dao.getAllProducts();
       
    ModelAndView mv=new ModelAndView("showproduct","pro",proe);
    mv.addObject("productInfo",proList1);
    return mv;
    
    }
    
}
