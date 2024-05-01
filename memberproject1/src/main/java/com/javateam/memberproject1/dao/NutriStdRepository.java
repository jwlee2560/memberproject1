package com.javateam.memberproject1.dao;

import org.springframework.data.repository.CrudRepository;
import com.javateam.memberproject1.domain.NutriStdVO;

public interface NutriStdRepository extends CrudRepository<NutriStdVO, Integer> {

	public NutriStdVO findByGenderAndAge(char gender, String ageRange);
	
}