package com.javateam.memberproject1.controller;

import jakarta.servlet.http.HttpSession;

import java.lang.reflect.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.thymeleaf.expression.Maps;

import com.javateam.memberproject1.domain.CustomUser;
import com.javateam.memberproject1.domain.MemberDTO;
import com.javateam.memberproject1.service.MemberService;
import com.javateam.memberproject1.service.RecipeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	RecipeService recipeService;
	
	@GetMapping("/")
	public String home(Model model) {
		
		log.info("home");
		model.addAttribute("arg", "인자");
//		return "layout2";
//		return "home";
		return "intro-content";
		// return "redirect:/member/join.do";
	} //
	
	@GetMapping("/content1")
	public String content1() {
		
		log.info("content1");
		
		return "content1";
	} //
	
	@GetMapping("/content2")
	public String content2() {
		
		log.info("content2");
		
		return "content2";
	} //
	
	@GetMapping("/login")
	public String login() {
		
		log.info("login");
//		return "login"; 
		return "authentication-login";
	}
	
//	@GetMapping ("logout.do")
//	public String logout() {
//        return "intro-content"; 
//        
//	}
	
	@GetMapping("/welcome")
	public String welcome() {
		
		log.info("welcome");
		return "welcome";
	} //
	
	@GetMapping("/loginError")
    public String loginError(Model model, HttpSession session) {
    	
		// Spring CustomProvider 인증(Auth) 에러 메시지 처리
		Object secuSess = session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION");
	
		log.info("#### 인증 오류 메시지-1 : " + secuSess);
		log.info("#### 인증 오류 메시지-2 : " + secuSess.toString());
	
		model.addAttribute("error", "true");
		model.addAttribute("msg", secuSess.toString().split(":")[1].trim());
	
		return "authentication-login";
	}	
	
	// /403 : 접근 권한 문제시 이동 페이지 : SecurityConfig.java
	/*
	   .and()
           .exceptionHandling().accessDeniedPage("/403");     
	 */
	@GetMapping("/403")
    public String acessDenided(Model model, HttpSession session) {
		
		log.error("403 mapping");
    	
		model.addAttribute("errMsg", "페이지 접근 권한이 없습니다.");
		model.addAttribute("movePage", "/welcome");
	
		return "/error/error";
	}	
	
	
	@GetMapping("about")
	public String about() {
		
		log.info("소개");
		return "about";
	} //
	
	@GetMapping("service")
	public String service(Model model) {
		
		log.info("service");
		model.addAttribute("recipes1", recipeService.findAll1());
		model.addAttribute("recipes2", recipeService.findAll2());
		model.addAttribute("recipes3", recipeService.findAll3());
		model.addAttribute("recipes4", recipeService.findAll4());
		model.addAttribute("recipes5", recipeService.findAll5());
		 
		 
		return "service";
	} //
	
	@GetMapping("service2")
	public String service2(Model model) {
		
		log.info("service2");
		
		// Spring Security Pricipal(Session) 조회
		Object principal = SecurityContextHolder.getContext()
											.getAuthentication()
											.getPrincipal();
		
		CustomUser customUser = (CustomUser)principal;
		log.info("principal : {}", principal);
		log.info("id : {}", customUser.getUsername()); // 로그인 아이디
		
		log.info("service2");
		model.addAttribute("recipes1", recipeService.findAll1());
		model.addAttribute("recipes2", recipeService.findAll2());
		model.addAttribute("recipes3", recipeService.findAll3());
		model.addAttribute("recipes4", recipeService.findAll4());
		model.addAttribute("recipes5", recipeService.findAll5());
		
		String id = customUser.getUsername();
		
		MemberDTO memberDTO = memberService.selectMember(id);
		model.addAttribute("memberDTO", memberDTO);
		return "service2";
	} //

	@GetMapping("menu")
	public String menu() {
		
		log.info("menu");
		return "menu";
	} //
	@GetMapping("header2")
	public String header() {
		
		log.info("header2");
		return "/layout/header2";
	} //	
	
	@GetMapping("join")
	public String join() {
		
		log.info("join");
		return "/member/join";
	} //
	
	/*
	 * @GetMapping({"/", "/home"}) public String home() {
	 * 
	 * log.info("--- home");
	 * 
	 * return "ajaxDemo"; }
	 */
	
	
	 @GetMapping("/nutri") 
	 public String nutri() {
	  
	 log.info("--- nutri");
	  
	 return "nutri"; }
	 

}
