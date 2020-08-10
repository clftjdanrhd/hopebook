package com.mis.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class Paging {
	private int totalCount; // 占쎌읈筌ｏ옙 野껊슣�뻻疫뀐옙占쎌벥 揶쏉옙占쎈땾
	private int startPage;// 占쎈뻻占쎌삂占쎈읂占쎌뵠筌욑옙
	private int endPage;// �넫�굝利븝옙�읂占쎌뵠筌욑옙
	private boolean prev;// 占쎌뵠占쎌읈 占쎈읂占쎌뵠筌욑옙嚥∽옙 揶쏉옙占쎈뮉 野껉퍔�뵠 占쎌뿳占쎈뮉筌욑옙 占쎈씨占쎈뮉筌욑옙(甕곌쑵�뱣占쎌뱽 占쎄문占쎄쉐占쎈막筌욑옙 筌띾Ŋ占�)
	private boolean next;// 占쎈뼄占쎌벉 占쎈읂占쎌뵠筌욑옙嚥∽옙 揶쏉옙占쎈뮉 野껉퍔�뵠 占쎌뿳占쎈뮉筌욑옙 占쎈씨占쎈뮉筌욑옙(甕곌쑵�뱣占쎌뱽 占쎄문占쎄쉐占쎈막筌욑옙 筌띾Ŋ占�)

	private int displayPageNum = 10;// 筌뤿돂而삼옙�벥 占쎌뵥占쎈쑔占쎈뮞嚥∽옙 癰귣똻肉т틠�눖源�

	private Criteria cri;
	
	public Criteria getCri() {
		return cri;
	}



	public void setCri(Criteria cri) {
		this.cri = cri;
	}




	public int getTotalCount() {
		return totalCount;
	}



	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcDate();
	}

	private void calcDate() {
		endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);

		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
		
		
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;

		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;

	}

	/**
	 * 占쎈읂占쎌뵠筌욑옙 占쎌젟癰귨옙 占쎌�筌욑옙�몴占� 占쎌맄占쎈립 �뜎�눖�봺 占쎈뮞占쎈뱜筌랃옙 筌띾슢諭억옙堉긴틠�눖�뮉 method
	 * @param page
	 * @return
	 */
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.build();
		
		return uriComponents.toString();
	}
	
	/**
	 * 占쎈읂占쎌뵠筌욑옙,野껓옙占쎄퉳 占쎌젟癰귨옙 占쎌�筌욑옙�몴占� 占쎌맄占쎈립 �뜎�눖�봺 占쎈뮞占쎈뱜筌랃옙 筌띾슢諭억옙堉긴틠�눖�뮉 method
	 * @param page
	 * @return
	 */
	
	public String makeSearch(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", cri.getPerPageNum())
				.queryParam("searchType", ((SearchCriteria) cri).getSearchType()) /*占쎌쁽占쎈뻼 占쎌뒄占쎈꺖�몴占� �뜮�슢�젻占쎌궞 占쎈름 占쎌굨癰귨옙占쎌넎 筌뤿굞�뻻占쎈퉸餓μ꼷鍮욑옙釉�.(占쎈씨占쎈뮉椰꾬옙 �뜮�슢�젻占쎌궎疫뀐옙 占쎈뻘�눧紐꾨퓠)*/
				.queryParam("keyword", encoding(((SearchCriteria) cri).getKeyword()))
				.build();
			
		
		return uriComponents.toString();
	}	
	
	private String encoding(String keyword) {
		if(keyword == null || keyword.trim().length()==0) {
			return "";
			
		}
		
		try {
			return URLEncoder.encode(keyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			return "";
		}
	}
	
	



	public int getStartPage() {
		return startPage;
	}



	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}



	public int getEndPage() {
		return endPage;
	}



	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}



	public boolean isPrev() {
		return prev;
	}



	public void setPrev(boolean prev) {
		this.prev = prev;
	}



	public boolean isNext() {
		return next;
	}



	public void setNext(boolean next) {
		this.next = next;
	}



	public int getDisplayPageNum() {
		return displayPageNum;
	}



	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}




	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}

	}

