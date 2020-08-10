package com.mis.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mis.domain.QnACommentVO;
import com.mis.service.QnACommentService;

@RestController
@RequestMapping("/coments")
public class QnACommentController {
	

		@Inject
		private QnACommentService qmservice;

		// 댓글 입력
		@RequestMapping(value = "", method = RequestMethod.POST)
		public ResponseEntity<String> register(@RequestBody QnACommentVO vo){
			
			System.out.println("coments register =========> "+ vo);

			ResponseEntity<String> entity = null;
			try {
				qmservice.addQnAComment(vo);
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
				
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
			
			System.out.println("coments ===========> entity "+ entity);
			return entity;
			
		}

		@RequestMapping(value = "/all/{qNum}", method = {RequestMethod.GET,RequestMethod.POST})
		public ResponseEntity<List<QnACommentVO>> list(@PathVariable("qNum") int qNum ) {
			
			System.out.println("coments/all===========> " + qNum);

			ResponseEntity<List<QnACommentVO>> entity = null;
			try {
				entity = new ResponseEntity<>(qmservice.listComment(qNum), HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			}
			
			System.out.println("coments/all===========> entity " + entity);
			
			
			return entity;
			
		}

		@RequestMapping(value = "/{qnaComtNum}", method = { RequestMethod.PUT, RequestMethod.PATCH })
		public ResponseEntity<String> update(@PathVariable("qnaComtNum") int qnaComtNum, @RequestBody QnACommentVO vo) {

			ResponseEntity<String> entity = null;
			try {
				vo.setQnaComtNum(qnaComtNum);//qnacomment 의 pk
				qmservice.modifyComment(vo);

				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
			return entity;
		}

		@RequestMapping(value = "/{qnaComtNum}", method =RequestMethod.DELETE)
		public ResponseEntity<String> remove(@PathVariable("qnaComtNum") int qnaComtNum) {
			
			System.out.println("coments remove =========> "+ qnaComtNum);

			ResponseEntity<String> entity = null;
			try {
				qmservice.removeComment(qnaComtNum);
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
			return entity;
		}

}
