package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.sist.vo.*;
public interface BoardReplyMapper {
	
	//댓글 리스트
	@Select("SELECT brno,bno,id,nickname,msg,group_tab,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') "
			+"FROM ch_boardreply_2_3 "
			+"WHERE bno=#{bno}")
	public List<BoardReplyVO> replyList(int bno);
	
	//댓글 작성 insert
	@Insert("INSERT INTO ch_boardreply_2_3 VALUES( "
			+"(SELECT NVL(MAX(brno),0)+1 FROM ch_boardreply_2_3), " //데이터가 없으면 null 반환되기 때문에 0으로 치환 후 +1
			+"#{bno},'wowwow@naver.com',#{msg},SYSDATE, "
			+"(SELECT NVL(MAX(group_id),0)+1 FROM ch_boardreply_2_3),0,0,0,0) ")
	public void replyInsert(BoardReplyVO vo);
	
	
	//댓글 수정 update
	@Update("UPDATE ch_boardreply_2_3 SET "
			+"msg=#{msg} "
			+"WHERE brno=#{brno} ")
	public void replyUpdate(String msg,int brno);
	
	
	//댓글 삭제 delete
	@Delete("DELETE FROM ch_boardreply_2_3 "
			+"WHERE brno=#{brno} ")
	public void replyDelete(int brno);
	
}
