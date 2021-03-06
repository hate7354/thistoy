package com.base.controller;

import java.io.IOException;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.base.entity.UserVO;
import com.base.service.user.UserService;
import com.base.session.AuthInfo;
import com.base.session.IdPasswordNotMatchingException;
import com.base.session.LoginCommand;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/login/*")
@RequiredArgsConstructor
@Log4j
public class LoginController {
	
	private final UserService userService;
	
	
	@GetMapping("/login")
	public String loginGET() {
		System.out.println("????????? ?????????");
		return "/login/login";
	}
	//?????? ????????? ?????????
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.POST)
	public String loginSuccess(@Valid LoginCommand loginCommand, BindingResult bindingResult,
			HttpSession session,Model model) throws Exception {
		
		if (bindingResult.hasErrors()) {
			return "/login/login";
		}
		try {
			AuthInfo authInfo = userService.loginAuth(loginCommand);
      
			String userId = authInfo.getUserId();
			session.setAttribute("userId", userId);

		} catch (IdPasswordNotMatchingException e) {
			return "/login/loginfail";
		}
		return "redirect:/";
	} //?????? ????????? 
	
	
	
	@GetMapping("/loginsuccess")
	public void loginsuccess() {
		System.out.println("????????? GET ??????");
	}

	@GetMapping("/logout")
	public String logoutGET(HttpSession session) {
		session.invalidate();
		System.out.println("???????????? GET");
		return "redirect:/";
	}

	
	
	//???????????? ?????? ???????????? ???????????? ???????????? ????????? ????????? ???
	@RequestMapping("/findpw")
	public void findPassword() throws Exception {
		
	}
	@PostMapping("/findpwcheck")
	public String findpwcheck(UserVO vo , RedirectAttributes rttr) {
		String userId = vo.getUserId();
		int rs = userService.idCheck(vo);
		if(rs == 0) {
			System.out.println("?????? : "+rs);
			rttr.addFlashAttribute("fail","??????");
			return "redirect:/login/findpw";
		} else {
			rttr.addAttribute("userId",userId);
			return "redirect:/login/pwchange";
		}
		
	}
	
	@GetMapping("/pwchange")
	public void pwchange(@RequestParam(value = "userId") String userId, Model model) {
		model.addAttribute("userId",userId);
		
	}
	
	@PostMapping("/pwchangesuccess")
	public String pwchangesuccess(UserVO vo , RedirectAttributes rttr){
		String userId = vo.getUserId();
		userService.passwdUpdate(vo);
		rttr.addFlashAttribute("passupdate","??????");
		return "redirect:/";
	}
	
	private final JavaMailSender mailSender;
	@GetMapping("/findpassword")
	@ResponseBody
	public String findPasswordPOST(String semail) throws Exception {
		

		System.out.println("???????????? ?????????????????????");
		System.out.println("?????????: " + semail);
		Random random = new Random();
		int num = random.nextInt(8999)+1000;
		System.out.println("???????????? :" + num);
		
		
		String setFrom = "gihadaim@gmail.com";
		String toMail = semail;
		String title = "???????????? ?????????????????? ?????????????????????.";
		String content = " ???????????? ???????????????     "+num+"     ?????????.";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}
		String Checkcode = Integer.toString(num);
		
		return Checkcode;
	}
	
	@RequestMapping(value="/socailLogin", method = RequestMethod.GET)
	public String socialLogin(UserVO vo, HttpSession session) {
		System.out.println(vo);
		String email = vo.getUserId();
		String social = vo.getUserSocial();
		System.out.println(email);
		System.out.println(social);

		int rs = userService.selectSocialLogin(vo);
		if(rs == 0) {
			int res = userService.insertSocialLogin(vo);
			System.out.println("?????? : "+res);
		}

		session.setAttribute("userId", vo.getUserId());
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/navercallback", method = RequestMethod.GET)
	public String naverCallback() {
		return "/login/navercallback";
	}
	
	
	
	
	
}// ????????? ??????
