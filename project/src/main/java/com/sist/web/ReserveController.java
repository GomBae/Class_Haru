package com.sist.web;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sist.vo.*;
import com.sist.dao.*;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveDAO dao; 
	
	@GetMapping("reserve/reserve.do")
	public String reserve_resreve(int cno,Model model)
	{
		model.addAttribute("cno",cno);
		return "reserve/reserve";
	}
	
	@GetMapping("reserve/reserve_check.do")
	public String reserve_reserve_check()
	{
		return "";
	}
	
	@GetMapping("reserve/reserve_pay.do")
	public String reserve_pay()
	{
		return "reserve/reserve_pay";
	}


}
