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
			+ "ORDER BY bno)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<BoardVO> noticeList(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM ch_board_2_3")
	public int noticeTotalPage();

	//강의 승인
	@Select("SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname,num "
			+ "FROM (SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname,rownum as num "
			+ "FROM (SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname "
			+ "FROM ch_classdetail_2_3 "
			+ "WHERE ok='n' "
			+ "ORDER BY cno)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<ClassDetailVO> classList(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM ch_classdetail_2_3 "
			+ "WHERE ok='n'")
	public int classTotalPage();
	
	@Update("UPDATE ch_classdetail_2_3 "
			+ "SET ok='y' "
			+ "WHERE cno=#{cno}")
	public void classConfirm(int cno);
	
	//회원 관리
	@Select("SELECT id,tel,name,nickname,image,tutor,num "
			+ "FROM (SELECT id,tel,name,nickname,image,tutor,rownum as num "
			+ "FROM (SELECT id,tel,name,nickname,image,tutor "
			+ "FROM ch_member_2_3 "
			+ "WHERE admin='n')) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<MemberVO> memberList(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM ch_member_2_3 "
			+ "WHERE admin='n'")
	public int memberTotalPage();
	
	@Delete("DELETE FROM ch_member_2_3 "
			+ "WHERE id=#{id}")
	public void memberDelete(String id);
	
	//튜터 승인
	@Select("SELECT * FROM ch_member_2_3 "
			+ "WHERE id=#{id}")
	public MemberVO memberDetail(String id);
	
	@Update("UPDATE ch_member_2_3 "
			+ "SET tutor='y' "
			+ "WHERE id=#{id}")
	public void tutorConfirm(String id);
	
	@Insert("INSERT INTO ch_tutor_2_3 "
			+ "VALUES(ch_tutor_tno_seq.nextval,#{id})")
	public void tutorInsert(String id);
	
	//튜터 관리
	@Select("SELECT id,tel,name,nickname,image,tutor,num "
			+ "FROM (SELECT id,tel,name,nickname,image,tutor,rownum as num "
			+ "FROM (SELECT id,tel,name,nickname,image,tutor "
			+ "FROM ch_member_2_3 "
			+ "WHERE admin='n' AND tutor='y')) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<MemberVO> tutorList(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM ch_member_2_3 "
			+ "WHERE admin='n' AND tutor='y'")
	public int tutorTotalPage();
	
	@Select("SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname,num "
			+ "FROM (SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname,rownum as num "
			+ "FROM (SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname "
			+ "FROM ch_classdetail_2_3 "
			+ "WHERE tno=(SELECT tno FROM ch_tutor_2_3 WHERE id=#{id}) "
			+ "ORDER BY cno)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<ClassDetailVO> tutorClassList(Map map);
	
	@Select("SELECT COUNT(*) FROM ch_classdetail_2_3 "
			+ "WHERE tno=(SELECT tno FROM ch_tutor_2_3 WHERE id=#{id})")
	public int tutorClassCount();
}
