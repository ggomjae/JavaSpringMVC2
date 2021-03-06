package org.gom.controller;

import org.gom.domain.Criteria;
import org.gom.domain.PageDTO;
import org.gom.domain.boyVO;
import org.gom.domain.girlVO;
import org.gom.service.girlBoardService;
import org.gom.service.personService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/board/girl/")
public class girlBoardController 
{
	private girlBoardService service;
	
	private personService personservice;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model)
	{
		int total = service.getTotal(cri);
		
		model.addAttribute("person", personservice.getFeeling());
		model.addAttribute("list",service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri,total));
	}
	
	@GetMapping("/register")
	public void register(Model model)
	{
		//
	}
	
	@PostMapping("/register")
	public String register(girlVO girl, RedirectAttributes rttr)
	{
		service.register(girl);
		
		rttr.addFlashAttribute("result", girl.getBno());
		
		return "redirect:/board/girl/list";
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model)
	{
		model.addAttribute("board", service.get(bno));
	}
	
	@PostMapping("/modify")
	public String modifiy(girlVO girl, RedirectAttributes rttr)
	{
		if(service.modify(girl))
		{
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/board/girl/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr)
	{
		if(service.remove(bno))
		{
			rttr.addFlashAttribute("result","sucess");
		}
		
		return "redirect:/board/girl/list";
	}
}
