package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FaqController {
	@GetMapping("faq/faq.do")
	public String faq_main() {
		return "faq/faq";
	}
	@GetMapping("faq/list.do")
	   public String faq_list()
	   {
		   return "faq/list";
	   }
	   @GetMapping("faq/insert.do")
	   public String faq_insert()
	   {
		   return "faq/insert";
	   }
	   @GetMapping("faq/detail.do")
	   public String faq_detail(int ano,Model model)
	   {
		   model.addAttribute("ano", ano);
		   return "faq/detail";
	   }
	   @GetMapping("faq/update.do")
	   public String faq_update(int ano,Model model)
	   {
		   model.addAttribute("ano", ano);
		   return "faq/update";
	   }
	   @GetMapping("faq/delete.do")
	   public String faq_delete(int ano,Model model)
	   {
		   model.addAttribute("ano", ano);
		   return "faq/delete";
	   }

}
