package org.gom.service;

import java.util.List;

import org.gom.domain.personVO;
import org.gom.mapper.girlMapper;
import org.gom.mapper.personMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class personServiceImpl implements personService{

	@Setter(onMethod_ = @Autowired)
	private personMapper personmapper;
	
	public List<personVO> getFeeling()
	{
		return personmapper.getFeeling();
	}
}
