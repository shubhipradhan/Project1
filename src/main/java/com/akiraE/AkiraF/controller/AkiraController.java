package com.akiraE.AkiraF.controller;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


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
	
	@RequestMapping("/login")
	public String loginPage(){
		return "login";
	}

}
