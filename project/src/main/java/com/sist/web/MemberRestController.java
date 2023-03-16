package com.sist.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

@RestController
public class MemberRestController {
   @Autowired
   BCryptPasswordEncoder encoder;

   @Autowired
   private MemberDAO dao;

   @GetMapping(value = "member/login_vue.do", produces = "text/html;charset=UTF-8")
   public String member_login(String id, String pwd, HttpSession session) {
      String res = "";
      int count = dao.memberIdCheck(id);

      if (count == 0) {
         res = "NOID";
      } else {
         MemberVO vo = dao.memberLogin(id, pwd);
         System.out.println(encoder.matches(pwd, vo.getPwd()));
         if (encoder.matches(pwd, vo.getPwd())) // 복호화
         {
            res = "OK";
            // id,pwd,tel,name,nickname,intro,image,tutor,admin,msg
            session.setAttribute("mvo", vo);
         } else {
            res = "NOPWD";
         }
      }
      return res;
   }

   @GetMapping("member/logout_vue.do")
   public String member_logout(HttpSession session) {
      session.invalidate();
      return "";
   }

   @GetMapping("member/idcheck_vue.do")
   public String member_idcheck(String id) {
      int count = dao.memberIdCheck(id);
      String res = count == 0 ? "yes" : "no";
      return res;
   }

   @GetMapping("member/insert_vue.do")
   public String memnber_insert(MemberVO vo) {
      String res = "no";
      try {
         res = "yes";
         String pwd = encoder.encode(vo.getPwd()); // 암호화
         vo.setPwd(pwd);
         dao.memberInsert(vo);
      } catch (Exception ex) {
         res = "no";
      }
      return res;
   }
}