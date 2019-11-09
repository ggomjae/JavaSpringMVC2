package org.gom.service;

import java.util.List;

import org.gom.domain.boyVO;

public interface boyBoardService 
{
	public void register(boyVO boy);
	
	public boyVO get(Long bno);
	
	public boolean modify(boyVO boy);
	
	public boolean remove(Long bno);
	
	public List<boyVO> getList();
}
