package com.test.spring.manager;

import org.springframework.stereotype.Repository;

import com.test.spring.dto.StudentDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class ManagerDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	//매니저의 관리 학생들 출결 개시
	public int attStart(int seq) {
		
		return 0;
	}

	//매니저의 관리 학생들 출결 개시했는지 여부 확인
	public int attManagerCheck(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}