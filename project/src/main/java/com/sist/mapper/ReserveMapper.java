package com.sist.mapper;

import org.apache.ibatis.annotations.Select;
import com.sist.vo.*;

public interface ReserveMapper {
	
	//클래스 스케쥴 정보
	@Select("SELECT cno,title,image,tutor_info_nickname,tutor_info_grade_total,location,schedule,place,totalprice "
			+"FROM ch_classdetail_2_3 "
			+"WHERE cno=#{cno} ")
	public ClassDetailVO classScheduleInfo(int cno);
	
	//회원 전화번호
	@Select("SELECT id,tel FROM ch_member_2_3 "
			+"WHERE id=#{id} ")
	public MemberVO userTel(String id);
}
