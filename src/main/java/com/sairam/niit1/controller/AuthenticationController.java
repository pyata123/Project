package com.sairam.niit1.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sairam.niit1.dao.RegisterDao;
import com.sairam.niit1.dao.loginDao;
import com.sairam.niit1.model.Register;



@Controller
public class AuthenticationController {
	@Autowired
	RegisterDao registerdao;
	@Autowired
	loginDao logindao;
@RequestMapping("/register")
	public ModelAndView register()
{
ModelAndView mv=new ModelAndView("register","register",new Register());
return mv;
}
@RequestMapping("/registerUser")
public ModelAndView registerUser(@ModelAttribute("register") Register reg)
{
	registerdao.registerUser(reg);
ModelAndView mv=new ModelAndView("home");
return mv;
}
@RequestMapping("/login")
public ModelAndView loginUser()
{
	ModelAndView mv=new ModelAndView("login");
	return mv;
}
//@RequestMapping("/checkLogin")
public ModelAndView checkLogin(@RequestParam("email")String email,@RequestParam("password")String password)
{
	logindao.loginCheck(email, password);
	ModelAndView mv=new ModelAndView("login");
	return mv;
	
}
@RequestMapping("/LoginError" )
		public ModelAndView goLoginError()
		{
	
			return new ModelAndView("LoginError");
			
		}
@SuppressWarnings("unchecked")
@RequestMapping(value = "/login_session_attributes")
public String login_session_attributes(HttpSession session,Model model) {
 System.out.println("email ========");
    String email = SecurityContextHolder.getContext().getAuthentication().getName();
   System.out.println("email ========"+email);
    Register  user = registerdao.getUser(email);
    System.out.println("username ========"+user.getRole());
    session.setAttribute("userId", user.getUserName());
    session.setAttribute("name", user.getPassword());
    
    session.setAttribute("LoggedIn", "true");
    
    
     //session.setAttribute("cartcnt",count);
    Collection<GrantedAuthority> authorities;
    authorities= (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
    String page="";
    String role="ROLE_USER";
    for (GrantedAuthority authority : authorities)
    {
      
         if (authority.getAuthority().equals(role))
         {
             session.setAttribute("UserLoggedIn", true);
             session.setAttribute("UserName", user.getEmail());
         page="/home";
             session.setAttribute("test",1);
            
         }
         else
         {
             session.setAttribute("Administrator",true);
             //session.setAttribute("UserName", user.getUsername());
             page="/adminhome";
        
        }
    }
    return page;
}
	
}
