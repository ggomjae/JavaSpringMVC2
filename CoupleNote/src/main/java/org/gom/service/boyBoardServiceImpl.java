package org.gom.service;

import java.util.List;

import org.gom.domain.boyVO;
import org.gom.mapper.boyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class boyBoardServiceImpl implements boyBoardService 
{
	@Setter(onMethod_ = @Autowired )
	private boyMapper boymapper;
	
	@Override
	public void register(boyVO boy)
	{
		boymapper.insertSelectKey(boy);
	}

	@Override
	public boyVO get(Long bno) 
	{	
		return boymapper.read(bno);
	}

	@Override
	public boolean modify(boyVO boy)
	{
		return 1 == boymapper.update(boy);
	}

	@Override
	public boolean remove(Long bno) 
	{	
		return 1 == boymapper.delete(bno);
	}

	@Override
	public List<boyVO> getList()
	{
		return boymapper.getList();
	}

}
