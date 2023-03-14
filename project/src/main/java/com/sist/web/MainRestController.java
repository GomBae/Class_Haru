package com.sist.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.MainDAO;

@RestController
public class MainRestController {
	@Autowired
	private MainDAO dao;
	
	
}
