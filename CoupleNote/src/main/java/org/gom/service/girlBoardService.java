package org.gom.service;

import java.util.List;

import org.gom.domain.Criteria;
import org.gom.domain.girlVO;

public interface girlBoardService
{
	public void register(girlVO boy);
	
	public girlVO get(Long bno);
	
	public boolean modify(girlVO boy);
	
	public boolean remove(Long bno);
	
	public List<girlVO> getList();
	
	public List<girlVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
}
