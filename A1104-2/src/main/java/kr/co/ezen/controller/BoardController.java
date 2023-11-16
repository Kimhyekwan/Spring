package kr.co.ezen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.ezen.entity.Board;
import kr.co.ezen.entity.Criteria;
import kr.co.ezen.entity.CryCry;
import kr.co.ezen.entity.PageCre;
import kr.co.ezen.entity.User;
import kr.co.ezen.entity.mass;
import kr.co.ezen.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	
	
	
	@GetMapping("/list")
	public String hkList(Model m,CryCry cri) {
		List<mass> hi=boardService.hkList(cri);
		m.addAttribute("hi", hi);
		return "board/list";
	}
	

	

	
	
	/*
	 * @GetMapping("/list") public String getList(Model m, Criteria cri) {
	 * 
	 * List<Board> li=boardService.getList(cri); m.addAttribute("li",li);
	 * 
	 * PageCre pageCre=new PageCre(); pageCre.setCri(cri);
	 * pageCre.setTotalCount(boardService.totalCount());
	 * m.addAttribute("pageCre",pageCre); //페이징 처리하기위해 list.jps로 넘겨야한다.
	 * 
	 * return "board/list"; }
	 */
	/*
	 * @GetMapping("/register") public String register() { return "board/register";
	 * }
	 * 
	 * @PostMapping("/register") public String register(Board vo, RedirectAttributes
	 * rttr) { //1회성 session boardService.register(vo); //idx
	 * rttr.addFlashAttribute("result",vo.getIdx()); //일회성 세션임()번 게시물이 등록되었습니다.
	 * return "redirect:/board/list"; //글 등록 후 list로 이동 //redirect는 값을 가져가지 못함
	 * getparam처럼 그래서 1회성 세션을 줘서 값을 갖고감 }
	 * 
	 * @GetMapping("/get") public String read(@RequestParam("idx") int idx, Model
	 * mo, @ModelAttribute("cri") Criteria cri) {
	 * 
	 * Board vo=boardService.get(idx); mo.addAttribute("vo",vo); return "board/get";
	 * 
	 * 
	 * }
	 * 
	 * @GetMapping("/modify") public String modify(@RequestParam("idx") int idx,
	 * Model mo) {
	 * 
	 * Board vo=boardService.get(idx); mo.addAttribute("vo",vo); return
	 * "board/modify"; }
	 * 
	 * @PostMapping("/modify") public String modify(Board vo) {
	 * 
	 * boardService.modify(vo);
	 * 
	 * return "redirect:/board/list"; }
	 * 
	 * @GetMapping("/remove") public String remove(int idx) {
	 * boardService.remove(idx); return "redirect:/board/list"; }
	 */
	
	
}
