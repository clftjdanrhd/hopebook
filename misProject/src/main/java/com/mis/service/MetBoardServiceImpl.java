package com.mis.service;

/*import java.util.ArrayList;*/
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
/*import org.springframework.transaction.annotation.Transactional;*/
import org.springframework.transaction.annotation.Transactional;

import com.mis.domain.FileVO;
import com.mis.domain.MetBoardVO;
import com.mis.domain.SearchCriteria;
import com.mis.persistence.MetBoardDAO;
import com.mis.persistence.MetCommentDAO;

/**
 * @author 김지훈
 */

@Service
public class MetBoardServiceImpl implements MetBoardService {

	@Inject
	private MetBoardDAO dao;

	@Inject
	private MetCommentDAO cdao;

	@Override
	public void register(MetBoardVO mvo) throws Exception {
		// 1. 텍스트에어리어 줄바꿈 적용
		mvo.setMetBrdContent(mvo.getMetBrdContent().replace("\\r\\n", "<br>"));

		// 2. 기본 신청 내역 등록 (파일 등록 x) -> 등록된 신청내역의 PK 가져오기
		int metBrdNum = dao.create(mvo);
		System.out.println("metBrdNum  =====> " + metBrdNum);

		// 4. 추가 이미지 존재 여부 IF문
		if (mvo.getFiles() != null) {

			// 4. 추가 이미지 저장 FOR문
			for (int i = 0; i < mvo.getFiles().length; i++) {

				// 4-1.추가 이미지 저장
				FileVO fVo = new FileVO();
				fVo.setMetBrdNum(metBrdNum);
				fVo.setFileName(mvo.getFiles()[i]);

				System.out.println("FileVO: " + fVo.toString());

				// 4-2.추가 이미지 저장
				dao.insertFile(fVo);

			}
		}

	}

	@Override
	public MetBoardVO read(int metBrdNum) throws Exception {
		dao.updateMetBrdCount(metBrdNum);
		return dao.read(metBrdNum);
	}

	@Transactional
	@Override
	public void modify(MetBoardVO mvo) throws Exception {

		// 1) 기존 첨부파일 삭제
		dao.deleteFile(mvo.getMetBrdNum());

		// 2) 모임 파일 첨부 -> 존재 여부 IF문
		if (mvo.getFiles() != null) {

			// 2-1) 모임 파일 첨부 FOR문
			for (int i = 0; i < mvo.getFiles().length; i++) {

				// 2-2) 추가 이미지 저장

				FileVO fVo = new FileVO();
				fVo.setMetBrdNum(mvo.getMetBrdNum());
				fVo.setFileName(mvo.getFiles()[i]);
				System.out.println("fVo : " + fVo.toString());
				// 4-2.추가 이미지 저장
				dao.insertFile(fVo);
			}
		}

		// 3) 공지사항 수정
		dao.update(mvo);
	}

	@Override
	public void remove(int metBrdNum) throws Exception {

		// 게시글에 있는 댓글 삭제 후 게시글 삭제 진행
		// 1) 댓글 삭제 deleteAll(dao) -> .deleteAll(mapper)

		// 2)
		cdao.deleteAll(metBrdNum);
		dao.delete(metBrdNum);

	}

	@Override
	   public List<MetBoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
	      return dao.listSearch(cri);
	   }

	   @Override
	   public int listSearchCount(SearchCriteria cri) throws Exception {
	      return dao.listSearchCount(cri);
	   }

	@Override
	public List<FileVO> fileList(int metBrdNum) throws Exception {
		return dao.list(metBrdNum);
	}

}
