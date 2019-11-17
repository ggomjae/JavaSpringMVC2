package org.gom.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/coupleNote")
public class loginController 
{
	@GetMapping("/login")
	public void loginPage(String error, String logout, Model model)
	{
		if(error != null)
		{
			model.addAttribute("error","login Error Check Your Account ! ");
		}
		
		if(logout != null)
		{	
			model.addAttribute("logout","Logout ! !");
		}
	}
	
	@GetMapping("/error")
	public void errorPage(Authentication auth, Model model)
	{
		model.addAttribute("msg","Error !");
	}
}
