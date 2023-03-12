package com.sist.mapper;
import java.util.*;
import com.sist.vo.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface AdminMapper {
	//공지 목록
	@Select("SELECT * FROM ch_board_2_3 "
			+ "WHERE btype=3")
	public List<BoardVO> noticeList();
	
	//강의 승인
	@Update("UPDATE ch_classdetail_2_3 "
			+ "SET ok='y' "
			+ "WHERE cno=#{cno}")
	public void classConfirm(int cno);
	
	//회원 관리
	@Delete("DELETE FROM ch_member_2_3 "
			+ "WHERE id=#{id}")
	public void memberDelete(Map map);
	
	//튜터 승인
	@Update("UPDATE ch_member_2_3 "
			+ "SET tutor='y' "
			+ "WHERE id=#{id}")
	public void tutorConfirm(String id);
	
	@Insert("INSERT INTO ch_tutor_2_3 "
			+ "VALUES(ch_tutor_tno_seq.nextval,#{id})")
	public void tutorInsert(String id);
}
