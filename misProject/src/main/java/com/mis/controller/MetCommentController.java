package com.mis.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mis.domain.MetCommentVO;
import com.mis.service.MetCommentService;

/**
 * @author 김지훈
 */

@RestController
@RequestMapping("/coment")
public class MetCommentController {

	@Inject
	private MetCommentService mcservice;

	// 댓글 입력
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody MetCommentVO mcvo) {
		
		System.out.println("coments register =========> "+ mcvo);

		ResponseEntity<String> entity = null;
		try {
			mcservice.addMetComment(mcvo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		System.out.println("coments ===========> entity "+ entity);
		return entity;
	}

	@RequestMapping(value = "/all/{metBrdNum}", method = {RequestMethod.GET,RequestMethod.POST})
	public ResponseEntity<List<MetCommentVO>> list(@PathVariable("metBrdNum") int metBrdNum) {
		
		System.out.println("coments/all===========> " + metBrdNum);

		ResponseEntity<List<MetCommentVO>> entity = null;
		try {
			entity = new ResponseEntity<>(mcservice.listComment(metBrdNum), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		System.out.println("coments/all===========> entity " + entity);
		
		return entity;
	}

	@RequestMapping(value = "/{metComtNum}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	public ResponseEntity<String> update(@PathVariable("metComtNum") int metComtNum, @RequestBody MetCommentVO mcvo) {

		ResponseEntity<String> entity = null;
		try {
			mcvo.setMetComtNum(metComtNum);
			mcservice.modifyComment(mcvo);

			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/{metComtNum}", method =RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("metComtNum") int metComtNum) {
		
		System.out.println("coments remove =========> "+ metComtNum);

		ResponseEntity<String> entity = null;
		try {
			mcservice.removeComment(metComtNum);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}

/*
 * @RequestMapping(value = "", method = RequestMethod.POST) public
 * ResponseEntity<String> register(@ResponseBody MetCommentVO mcvo){
 * 
 * ResponseEntity<String> entity = null; try { mcservice.addMetComment(mcvo);
 * entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK); } catch
 * (Exception e) { e.printStackTrace(); entity = new
 * ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); } return
 * entity; }
 */