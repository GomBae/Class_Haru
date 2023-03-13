package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.sist.vo.*;

public interface MypageMapper {
	//보낸 쪽지 목록
	@Select("SELECT tno,id,msg,receiver,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,ok,TO_CHAR(recvdate,'YYYY-MM-DD') as recvday,nickname,num "
			+ "FROM (SELECT tno,id,msg,receiver,regdate,ok,recvdate,nickname,rownum as num "
			+ "FROM (SELECT tno,id,msg,receiver,regdate,ok,recvdate,nickname "
			+ "FROM ch_text_2_3 "
			+ "WHERE id=#{id} "
			+ "ORDER BY tno)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<TextVO> myTextsList(Map map);

	@Select("SELECT CEIL(COUNT(*)/10.0) FROM ch_text_2_3 "
			+ "WHERE id=#{id}")
	public int stextTotalPage(Map map);

	//받은 쪽지 목록
	@Select("SELECT tno,id,msg,receiver,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,ok,TO_CHAR(recvdate,'YYYY-MM-DD') as recvday,nickname,num "
			+ "FROM (SELECT tno,id,msg,receiver,regdate,ok,recvdate,nickname,rownum as num "
			+ "FROM (SELECT tno,id,msg,receiver,regdate,ok,recvdate,nickname "
			+ "FROM ch_text_2_3 "
			+ "WHERE receiver=#{receiver} "
			+ "ORDER BY tno)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<TextVO> myTextrList(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/10.0) FROM ch_text_2_3 "
			+ "WHERE receiver=#{receiver}")
	public int rtextTotalPage(Map map);
	
	//쪽지 확인
	@Update("UPDATE ch_text_2_3 "
			+ "SET ok='y' "
			+ "WHERE tno=#{tno}")
	public void myTextCheck(int tno);
	
	@Select("SELECT * FROM ch_text_2_3 "
			+ "WHERE tno=#{tno}")
	public List<TextVO> myTextDetail(int tno);
	
	//쪽지 보내기
	@SelectKey(keyProperty = "tno", resultType = int.class, before = true, 
			statement = "SELECT NVL(MAX(tno)+1,1) as tno FROM ch_text_2_3")
	@Insert("INSERT INTO ch_text_2_3 "
			+ "VALUES(#{tno},#{id},#{msg},#{receiver},sysdate,'n',null,#{nickname})")
	public void textInsert(TextVO vo);
	
	//강의실
	@Select("SELECT crno,cno,inwon,id,has_schedule,cdate,ctime,msg,num "
			+ "FROM (SELECT crno,cno,inwon,id,has_schedule,cdate,ctime,msg,rownum as num "
			+ "FROM (SELECT crno,cno,inwon,id,has_schedule,cdate,ctime,msg "
			+ "FROM ch_reserve_2_3 "
			+ "WHERE id=#{id} "
			+ "ORDER BY crno)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<ReserveVO> myReserveList(Map map);

	@Select("SELECT * FROM ch_reserve_2_3 "
			+ "WHERE crno=#{crno}")
	public List<ReserveVO> myReserveDetail(int crno);
	
	//질문
//	@Select("SELECT * FROM ch_question_2_3 "
//			+ "WHERE id=#{id}")
//	public List<QuestionVO> myQuestionList(String id);
//	
//	@Select("SELECT * FROM ch_question_2_3 "
//			+ "WHERE qno=#{qno}")
//	public List<QuestionVO> myQuestionDetail(int qno);
	
	//찜
	@Select("SELECT * FROM ch_alljjim_2_3 "
			+ "WHERE id=#{id}")
	public List<JJimVO> myJjimList(Map map);
	
	//커뮤니티
	@Select("SELECT * FROM ch_board_2_3 "
			+ "WHERE id=#{id}")
	public List<BoardVO> myBoardList(Map map);
	
	//리뷰
	@Select("SELECT * FROM ch_review_2_3 "
			+ "WHERE id=#{id}")
	public List<ReviewVO> myReviewList(Map map);
	
	//댓글
	@Select("SELECT * FROM ch_boardreply_2_3 "
			+ "WHERE id=#{id}")
	public List<BoardReplyVO> myReplyList(Map map);
}
