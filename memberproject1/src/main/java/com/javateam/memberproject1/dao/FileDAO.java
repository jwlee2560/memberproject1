package com.javateam.memberproject1.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javateam.memberproject1.domain.UploadFile;

public interface FileDAO extends JpaRepository<UploadFile, Integer> {
	 
	public UploadFile findOneByFileName(String fileName);
	
	public UploadFile findOneById(int id);
	
	public void deleteById(int id);
	
}