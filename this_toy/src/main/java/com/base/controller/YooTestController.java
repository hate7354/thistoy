package com.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YooTestController {

	@RequestMapping("/")
	public String mainTest() {
		
		return "/main";
	}
}
