package com.mis.service;

/* 
 * 
 * @Author 동주
 * */
/*import java.util.ArrayList;*/
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.mis.domain.FileVO;
import com.mis.domain.NoticeVO;
import com.mis.persistence.NoticeDAO;

import com.mis.domain.SearchCriteria;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;

	/*
	 * @Inject private NoticeFileDAO fDao;
	 */

	@Override
	public void register(NoticeVO vo) throws Exception {

		// 1. 텍스트에어리어 줄바꿈 적용
		vo.setNoticeContent(vo.getNoticeContent().replace("\\r\\n", "<br>"));

		// 2. 기본 신청 내역 등록 (파일 등록 x) -> 등록된 신청내역의 PK 가져오기
		int noticeNum = dao.create(vo);
		System.out.println("noticeNum  =====> " + noticeNum);

		// 4. 추가 이미지 존재 여부 IF문
		if (vo.getFiles() != null) {

			// 4. 추가 이미지 저장 FOR문
			for (int i = 0; i < vo.getFiles().length; i++) {

				// 4-1.추가 이미지 저장

				FileVO fVo = new FileVO();
				fVo.setNoticeNum(noticeNum);
				fVo.setFileName(vo.getFiles()[i]);

				System.out.println("FileVO: " + fVo.toString());

				// 4-2.추가 이미지 저장
				dao.insertFile(fVo);

			}
		}
	}

	@Transactional
	@Override
	public void modify(NoticeVO vo) throws Exception {
		dao.update(vo);

		//1) 공지사항 수정
		dao.update(vo);

		//2) 기존 첨부파일 삭제
		dao.deleteFile(vo.getNoticeNum());

		// 3) 공지사항 파일 첨부 -> 존재 여부 IF문
		if (vo.getFiles() != null) {

			// 3-1) 공지사항 파일 첨부 FOR문
			for (int i = 0; i < vo.getFiles().length; i++) {

				// 3-2) 추가 이미지 저장

				FileVO fVo = new FileVO();
				fVo.setNoticeNum(vo.getNoticeNum());
				fVo.setFileName(vo.getFiles()[i]);

				System.out.println("fVo : " + fVo.toString());

				// 4-2.추가 이미지 저장
				dao.insertFile(fVo);
			}
		}
	}

	@Override
	public void remove(int noticeNum) throws Exception {
		dao.delete(noticeNum);

	}

	@Override
	public List<NoticeVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public NoticeVO read(int noticeNum) throws Exception {
		System.out.println("=======================noticeCount");
		dao.noticeCount(noticeNum);
		return dao.read(noticeNum);
	}

	@Override
	public List<FileVO> fileList(int noticeNum) throws Exception {
		return dao.list(noticeNum);
	}

}
