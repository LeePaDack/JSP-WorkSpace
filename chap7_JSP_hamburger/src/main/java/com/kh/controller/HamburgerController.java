package com.kh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.entity.JSPHamburger;
import com.kh.service.HamburgerService;

@Controller
public class HamburgerController {

	@Autowired
	private HamburgerService hamburgerService;
	
	@GetMapping("/api/hamburgerList")
	public String getHamburgerList(Model model) {
		List<JSPHamburger> hamburger = hamburgerService.getAllHamburger();
		model.addAttribute("hamburgers", hamburger);
		return "hamburgerList"; // jsp 주소 가져오기
	}
	
	@PostMapping("/addHamburger")
	public String addHamburger(JSPHamburger hamburger) {
		hamburgerService.addHamburger(hamburger);
		return "redirect:/api/hamburgerList"; // 다시 불러올 API 주소를 작성
	}
	
}
