package com.javateam.memberproject1.controller;

import java.io.IOException;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.impl.SizeLimitExceededException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.javateam.memberproject1.domain.BoardDTO;
import com.javateam.memberproject1.domain.BoardVO;
import com.javateam.memberproject1.domain.CustomUser;
import com.javateam.memberproject1.service.BoardService;
import com.javateam.memberproject1.service.FileUploadService;
import com.javateam.memberproject1.service.ImageService;
import com.javateam.memberproject1.util.FileUploadUtil;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("board")
@Slf4j
public class BoardController { 
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	FileUploadService fileUPloadService;
	
	@Value("${spring.servlet.multipart.max-file-size}") 
	String uploadFileMaxSize;
		
	@GetMapping("/write.do")
	public String write(Model model) {
		
		model.addAttribute("boardDTO", new BoardDTO());
		return "/board/write";
	} //
	
	// DTO 대신 Map 형태의 인자 수신 
	@PostMapping("/writeProc.do")
	public String writeProc(@RequestParam Map<String, Object> map, 
							@RequestPart(value="boardFile") MultipartFile boardFile, 
							Model model) {
		
		log.info("게시글 쓰기 인자 전송 현황 : ");
		map.entrySet().forEach(arg -> {
			log.info("{}", arg);
		});
		
		BoardVO boardVO = new BoardVO(map, boardFile); // Map → VO
		
		// 첨부 파일이 있다면...				
		String msg = ""; // 메시지
		
		if (boardFile.isEmpty() == false) {
			
			log.info("게시글 작성 처리(첨부 파일) : {}", boardFile.getOriginalFilename());
			
			String actualUploadFilename = FileUploadUtil.encodeFilename(boardFile.getOriginalFilename());
			boardVO.setBoardFile(actualUploadFilename);

			// 첨부 파일이 있을 때만 저장
			msg = fileUPloadService.storeUploadFile(boardVO.getBoardNum(), boardFile, boardVO.getBoardFile());
			log.info("msg : {}", msg);
		} 
		
		log.info("BoardVO : {}", boardVO);
		
		boardVO = boardService.insertBoard(boardVO);
		
		log.info("----- 게시글 저장 BoardVO : {}", boardVO);
		
		if (boardVO != null) {
			msg = "게시글 저장에 성공하였습니다.";
		}
			
		// TODO
		// /error/error
		// errMsg, movePage = /board/list.do"
		// 정상 : 파일이 업로드 되었습니다.
		
		model.addAttribute("errMsg", msg);
		model.addAttribute("movePage", "/board/list.do"); 
		
		return "/error/error"; 
	} //
	
	@GetMapping("/view.do/{boardNum}")
	public String view(@PathVariable("boardNum") int boardNum, Model model) {
		
		BoardVO boardVO =boardService.selectBoard(boardNum);
		log.info("BoardVO : {}", boardVO);
		
		model.addAttribute("board", boardVO);
		
		// 조회할 때마다 조회수 갱신(+)
		boardService.updateBoardReadcountByBoardNum(boardNum);
		
		return "/board/view";
	}
	
	@GetMapping("/mypage.do")
	public String mypage(Model model) {
		
		// Spring Security Pricipal(Session) 조회
		Object principal = SecurityContextHolder.getContext()
											.getAuthentication()
											.getPrincipal();
		
		CustomUser customUser = (CustomUser)principal;
		log.info("principal : {}", principal);
		log.info("id : {}", customUser.getUsername()); // 로그인 아이디
		
		String id = customUser.getUsername();
		
		//내가 작성한 게시글(댓글 제외) 조회 
		model.addAttribute("boardList",boardService.findMyPages(id));
	
		return "/board/mypage";
	}
	
}