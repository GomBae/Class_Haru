package com.sist.mapper;
import java.util.*;
import com.sist.vo.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface AdminMapper {
	//공지 목록
	@Select("SELECT bno,btype,id,title,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,tag,num "
			+ "FROM (SELECT bno,btype,id,title,regdate,hit,tag,rownum as num "
			+ "FROM (SELECT bno,btype,id,title,regdate,hit,tag "
			+ "FROM ch_board_2_3 "
			+ "WHERE btype=1 "
			+ "ORDER BY bno))"
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<BoardVO> noticeList(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM ch_board_2_3")
	public int noticeTotalPage();

	//강의 승인
	@Update("UPDATE ch_classdetail_2_3 "
			+ "SET ok='y' "
			+ "WHERE cno=#{cno}")
	public void classConfirm(int cno);
	
	//회원 관리
	@Delete("DELETE FROM ch_member_2_3 "
			+ "WHERE id=#{id}")
	public void memberDelete(String id);
	
	//튜터 승인
	@Update("UPDATE ch_member_2_3 "
			+ "SET tutor='y' "
			+ "WHERE id=#{id}")
	public void tutorConfirm(String id);
	
	@Insert("INSERT INTO ch_tutor_2_3 "
			+ "VALUES(ch_tutor_tno_seq.nextval,#{id})")
	public void tutorInsert(String id);
}
