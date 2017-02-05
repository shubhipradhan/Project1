package com.akiraE.AkiraF.controller;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AkiraController {

	
	
	@RequestMapping(value={"/homePage","/"})
	public String homePagePage(){
		return "homePage";
	}
	
	@RequestMapping("/about")
	public String aboutPage(){
		return "about";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginPage()
	{
		return "login";
	}
	
	@RequestMapping("/admin")
	public String adminPage()
	{
		return "admin";
	}
	
	@RequestMapping(value="/authfailure",method=RequestMethod.GET)
	public String accessDeniedPage()
	{
		return "accessDenied";
	}
}
