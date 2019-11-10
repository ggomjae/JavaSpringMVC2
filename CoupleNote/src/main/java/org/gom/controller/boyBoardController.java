package org.gom.controller;

import org.gom.domain.boyVO;
import org.gom.service.boyBoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/board/boy/*")
public class boyBoardController
{
	private boyBoardService service;
	
	@GetMapping("/list")
	public void list(Model model)
	{
		model.addAttribute("list",service.getList());
	}
	
	@PostMapping("/register")
	public String register(boyVO boy, RedirectAttributes rttr)
	{
		service.register(boy);
		
		rttr.addFlashAttribute("result", boy.getBno());
		
		return "redirect:/board/boy/list";
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("bno") Long bno, Model model)
	{
		model.addAttribute("board", service.get(bno));
	}
	
	@PostMapping("/modify")
	public String modifiy(boyVO boy, RedirectAttributes rttr)
	{
		if(service.modify(boy))
		{
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/board/boy/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr)
	{
		if(service.remove(bno))
		{
			rttr.addFlashAttribute("result","sucess");
		}
		
		return "redirect:/board/boy/list";
	}
	
	
}
