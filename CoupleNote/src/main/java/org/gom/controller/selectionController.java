package org.gom.controller;

import org.gom.service.boyBoardService;
import org.gom.service.personService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/selection")
public class selectionController
{
	private personService service;
	
	@GetMapping("/gender")
	public void gender(Model model)
	{
		model.addAttribute("personStatus",service.getFeeling());
	}
}
