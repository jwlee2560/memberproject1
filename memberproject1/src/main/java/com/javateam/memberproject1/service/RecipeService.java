package com.javateam.memberproject1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javateam.memberproject1.dao.Recipe1DAO;
import com.javateam.memberproject1.domain.Recipe1VO;
import com.javateam.memberproject1.dao.Recipe2DAO;
import com.javateam.memberproject1.dao.Recipe3DAO;
import com.javateam.memberproject1.dao.Recipe4DAO;
import com.javateam.memberproject1.dao.Recipe5DAO;
import com.javateam.memberproject1.domain.Recipe2VO;
import com.javateam.memberproject1.domain.Recipe3VO;
import com.javateam.memberproject1.domain.Recipe4VO;
import com.javateam.memberproject1.domain.Recipe5VO;

@Service
public class RecipeService {

	@Autowired
	Recipe1DAO recipe1DAO;
	
	@Autowired
	Recipe2DAO recipe2DAO;
	
	@Autowired 
	Recipe3DAO recipe3DAO;
	
	@Autowired 
	Recipe4DAO recipe4DAO;
	 
	@Autowired 
	Recipe5DAO recipe5DAO;
	 
	
	@Transactional(readOnly = true)
	public List<Recipe1VO> findAll1(){
		return (List<Recipe1VO>) recipe1DAO.findAll();
	} 
	
	@Transactional(readOnly = true)
	public List<Recipe2VO> findAll2(){
		return (List<Recipe2VO>) recipe2DAO.findAll();
	}	
	@Transactional(readOnly = true)
	public List<Recipe3VO> findAll3(){
		return (List<Recipe3VO>) recipe3DAO.findAll();
	}	
	@Transactional(readOnly = true)
	public List<Recipe4VO> findAll4(){
		return (List<Recipe4VO>) recipe4DAO.findAll();
	}	
	@Transactional(readOnly = true)
	public List<Recipe5VO> findAll5(){
		return (List<Recipe5VO>) recipe5DAO.findAll();
	
	
	}
}
