package com.sist.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MainMapper;
import com.sist.vo.ClassDetailVO;

@Repository
public class MainDAO {
	@Autowired
	private MainMapper mapper;
	
//	@Select("SELECT cno,jjim_count,title,image,perprice,tutor_info_nickname,tutor_info_grade_total,rownum "
//			+ "FROM (SELECT cno,jjim_count,title,image,perprice,tutor_info_nickname "
//			+ "FROM ch_classdetail_2_3 ORDER BY jjim_count DESC) "
//			+ "WHERE rownum <=5")
	public List<ClassDetailVO> nowPopularClass(){
		return mapper.nowPopularClass();
	}
}
