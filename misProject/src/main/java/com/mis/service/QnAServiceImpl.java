package com.mis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mis.domain.FileVO;
import com.mis.domain.QnAVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.QnACommentDAO;
import com.mis.persistence.QnADAO;

@Service
public class QnAServiceImpl implements QnAService {

	@Inject
	private QnADAO dao;
	
	@Inject
	private QnACommentDAO comtdao;

	@Override
	public void create(QnAVO vo) throws Exception {

		// 1. 텍스트에어리어 줄바꿈 적용
		vo.setContent(vo.getContent().replace("\\r\\n", "<br>"));

		// 2. 기본 신청 내역 등록 (파일 등록 x) -> 등록된 신청내역의 PK 가져오기
		int qnaNum = dao.create(vo);

		System.out.println("qnaNum  =====> " + qnaNum);

		// 4. 추가 이미지 존재 여부 IF문
		if (vo.getFiles() != null) {

			// 4. 추가 이미지 저장 FOR문
			for (int i = 0; i < vo.getFiles().length; i++) {

				// 4-1.추가 이미지 저장

				FileVO fVo = new FileVO();
				fVo.setqNum(qnaNum);
				fVo.setFileName(vo.getFiles()[i]);

				System.out.println("FileVO: " + fVo.toString());

				// 4-2.추가 이미지 저장
				dao.insertFile(fVo);

			}
		}

	}

	@Override
	public QnAVO read(int qNum) throws Exception {
		return dao.read(qNum);
	}

	@Override
	public void update(QnAVO vo) throws Exception {

		// 1) 기존 첨부파일 삭제
		dao.deleteFile(vo.getqNum());

		// 2) QNA 파일 첨부 -> 존재 여부 IF문
		if (vo.getFiles() != null) {

			// 2-1) 공지사항 파일 첨부 FOR문
			for (int i = 0; i < vo.getFiles().length; i++) {

				// 2-2) 추가 이미지 저장
				FileVO fVo = new FileVO();
				fVo.setqNum(vo.getqNum());
				fVo.setFileName(vo.getFiles()[i]);

				System.out.println("fVo : " + fVo.toString());

				// 4-2.추가 이미지 저장
				dao.insertFile(fVo);
			}
		}

		// 3) QNA 수정
		dao.update(vo);

	}

	@Override
	public void delete(int qNum) throws Exception {
		//1) 댓글 삭제
		comtdao.deleteAll(qNum);
		
		//2) 첨부파일 삭제
		dao.deleteFile(qNum);
		
		//3)글 삭제
		dao.delete(qNum);
		

	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public List<QnAVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public List<FileVO> fileList(int qNum) throws Exception {
		return dao.list(qNum);
	}

}
