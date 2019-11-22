package org.gom.mapper;

import java.util.List;

import org.gom.domain.personVO;

public interface personMapper {
	
	public List<personVO> getFeeling();
	
	public int update(personVO person);
}
