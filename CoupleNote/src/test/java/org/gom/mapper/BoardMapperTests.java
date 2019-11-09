package org.gom.mapper;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.gom.domain.boyVO;
import org.gom.domain.girlVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests 
{
	@Setter(onMethod_ = @Autowired)
	private girlMapper mapper;
	
	@Ignore
	@Test
	public void testGetList()
	{
		mapper.getList().forEach(board->log.info(board));
	}
	
	@Ignore
	@Test
	public void testInsert()
	{
		girlVO board = new girlVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setWriter("띨띨이");
		
		mapper.insert(board);
		
		log.info(board);
	}
	
	@Ignore
	@Test
	public void testInsertSelectKey()
	{
		girlVO board = new girlVO();
		board.setTitle("새로 작성하는 글 select key");
		board.setContent("새로 작성하는 내용 select key");
		board.setWriter("띨띨이");
		
		mapper.insert(board);
		
		log.info(board);
	}
	
	@Ignore
	@Test
	public void testRead()
	{
		girlVO board = mapper.read(1L);
		
		log.info(board);
	}
	
	@Ignore
	@Test
	public void testDelete()
	{
		log.info(mapper.delete(3L));
	}
	
	@Ignore
	@Test
	public void testUpdate()
	{
		girlVO board = new girlVO();
		board.setBno(1L);
		board.setTitle("수정된 제목");
		board.setContent("수정된 내용");
		board.setWriter("뚱바");
		
		int count = mapper.update(board);
		log.info("UPDATE COUNT: " + count);
	}
}