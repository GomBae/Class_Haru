package com.sist.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import com.sist.vo.*;

public interface ReserveMapper {
	
	//클래스 스케쥴 정보
	@Select("SELECT cno,title,image,tutor_info_nickname,tutor_info_grade_total,location,schedule,place,totalprice "
			+"FROM ch_classdetail_2_3 "
			+"WHERE cno=#{cno} ")
	public ClassDetailVO classScheduleInfo(int cno);
	
	//클래스신청 저장 insert
	@SelectKey(keyProperty="crno",resultType=int.class,before=true,
			   statement="SELECT NVL(MAX(crno)+1,1) as crno FROM ch_reserve_2_3 ")
	@Insert("INSERT INTO ch_reserve_2_3 VALUES("
			+"#{crno},#{cno},#{id},#{schedule},#{place},#{inwon},#{totalprice},#{tutorMsg},sysdate,'n',#{location})")
	public void reserveInsert(ReserveVO vo);
	
	//클래스신청 목록
	@Select("SELECT * FROM ch_reserve_2_3 "
			+"WHERE id=#{id}")
	public ReserveVO myReserveList(String id);
}
