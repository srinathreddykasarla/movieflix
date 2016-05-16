package io.egen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import io.egen.entity.Admin;
import io.egen.entity.BrowseList;
import io.egen.entity.User;
import io.egen.service.AdminService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("personObj")
public class AdminController {

	@Autowired
	private AdminService service;
	
	
	@RequestMapping(value="/adminlogin", method=RequestMethod.GET)
	public ModelAndView login(HttpSession session) {
		ModelAndView view = new ModelAndView("admin/login");
		Admin a = (Admin) session.getAttribute("admin");
		if(a!=null){
			if(!service.validate(a)){
				return new ModelAndView("admin/login");
			}
			else{
				view.setViewName("admin/workspace");
			}
		}
		return view;
	}
	
	@RequestMapping(value ="/admin", method = RequestMethod.GET)
	 public String  admin(@Validated @ModelAttribute User user, BindingResult bindingresult,HttpSession session ) {	
		return "admin/login";
	 }
	
	 @RequestMapping(value ="/adminlogin", method = RequestMethod.POST)
	 public String  doLogin(@Validated @ModelAttribute Admin admin, BindingResult bindingresult,HttpSession session ) {
		 if(!bindingresult.hasErrors()){
			 if(!service.validate(admin)){
				return "admin/incorrectlogin";
			 }
			 else{
				 admin = service.getdetails(admin);
	             session.setAttribute("admin", admin); 
	             return "admin/workspace";
	        }
		 }
		 return "redirect:/admin";
	 }
	 
	 @RequestMapping(value="/addTitle", method=RequestMethod.GET)
		public ModelAndView addTitle(HttpSession session) {
			ModelAndView view = new ModelAndView("redirect:/admin");
			Admin a = (Admin) session.getAttribute("admin");
			if(a!=null){
				if(!service.validate(a)){
					return new ModelAndView("redirect:/admin");
				}
				else{
					view.setViewName("admin/addTitle");
				}
			}
			return view;
	 }
	 
	 @RequestMapping(value="/addTitle", method=RequestMethod.POST)
		public ModelAndView addTitle1(@ModelAttribute BrowseList bl, HttpSession session) {
			ModelAndView view = new ModelAndView("redirect:/admin");
			Admin a = (Admin) session.getAttribute("admin");
			if(a!=null){
				if(!service.validate(a)){
					return new ModelAndView("redirect:/admin");
				}
				else{
					service.addTitle(bl);
					view.addObject("new", bl);
					view.setViewName("admin/success");
				}
			}
			return view;
	 }
	 
	 @RequestMapping(value="/editTitle", method=RequestMethod.GET)
		public ModelAndView editTitle(HttpSession session) {
			ModelAndView view = new ModelAndView("redirect:/admin");
			Admin a = (Admin) session.getAttribute("admin");
			if(a!=null){
				if(!service.validate(a)){
					return new ModelAndView("redirect:/admin");
				}
				else{
					view.setViewName("admin/editTitle");
				}
			}
			return view;
	 }
	 
	 @RequestMapping(value="/editTitle", method=RequestMethod.POST)
		public ModelAndView editTitle1(@RequestParam("attName") String attName, @RequestParam("attVal") String attVal,@RequestParam("imdbId") String imdbId,HttpSession session) {
			ModelAndView view = new ModelAndView("login/login");
			Admin a = (Admin) session.getAttribute("admin");
			if(a!=null){
				if(!service.validate(a)){
					return new ModelAndView("redirect:/admin");
				}
				else{
					service.editTitle(attName,attVal,imdbId);
					view.setViewName("admin/success");
				}
			}
			return view;
		}

	 
	 @RequestMapping(value="/deleteTitle", method=RequestMethod.GET)
		public ModelAndView deleteTitle(HttpSession session) {
			ModelAndView view = new ModelAndView("redirect:/admin");
			Admin a = (Admin) session.getAttribute("admin");
			if(a!=null){
				if(!service.validate(a)){
					return new ModelAndView("redirect:/admin");
				}
				else{
					view.setViewName("admin/deleteTitle");
				}
			}
			return view;
	 }
	 
	 @RequestMapping(value="/deleteTitle", method=RequestMethod.POST)
		public ModelAndView deleteTitle(@RequestParam("imdbId") String imdbId,HttpSession session) {
			ModelAndView view = new ModelAndView("login/login");
			Admin a = (Admin) session.getAttribute("admin");
			if(a!=null){
				if(!service.validate(a)){
					return new ModelAndView("redirect:/admin");
				}
				else{
					service.deleteTitle(imdbId);
					view.setViewName("admin/success");
				}
			}
			return view;
		}
	 
	 
	 @RequestMapping("/adminlogout")
     public String logout(HttpSession session ) {
        session.invalidate();
        return "redirect:/admin";
	 }
	
}
