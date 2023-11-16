package kr.co.ezen.mapper;
import kr.co.ezen.entity.Member;
import kr.co.ezen.entity.User;
import kr.co.ezen.entity.mass;

import java.util.List;

import kr.co.ezen.entity.Board;
import kr.co.ezen.entity.Criteria;
import kr.co.ezen.entity.CryCry;

public interface BoardMapper {
	
	
	public void insert(Board vo);
	public void insertSelectKey(Board vo); 
	public Member login(Member vo);
	public Board read(int idx); 
	public void update(Board vo);
	//public void register(Board vo); "글쓰기"인데 이거는 insertSelectkey함수를 대신 씀 
	public void delete(int idx);
	public void replyUpdate(Board pa);
	public void replyInsert(Board vo);
	public int totalCount();
	public List<mass> hkList(CryCry cri);
	public List<Board> getList(Criteria Cri);

}
