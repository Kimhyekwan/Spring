package kr.co.ezen.entity;

import lombok.Data;

@Data
public class Criteria {
	private int page; //현재 페이지번호
	private int perPageNum; //한 페이지에 보여줄 게시글 개수
	
	
	
	public Criteria() {
		this.page=1;
		this.perPageNum=5;
	}
	
	//현재 페이지에 게시글시작번호
	
	public int getPageStart() {
		return (page-1)*perPageNum; //1~10 1
	}
}
