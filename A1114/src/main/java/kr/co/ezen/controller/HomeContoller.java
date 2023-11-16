package kr.co.ezen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ezen.entity.User;
import kr.co.ezen.service.BoardService;

@Controller
public class HomeContoller {
	
	@Autowired
	BoardService boardService;
	
	
	@GetMapping("/hk")
	public String hkList(Model m) {
		List<User> hi=boardService.hkList();
		m.addAttribute("hi", hi);
		return "board/hk";
	}
	

}
