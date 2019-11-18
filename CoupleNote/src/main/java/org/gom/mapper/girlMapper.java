package org.gom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.gom.domain.girlVO;

public interface girlMapper 
{
	public List<girlVO> getList();
	
	public List<girlVO> getListWithPaging();
	
	public void insert(girlVO girl);
	
	public void insertSelectKey(girlVO girl);
	
	public girlVO read(Long bno);
	
	public int delete(Long bno);
	
	public int update(girlVO girl);
}
