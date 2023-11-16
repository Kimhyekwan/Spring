package kr.co.ezen.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ezen.entity.Member;
import kr.co.ezen.service.BoardService;

@Controller
@RequestMapping("/login/*")
public class LoginController {
   @Autowired
   BoardService boardService;
   
   @RequestMapping("/loginPro")
   public String login(Member vo, HttpSession session) {
      Member mem= boardService.login(vo);
      if(mem!=null) {
         session.setAttribute("mem", mem);
      }
      return "redirect:/board/list";
   }
   
   @RequestMapping("/logoutPro")
   public String logout(HttpSession session) {
	   session.invalidate(); // 로그아웃할때 세션끊어버리는거
	   return "redirect:/board/list";
   }
}