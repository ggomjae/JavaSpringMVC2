package org.gom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.gom.domain.boyVO;

public interface boyMapper 
{
	public List<boyVO> getList();
	
	public void insert(boyVO boy);
	
	public void insertSelectKey(boyVO boy);
	
	public boyVO read(Long bno);
	
	public int delete(Long bno);

	public int update(boyVO boy);
}
