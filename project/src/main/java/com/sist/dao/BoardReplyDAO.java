package com.sist.dao;
import com.sist.mapper.*;
import com.sist.vo.*;
import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardReplyDAO {
	
	@Autowired
	private BoardReplyMapper mapper;
	
	//댓글 리스트
	/*
	 * @Select("SELECT brno,bno,id,nickname,msg,group_tab,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') "
			+"FROM ch_boardreply_2_3 "
			+"WHERE bno=#{bno}")
	*/
	public List<BoardReplyVO> replyList(int bno)
	{
		return mapper.replyList(bno);
	}
	
	//댓글 작성 insert
	/*
	@Insert("INSERT INTO ch_boardreply_2_3 VALUES("
			+"NVL(MAX(brno)+1,1),#{bno},'wowwow@naver.com',#{msg},SYSDATE,NVL(MAX(group_id)+1,1),0,0,0,0")
	*/
	public void replyInsert(BoardReplyVO vo)
	{
		mapper.replyInsert(vo);
	}
	
	//댓글 수정 update
	@Update("UPDATE ch_boardreply_2_3 SET "
			+"msg=#{msg} "
			+"WHERE brno=#{brno} ")
	public void replyUpdate(String msg,int brno)
	{
		mapper.replyUpdate(msg, brno);
	}
	
	
	//댓글 삭제 delete
	/*
	@Delete("DELETE FROM ch_boardreply_2_3 "
			+"WHERE brno=#{brno} ")
	*/
	public void replyDelete(int brno)
	{
		mapper.replyDelete(brno);
	}
	
}
