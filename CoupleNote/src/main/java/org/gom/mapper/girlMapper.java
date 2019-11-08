package org.gom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.gom.domain.girlVO;

public interface girlMapper 
{
	@Select("select * from girl_board where bno > 0")
	public List<girlVO> getList();
}
