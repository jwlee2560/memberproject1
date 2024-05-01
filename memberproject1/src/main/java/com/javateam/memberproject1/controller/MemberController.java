package com.javateam.memberproject1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javateam.memberproject1.domain.CustomUser;
import com.javateam.memberproject1.domain.MemberDTO;
import com.javateam.memberproject1.domain.MemberUpdateDTO;
import com.javateam.memberproject1.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@GetMapping("/join.do")
	public String join(Model model) {
		
		log.info("join.do");		
		
		model.addAttribute("memberDTO", new MemberDTO());
		return "/member/join";
	}
	
	@PostMapping("/joinProc.do")
	public String joinProc(@ModelAttribute("memberDTO") MemberDTO memberDTO, 
						RedirectAttributes ra) {
		
		// 나이 계산
		log.info("나이 : " + memberDTO.calcAge(memberDTO.getBirthday()));
		memberDTO.setAge(memberDTO.calcAge(memberDTO.getBirthday()));
		
		log.info("joinProc.do : {}", memberDTO);
		
		// TODO
		// 패쓰워드 암호화
		bCryptPasswordEncoder = new BCryptPasswordEncoder();
		memberDTO.setPassword(bCryptPasswordEncoder.encode(memberDTO.getPassword()));
		boolean result = memberService.insertMemberRole(memberDTO);
		
		String msg = "";		
		String movePath = "";
		
		if (result == true) {
			
			msg = "회원정보 저장에 성공하였습니다.";
			// 로그인 경로로 이동
			movePath = "redirect:/login";
			
		} else {
			
			msg = "회원정보 저장에 실패하였습니다.";
			ra.addFlashAttribute("msg", msg);
			
			movePath = "redirect:/member/join.do";
		}
		
		log.info("result : {}", msg);
				
		return movePath; 
	}	
	
//	@GetMapping("/view.do")
//	@ResponseBody
//	public String view(@RequestParam("id") String id, Model model) {
//		
//		return memberService.selectMember(id).toString();
//	}
	
	@GetMapping("/view.do")
	// public String view(@RequestParam("id") String id, Model model) {
	public String view(Model model) {
		
		// Spring Security Pricipal(Session) 조회
		Object principal = SecurityContextHolder.getContext()
											.getAuthentication()
											.getPrincipal();
		
		CustomUser customUser = (CustomUser)principal;
		log.info("principal : {}", principal);
		log.info("id : {}", customUser.getUsername()); // 로그인 아이디
		
		String id = customUser.getUsername();
		
		MemberDTO memberDTO = memberService.selectMember(id);
		
		if (memberDTO == null) {
			// 에러 처리
			model.addAttribute("errMsg", "회원 정보가 존재하지 않습니다.");
			return "/error/error";
		} else {
			model.addAttribute("memberDTO", memberDTO);
		}
		
		return "/member/view";	
	}
	
	@GetMapping("/update.do")
	public String update(Model model) {
		
		log.info("회원정보 수정");
		
		// Spring Security Pricipal(Session) 조회
		Object principal = SecurityContextHolder.getContext()
											.getAuthentication()
											.getPrincipal();
		
		CustomUser customUser = (CustomUser)principal;
		log.info("principal : {}", principal);
		log.info("id : {}", customUser.getUsername()); // 로그인 아이디
		
		String id = customUser.getUsername();
		
		MemberDTO memberDTO = memberService.selectMember(id);
		
		if (memberDTO == null) {
			// 에러 처리
			model.addAttribute("errMsg", "회원 정보가 존재하지 않습니다.");
			return "/error/error";
			
		} else {
			
			// 주의) ClassCastException 발생 가능성 있음
			// MemberUpdateDTO memberUpdateDTO = (MemberUpdateDTO)memberDTO;
			MemberUpdateDTO memberUpdateDTO = new MemberUpdateDTO(memberDTO);
			// model.addAttribute("memberDTO", memberDTO);
			model.addAttribute("memberUpdateDTO", memberUpdateDTO);
			
			log.info("기존 회원 정보 : {}", memberUpdateDTO);
		}
		
		return "/member/update";	
	}
	
	@PostMapping("/updateProc.do")
	public String updateProc(@ModelAttribute("memberUpdateDTO") MemberUpdateDTO memberUpdateDTO, 
						RedirectAttributes ra) {
		
		log.info("회원정보 수정 처리 : {}", memberUpdateDTO);
		
		// 신규 패쓰워드가 공백이 아니라면 패쓰워드 변경
		// 공백이면 패쓰워드 변경 의사가 없는 것으로 간주하여 기존 패쓰워드 그대로 사용
		if (memberUpdateDTO.getPassword1().trim().equals("") != true) {
			// 패쓰워드 암호화		
			// 주의) 변경된 패쓰워드(password1 혹은 password2) => 암호화 => 기존 패쓰워드(password)에 대입
			bCryptPasswordEncoder = new BCryptPasswordEncoder();
			memberUpdateDTO.setPassword(bCryptPasswordEncoder.encode(memberUpdateDTO.getPassword1()));				
		}
		
		log.info("updateProc.do-1(암호화 이후) : {}", memberUpdateDTO);
		
		String msg = "";
		String movePath = "";
				
		boolean result = memberService.updateMember(memberUpdateDTO);
		
		if (result == true) {
			
			msg = "회원정보 정보 수정에 성공하였습니다.";
			movePath = "redirect:/member/view.do";
		
		} else {
			
			msg = "회원정보 정보 수정에 실패하였습니다.";		
			movePath = "redirect:/member/update.do";
		}
		
		log.info("result : {}", msg);
		ra.addFlashAttribute("msg", msg);
			
		return movePath; 
	}	
	
}