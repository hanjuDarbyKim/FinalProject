package com.test.spring.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.StudentDTO;

@Service
public class ManagerService implements IManagerService {

	@Autowired
	private ManagerDAO dao;

	@Override
	public void attManager() {
		
		
	}
	
	@Override
	public String attStart(int seq) {
		
		int result = dao.attManagerCheck(seq);
		
		//금일 매니저가 이미 체크했는지 확인 후 체크된 경우
		if (result == 1) {
			return "금일은 이미 출결개시를 했습니다";
		} else {			
			result = dao.attStart(seq);
			if (result == 1) {//성공
				
			} else {//실패
				
			}
		}
		return null;
	}

}