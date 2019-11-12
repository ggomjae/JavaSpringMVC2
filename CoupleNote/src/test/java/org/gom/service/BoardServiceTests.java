package org.gom.service;

import static org.junit.Assert.assertNotNull;

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
public class BoardServiceTests
{
	@Setter(onMethod_ = {@Autowired})
	private boyBoardService service;

	@Test
	public void testRegister()
	{
		boyVO boy = new boyVO();
		boy.setTitle("새로 작성하는 글");
		boy.setContent("새로 작성하는 내용");
		boy.setWriter("띨띨이");
		
		service.register(boy);
		log.info("생성된 게시물의 번호:" + boy.getBno());
	}
	
	@Ignore
	@Test
	public void testGetList()
	{
		service.getList().forEach(girl -> log.info(girl));
	}
	
	@Ignore
	@Test
	public void testGet()
	{
		log.info(service.get(1L));
	}
	
	@Ignore
	@Test
	public void testDelete()
	{
		log.info("Result Remove" + service.remove(3L));
	}
	
	@Ignore
	@Test
	public void testUpdate()
	{
		boyVO boy = service.get(1L);
		
		log.info("Modify " + service.modify(boy));
	}
}