package kr.co.ezen.service;
import kr.co.ezen.entity.Member;
import kr.co.ezen.entity.User;
import kr.co.ezen.entity.mass;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezen.entity.Board;
import kr.co.ezen.entity.Criteria;
import kr.co.ezen.entity.CryCry;
import kr.co.ezen.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardMapper boardMapper;

	
	@Override
	public List<Board> getList(Criteria cri) {
		List<Board> li=boardMapper.getList(cri); //xml 쿼리문 실행
		return li;
	}

	@Override
	public Member login(Member vo) {
		Member m= boardMapper.login(vo);
		return m;
	
	}

	@Override
	public void register(Board vo) {
		boardMapper.insertSelectKey(vo);
		
		
	}

	@Override
	public Board get(int idx) {
		Board vo= boardMapper.read(idx);
		return vo;
	}

	@Override
	public void modify(Board vo) {
		boardMapper.update(vo);
	}

	@Override
	public void remove(int idx) {
		boardMapper.delete(idx);
		
	}

	@Override
	public void replyPro(Board vo) {
		//답글만들기
		//부모글의 정보를 가져온다 
		Board pa=boardMapper.read(vo.getIdx());
		
		//부모글의 boGroup값을 -> 답글 정보에 저장
		vo.setBoGroup(pa.getBoGroup());
		
		//부모글의 boSequence값에 1을 더해서 ->답글 정보에 저장 
		vo.setBoSequence(pa.getBoSequence()+1);
		
		//부모글의 boLevel값에 1을 더해서 ->답글 정보에 저장 
		vo.setBoLevel(pa.getBoLevel()+1);
		
		boardMapper.replyUpdate(pa);
		
		//답글저장
		boardMapper.replyInsert(vo);
		
		
		
	}

	@Override
	public int totalCount() {
		return boardMapper.totalCount();
	}

	@Override
	public List<mass> hkList(CryCry cri) {
		List<mass> hi=boardMapper.hkList(cri);
		return hi;
	}


	

	
	
}
