package com.sist.mapper;
import java.util.*;
import com.sist.vo.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface TutorMapper {
	//강의 수정
	@Update("UPDATE ch_classdetail_2_3 "
			+ "SET #{title},#{image},#{onoff},#{info},#{place},#{location},#{schedule},"
			+ "#{notice},#{inwon},#{time},#{perPrice},#{totalprice},#{cateno},#{tno}")
	public void classUpdate(ClassDetailVO vo);
	
	//수강생 목록
	@Select("SELECT a.tno,c.id,c.image,name,nickname "
			+ "FROM ch_classdetail_2_3 a, ch_reserve_2_3 b, ch_member_2_3 c "
			+ "WHERE b.id=c.id "
			+ "AND a.cno=b.cno "
			+ "AND a.tno=#{tno}")
	public List studentList();
	
	//질문 목록
	
	//답변 등록

	//강의 신청
	@Insert("INSERT INTO ch_classdetail_2_3 "
			+ "VALUES(ch_cd_cno_seq_2_3.nextval,#{title},#{image},#{onoff},#{info},#{place},#{location},#{schedule},"
			+ "#{notice},#{inwon},#{time},#{perPrice},#{totalprice},#{cateno},#{tno},'n')")
	public void classInsert(ClassDetailVO vo);
}
