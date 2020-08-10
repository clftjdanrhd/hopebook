package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.mis.domain.BookBoardVO;
import com.mis.domain.BookVO;
import com.mis.domain.FileVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.BookBoardDAO;

@Service
public class BookBoardServiceImpl implements BookBoardService {

	@Inject
	private BookBoardDAO dao;

	@Override
	public void insert(BookBoardVO vo) throws Exception {
		// 1. 텍스트에어리어 줄바꿈 적용
		vo.setBookBrdContent(vo.getBookBrdContent().replace("\\r\\n", "<br>"));

		// 2. 추가 이미지 존재 여부 IF문
		if (vo.getFiles() != null) {

			// 3. 추가 이미지 저장 FOR문
			for (int i = 0; i < vo.getFiles().length; i++) {
				vo.setImgPath(vo.getFiles()[i]);
			}

		}
		
		// 3.최종 이달의 책 등록
				int bookBrdNum = dao.create(vo);
				System.out.println("bookBrdNum  =====> " + bookBrdNum);

	}

	@Override
	public BookBoardVO read(int bookBrdNum) throws Exception {

		return dao.read(bookBrdNum);
	}

	@Override
	public void modify(BookBoardVO vo) throws Exception {
		dao.update(vo);

		// 1. 텍스트에어리어 줄바꿈 적용
		vo.setBookBrdContent(vo.getBookBrdContent().replace("\\r\\n", "<br>"));

		int bookBrdNum = dao.update(vo);

		// 4. 추가 이미지 존재 여부 IF문
		if (vo.getFiles() != null) {

			// 4. 추가 이미지 저장 FOR문
			for (int i = 0; i < vo.getFiles().length; i++) {

				// 4-1.추가 이미지 저장
				FileVO fVo = new FileVO();
				fVo.setbookBrdNum(bookBrdNum);
				fVo.setFileName(vo.getFiles()[i]);

				System.out.println("fVo : " + fVo.toString());

				// 4-2.추가 이미지 저장
				dao.insertFile(fVo);

			}
		}

	}

	@Override
	public void remove(int bookBrdNum) throws Exception {
		dao.delete(bookBrdNum);
	}

	@Override
	public List<BookBoardVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public List<FileVO> fileList(int bookBrdNum) throws Exception {
		return dao.list(bookBrdNum);

	}

	@Override
	public void deleteFile(int bookBrdNum) throws Exception {
		dao.delete(bookBrdNum);
	}

	@Override
	public List<BookVO> searchBook(String bookTitle) throws Exception {
		return dao.searchBook(bookTitle);
	}

	@Override
	public List<BookVO> bookList() throws Exception {
		return dao.bookList();
	}

	@Override
	public List<BookBoardVO> mainList() throws Exception {
		return dao.mainList();
	}

	@Override
	public BookBoardVO mainRead(int bookBrdNum) throws Exception {
		return dao.mainRead(bookBrdNum);
	}

	/*
	 * 
	 * @Override public List<BookVO> bookList() throws Exception { return
	 * dao.bookList(); }
	 */

}
