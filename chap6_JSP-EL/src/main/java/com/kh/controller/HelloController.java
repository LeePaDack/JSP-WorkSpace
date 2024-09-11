package com.kh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {
	// index.jsp 기본 주소는 /
	
	// controller 에서 Model 을 활용해서 데이터 전달하기
	@GetMapping("/api/hello")
	public String getHello(Model model) {
		model.addAttribute("msg","안녕하세요. controller 에서 데이터를 전달합니다..");
		return "hello"; // hello.jsp 로 이동
	}
	
	@GetMapping("/api/food")
	public String getForTokens() {
		return "forTokens";
	}
	
	@GetMapping("/api/remove")
	public String getRemove() {
		return "remove"; // remove 같은 이름은 rmove 와 같이 있는 값과 겹치지 않게(오류 미리 방지) 하는 것이 좋음
	}
	
	@GetMapping("/api/catch")
	public String getCatch() {
		return "ctch";
	}
	
}
