package org.gom.service;

import java.util.List;

import org.gom.domain.Criteria;
import org.gom.domain.girlVO;
import org.gom.mapper.girlMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class girlBoardServiceImpl implements girlBoardService
{
	@Setter(onMethod_ = @Autowired)
	private girlMapper girlmapper;
	
	@Override
	public void register(girlVO girl) 
	{
		girlmapper.insertSelectKey(girl);
	}

	@Override
	public girlVO get(Long bno) 
	{
		return girlmapper.read(bno);
	}

	@Override
	public boolean modify(girlVO girl) 
	{
		return 1 == girlmapper.update(girl);
	}

	@Override
	public boolean remove(Long bno) 
	{
		return 1 == girlmapper.delete(bno);
	}

	@Override
	public List<girlVO> getList() 
	{
		return girlmapper.getList();
	}
	
	@Override
	public List<girlVO> getListWithPaging(Criteria cri)
	{
		return girlmapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri)
	{
		return girlmapper.getTotalCount(cri);
	}
}
