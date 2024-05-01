package com.javateam.memberproject1.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.domain.Sort;
//import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.javateam.memberproject1.domain.BoardVO;

// public interface BoardDAO extends JpaRepository<BoardVO, Integer>{
// 페이징 메서드 추출위해 Repository 교체
public interface BoardDAO extends PagingAndSortingRepository<BoardVO, Integer>{
	
	BoardVO save(BoardVO boardVO);
	
	long count();

	Page<BoardVO> findAll(Pageable pageable);
	
	BoardVO findById(int boardNum);
	
	int countByBoardSubjectLike(String boardSubject); // Like
	int countByBoardSubjectContaining(String boardSubject); // Containing
	int countByBoardContentContaining(String boardContent);
	int countByBoardWriterContaining(String boardWriter);
	
	Page<BoardVO> findByBoardSubjectLike(String boardSubject, Pageable pageable); // Like
	Page<BoardVO> findByBoardSubjectContaining(String boardSubject, Pageable pageable); // Containing
	Page<BoardVO> findByBoardContentContaining(String boardContent, Pageable pageable);
	Page<BoardVO> findByBoardWriterContaining(String boardWriter, Pageable pageable);
	
	// 원글에 따른 소속 댓글들 가져오기
	List<BoardVO> findByBoardReRef(int boardReRef); 
	
	// 댓글 제외한 원글들만의 게시글 수 : boardReRef = 0
	long countByBoardReRef(int boardReRef);
	
	// 댓글 제외한 원글들만의 게시글들만 가져오기(페이징) : boardReRef = 0
	Page<BoardVO> findByBoardReRef(int boardReRef, Pageable pageable); 
	
	// 게시글 조회수 갱신
	@Modifying
	@Query(value = "UPDATE board_tbl SET " + 
				   "board_readcount = board_readcount + 1 " + 
				   "WHERE board_num = :boardNum", nativeQuery = true)
	void updateBoardReadcountByBoardNum(@Param("boardNum") int boardNum);

	// 게시글 삭제
	void deleteById(int boardNum);
	
	// 내가 작성한 게시글 (댓글 제외) 조회
	List<BoardVO> findByBoardWriterAndBoardReRefOrderByBoardDate(String boardWriter, int boardReRef);
}