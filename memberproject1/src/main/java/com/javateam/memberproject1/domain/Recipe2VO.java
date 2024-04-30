package com.javateam.memberproject1.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "RECIPE_DATA2_TBL")
@Data
public class Recipe2VO {
	
	@Id
	@Column
	private int num;
	
	@Column
	private String img;
	
	@Column
	private String name;
	
	@Column
	private String ingredients;
}
