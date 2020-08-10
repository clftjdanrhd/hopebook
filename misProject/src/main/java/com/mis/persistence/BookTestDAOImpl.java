package com.mis.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BookTestDAOImpl implements BookTestDAOTest {



   @Inject
   private SqlSession session;
   private static String namespace = "com.mis.mapper.BookTestMapper";


   @Override
   public String test() throws Exception {
       return session.selectOne(namespace + ".test");
   }



}
