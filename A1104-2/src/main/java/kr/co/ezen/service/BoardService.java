package kr.co.ezen.service;
import kr.co.ezen.entity.Member;
import kr.co.ezen.entity.User;
import kr.co.ezen.entity.mass;

import java.util.List;

import kr.co.ezen.entity.Board;
import kr.co.ezen.entity.Criteria;
import kr.co.ezen.entity.CryCry;

public interface BoardService {
	
	
	public Member login(Member vo);
	public void register(Board vo);
	public Board get(int idx);
	public void modify(Board vo);
	public void remove(int idx);
	public void replyPro(Board vo);
	public int totalCount();
	public List<mass> hkList(CryCry cri);
	public List<Board> getList(Criteria Cri);
}
