package com.javateam.memberproject1.domain;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Slf4j
public class MemberDTO {
	
	/** 회원 아이디 */
	private String id;
	
	/** 회원 패쓰워드 */
	private String password;
	
	/** 회원 이름 */
	private String name;
	
	/** 회원 나이 */
    private int age;
	
	/** 회원 성별 */
	private String gender;
	
	/** 회원 이메일 */
	private String email;
	
	/** 회원 연락처(휴대폰) */
	private String mobile;
	
	/** 회원 연락처(지역전화) */
	private String phone;
	
	/** 회원 우편번호 */
	private String zip;
	
	/** 회원 도로명 주소 */
	private String roadAddress;
	
	/** 회원 지번 주소 */
	private String jibunAddress;
	
	/** 회원 상세 주소 */
	private String detailAddress;
	
	/** 회원 생일 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	
	/** 회원 가입일 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date joindate;
	
	/** 회원 신장 여부 */
	private float height;
	
	/** 회원 체중 여부 */
	private int weight;
	
	/** 회원 질병 여부 */
	private String disease;
	
	/** 회원 활동지수 여부 */
	private float activity;
	
	/** 회원 활성화 여부 */
	private int enabled;
	
	
	
	// DTO => MultiValueMap
	public static MultiValueMap<String, String> toMap(MemberDTO memberDTO) 
			throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		
		MultiValueMap<String, String> map = new LinkedMultiValueMap<>();
		Field[] fields = memberDTO.getClass().getDeclaredFields();
				
		for (Field fld : fields) {
			
			// 로그 객체(log)는 제외
			if (fld.getName().equals("log") == false) {
				
				Method method = memberDTO.getClass().getDeclaredMethod("get"+StringUtils.capitalize(fld.getName()));
				
				if (fld.getName().equals("birthday") || fld.getName().equals("joindate")) {
				
					map.put(fld.getName(), Arrays.asList(new SimpleDateFormat("yyyy-MM-dd").format(method.invoke(memberDTO))));
					
				} else {
					map.put(fld.getName(), Arrays.asList(method.invoke(memberDTO).toString()));
				} //
				
			} // 로그 객체는 제외
			
		} // for
		
		return map;		
	}

	public MemberDTO(Map<String, Object> requestMap) {
		
		Set<String> set = requestMap.keySet();
		Iterator<String> it = set.iterator();
		Field field; // reflection 정보 활용
		
		while (it.hasNext()) {
			
			 String fldName = it.next();
		
			 try {
		    		// DTO와 1:1 대응되는 필드들 처리 
			    	try {
							field = this.getClass().getDeclaredField(fldName);
							field.setAccessible(true);
							
							if (!fldName.equals("birthday") || !fldName.equals("joindate")) {
								field.set(this, requestMap.get(fldName));
							}
							
					} catch (NoSuchFieldException e) {
						
						// 만약 VO와 1:1 대응되지 않는 인자일 경우는 이 부분에서 입력처리합니다.
						log.info("인자와 필드가 일치하지 않습니다."); 
						
					} // try
					
			} catch (SecurityException | IllegalArgumentException | IllegalAccessException e) { 
				e.printStackTrace();
			} // try
			 
		} // while	 
		
	} //
	
	public int calcAge(Date birthday) {
		 //현재 년도 구하기
		 Calendar now = Calendar.getInstance(); //년월일시분초
		 Integer currentYear = now.get(Calendar.YEAR);
			 
		 //태어난년도를 위한 세팅
		 SimpleDateFormat format = new SimpleDateFormat("yyyy");
		 String stringBirthYear = format.format(birthday); //년도만받기
		 //태어난 년도
		 Integer birthYear = Integer.parseInt(stringBirthYear);

		 // 현재 년도 - 태어난 년도 => 나이 (만나이X)
	     int age = (currentYear - birthYear +1);
	     //String outputAge = Integer.toString(age);
	        
	 	 return age;
	}
}	
