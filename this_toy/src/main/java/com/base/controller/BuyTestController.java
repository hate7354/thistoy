package com.base.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
	@RequestMapping("/buy/*")
	public class BuyTestController {
		
		@RequestMapping("/buy")
		public void buy() {
			
		}
		@RequestMapping("/buysuccess")
		public void buysuccess() {
			
		}
}
