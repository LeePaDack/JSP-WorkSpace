package com.kh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.entity.JSPHamburger;
import com.kh.repository.HamburgerRepository;

@Service
public class HamburgerService {
	
	@Autowired
	private HamburgerRepository hamburgerRepository;
	
	// 햄버거 목록 가져오는 메서드
	public List<JSPHamburger> getAllHamburger() {
		return hamburgerRepository.findAll();
	}
	
	// 햄버거 추가하는 메서드
	public void addHamburger(JSPHamburger hamburger) {
		hamburgerRepository.save(hamburger);
	}
}
