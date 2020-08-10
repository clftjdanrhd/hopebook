package com.mis.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.mis.domain.ProductVO;
import com.mis.persistence.ProductDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})

public class ProductDAOTest {

	@Inject
	private ProductDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(ProductDAOTest.class);
	
	@Test
	public void testCreate() throws Exception{
		ProductVO product = new ProductVO();
		product.setTitle("새로운 글을 넣습니다");
		product.setPrice("1000");
		product.setContent("새로운 글을 넣습니다.");
		product.setWriter("user00");
		dao.create(product);
	}
	
	
	@Test
	public void testRead() throws Exception{
		logger.info(dao.read(1).toString());
	}
	

	@Test
	public void testUpdate() throws Exception{
		ProductVO product = new ProductVO();
		product.setPno(1);
		product.setTitle("수정된 글입니다.");
		product.setPrice("3000");
		product.setContent("수정테스트");
		dao.update(product);
	}
	
	@Test
	public void testDelte() throws Exception{
		dao.delete(1);
	}
	
	@Test
	public void testURI() throws Exception {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.path("/product/read")
				.queryParam("pno", 8)
				.queryParam("perPageNum", 10)
				.build();
		
		logger.info("/board/read?pno=126perPageNum=20");
		
		logger.info("===============================");
		logger.info(uriComponents.toString());
		

	}
	
	
}
