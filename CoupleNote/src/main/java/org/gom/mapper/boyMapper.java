package org.gom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.gom.domain.boyVO;

public interface boyMapper 
{
	@Select("select * from boy_board where bno > 0")
	public List<boyVO> getList();

}
