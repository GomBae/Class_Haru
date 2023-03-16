package com.sist.dao;
import com.sist.vo.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.*;
import com.sist.vo.*;

@Repository
public class ReserveDAO {
	@Autowired
	private ReserveMapper mapper;
	
	//클래스 1개 스케쥴 정보(클래스신청 페이지 관련)
	/*
	@Select("SELECT title,location,schedule,place,tel "
			+"FROM ch_classdetail_2_3 "
			+"WHERE cno=#{cno} ")
	*/
	public ClassDetailVO classScheduleInfo(int cno)
	{
		return mapper.classScheduleInfo(cno);
	}
	
	//클래스신청 저장 insert
	/*
	@Insert("INSERT INTO ch_reserve_2_3 VALUES("
			+"#{crno},#{cno},#{id},#{schedule},#{place},#{inwon},#{totalprice},#{tutormsg},sysdate,'n')")
	*/
	public void reserveInsert(ReserveVO vo)
	{
		mapper.reserveInsert(vo);
	}

}
