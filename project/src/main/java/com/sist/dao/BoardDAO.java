package com.sist.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.vo.BoardVO;
import com.sist.vo.BoardTagVO;
import com.sist.mapper.*;

@Repository
public class BoardDAO {
	@Autowired
	private BoardMapper mapper;
		
	//게시판 Type별 리스트 출력
	/*
	@Select("SELECT btype,bno,id,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,num "
	+"FROM (SELECT btype,bno,id,nickname,title,content,tag,hit,regdate,rownum as num "
	+"FROM (SELECT //INDEX_DESC(ch_board_2_3 ch_b_bno_pk_2_3)// btype,bno,id,nickname,title,content,tag,hit,regdate "
	+"FROM ch_board_2_3)) "
	+"WHERE btype=#{btype} "
	+"AND num BETWEEN #{start} AND #{end} ")
	*/
	public List<BoardVO> boardListData(Map map)
	{
		return mapper.boardListData(map);
	}
	
	
	//게시판 Type별 리스트 총페이지
	/*
	@Select("SELECT CEIL(count(*)/7.0) FROM ch_board_2_3 "
			+"WHERE btype=#{btype}")
	*/
	public int boardListTotalPage(int btype)
	{
		return mapper.boardListTotalPage(btype);
	}
	
	
	//게시판 검색 결과 리스트
	/*
	@Select("SELECT btype,bno,id,nickname,title,content,tag,hit,regdate,rownum "
			+"FROM (SELECT btype,bno,id,nickname,title,content,tag,hit,regdate "
			+"      FROM btype,bno,a.id,nickname,title,content,tag,hit,regdate "
			+"      WHERE a.id=b.id "
			+"      AND btype=#{btype} "
			+"      WHERE title LIKE '%'||#{word}||'%' "
			+"      OR CONTENT LIKE '%'||#{word}||'%' "
			+"      ORDER BY bno DESC "
			+"WHERE rownum BETWEEN #{start} AND #{end} ")
	*/		
	public List<BoardVO> boardSearchList(Map map)
	{
		return mapper.boardSearchList(map);
	}
	
	
	//게시판 검색결과 총페이지
	/*
	@Select("SELECT CEIL(count(*)/4.0) FROM ch_board_2_3 "
			+"WHERE btype=#{btype} "
			+"AND title LIKE '%'||#{word}||'%' "
			+"OR content LIKE '%'||#{word}||'%' ")
	*/
	public int boardSearchTotalPage(Map map)
	{
		return mapper.boardSearchTotalPage(map);
	}
		
	
	//게시판 검색결과 총개수
//	@Select("SELECT count(*) "
//			+"FROM (SELECT btype,bno,id,nickname,title,content,tag,hit,regdate "
//			+"      FROM (SELECT btype,bno,a.id,nickname,title,content,tag,hit,regdate "
//			+"            FROM ch_board_2_3 a,ch_member_2_3 b "
//			+"            WHERE a.id=b.id "
//			+"            AND btype=#{btype}) "
//			+"      WHERE title LIKE '%'||#{word}||'%' "
//			+"      OR CONTENT LIKE '%'||#{word}||'%') ")
//	public int boardSearchCount()
//	{
//		return mapper.boardSearchCount();
//	}
	
	
	//태그 개별 저장 => keyup할 때마다 insert, 삭제 버튼 누르면 delete
	/*
	@SelectKey(keyProperty="btno",resultType=int.class,before=true,
			   statement="SELECT NVL(MAX(btno)+1,1) as btno FROM ch_boardtag_2_3 ")
	@Insert("INSERT INTO ch_boardtag_2_3 VALUES(#{btno},#{bno},#{tag})")
	*/
//	public void tagInsert(BoardTagVO vo)
//	{
//		mapper.tagInsert(vo);
//	}
	//태그 개별 삭제
	/*
	@Delete("DELETE FROM ch_boardtag_2_3 WHERE btno=#{btno} ")
	*/
//	public void tagDelete(int btno)
//	{
//		mapper.tagDelete(btno);
//	}
	
	
	//게시글 작성
	/*
	@SelectKey(keyProperty="bno",resultType=int.class,before=true,
			   statement="SELECT NVL(MAX(bno)+1,1) as bno FROM ch_board_2_3 ")
	@Insert("INSERT INTO ch_board_2_3 VALUES("
			+"#{bno},#{btype},#{id},#{title},#{content},SYSDATE,0,#{tag}) ")
	*/
	public void boardInsert(BoardVO vo)
	{
		mapper.boardInsert(vo);
	}
	
	
	//게시글 상세보기
	/*
	@Update("UPDATE ch_board_2_3 SET "
			+"hit=hit+1 "
			+"WHERE bno=#{bno} ")
	public BoardVO boardHitUpdate(int bno);
	@Select("SELECT a.bno,a.id,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday "
			+"FROM ch_board_2_3 a, ch_member_2_3 b "
			+"WHERE a.id=b.id "
			+"AND bno=#{bno}")
	*/
	public BoardVO boardDetailData(int bno)
	{
		mapper.boardHitUpdate(bno);
		return mapper.boardDetailData(bno);
	}
	
	
	//게시글 댓글수
	/*
	@Select("SELECT bno, count(*)"
			+"FROM ch_boardreply_2_3 WHERE bno=#{bno} ")
	*/
	public int boardReplyCount(int bno)
	{
		return mapper.boardReplyCount(bno);
	}
	
	
	//게시글 수정 상세보기
	/*
	@Select("SELECT btype,a.bno,a.id,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday "
			+"FROM ch_board_2_3 a, ch_member_2_3 b "
			+"WHERE a.id=b.id "
			+"AND bno=#{bno}")
	*/
	public BoardVO boardDetailForUpdate(int bno)
	{
		return mapper.boardDetailForUpdate(bno);
	}
	
	
	//게시글 실제 수정
	/*
	@Update("UPDATE ch_board_2_3 SET "
			+"title=#{title},tag=#{tag},content=#{content} "
			+"WHERE bno=#{bno} ")
	*/
	public void boardUpdate(BoardVO vo)
	{
		mapper.boardUpdate(vo);
	}
	
	
	//게시글 삭제
	/*
	@Delete("DELETE FROM ch_board_2_3 "
			+"WHERE bno=#{bno} ")
	*/		
	public void boardDelete(int bno)
	{
		mapper.boardDelete(bno);
	}
	
	
	//올해 게시글 최다작성자 TOP5
	/*
	@Select("SELECT a.id,nickname,cnt,rownum "
			+"FROM (SELECT id,count(*) as cnt "
			+"          FROM ch_board_2_3 "
			+"          WHERE TO_CHAR(regdate,'YYYY')=TO_CHAR(SYSDATE,'YYYY') "
			+"          GROUP BY id "
			+"          ORDER BY count(*) DESC) a, "
			+"          ch_member_2_3 b "
			+"WHERE a.id=b.id "
			+"AND rownum<=5 ")
	*/		
	public List<BoardVO> boardWriterTop5(BoardVO vo)
	{
		return mapper.boardWriterTop5(vo);
	}
}
