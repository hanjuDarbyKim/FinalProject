package com.test.spring.jaejun;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.CurTypeDTO;

@Repository
public class JJCurriDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void test() {
		System.out.println(sql == null);
		
	}
	
	public List<CurTypeDTO> curType() {
		
		return sql.selectList("JJCurri.getCurType");
	}
	
	public int addCategory(String categoryname) {
		
		return sql.insert("JJCurri.categoryadd", categoryname);
	}

	public int delCategory(String delcategoryseq) {
		
		return sql.delete("JJCurri.categorydel", delcategoryseq);
	}

	public int lastseqCategory() {

		return sql.selectOne("JJCurri.getlastseqCategory");
	}

	public int editCategory(HashMap<String, String> map) {
		
		return sql.update("JJCurri.categoryedit");
	}

}


