package com.mis.web;

 

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mis.persistence.BookTestDAOTest;


 

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyBatisTest {
    
        @Inject
        private SqlSessionFactory sqlFactory;
        
        @Inject
        private BookTestDAOTest dao;
        
        @Test
        public void testFactory() {
            
            System.out.println("JUNIT Factory: " + sqlFactory);
        }
        
        @Test
        public void testSession() throws Exception {
            try (SqlSession session = sqlFactory.openSession()){
                System.out.println("JUNIT session:" + session);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        
        @Test
        
        public void testTime()throws Exception{
            
            System.out.println(dao.test());
            
        }
        
}