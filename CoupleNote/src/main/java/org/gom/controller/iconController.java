package org.gom.controller;

import org.gom.domain.personVO;
import org.gom.service.personService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@AllArgsConstructor
public class iconController {
	
	private personService service;
	
	@PostMapping(value = "/test", 
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> test(@RequestBody personVO vo)
	{
		log.info(vo);
		
		int tempNumber = vo.getFeeling();
		tempNumber %= 3;
		
		vo.setFeeling(++tempNumber);
		
		return  service.modify(vo) == true
				? new ResponseEntity<>("success",HttpStatus.OK)
			    : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
