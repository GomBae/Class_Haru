package com.sist.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import java.util.*;
import com.sist.vo.*;

public interface BoardMapper {
	
	//게시판별 리스트, 최신순 정렬
	@Select("SELECT btype,bno,id,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,num "
			+"FROM (SELECT btype,bno,id,nickname,title,content,tag,hit,regdate,rownum as num "
			+"FROM (SELECT btype,bno,a.id,nickname,title,content,tag,hit,regdate "
			+"FROM ch_board_2_3 a, ch_member_2_3 b WHERE a.id=b.id AND btype=#{btype} ORDER BY bno DESC)) "
			+"WHERE num BETWEEN #{start} AND #{end} ")
	public List<BoardVO> boardListData(Map map);
	
	
	//게시판별 리스트 총페이지
	@Select("SELECT CEIL(count(*)/4.0) FROM ch_board_2_3 "
			+"WHERE btype=#{btype} ")
	public int boardListTotalPage(int btype);
	
	
	//게시판 검색결과 리스트
	@Select("SELECT btype,bno,id,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,rownum "
			+"FROM (SELECT btype,bno,id,nickname,title,content,tag,hit,regdate "
			+"      FROM (SELECT btype,bno,a.id,nickname,title,content,tag,hit,regdate "
			+"            FROM ch_board_2_3 a,ch_member_2_3 b "
			+"            WHERE a.id=b.id "
			+"            AND btype=#{btype}) "
			+"      WHERE title LIKE '%'||#{word}||'%' "
			+"      OR CONTENT LIKE '%'||#{word}||'%') "
			+"WHERE rownum BETWEEN #{start} AND #{end} ")
	public List<BoardVO> boardSearchList(Map map);
	
	//게시판 검색결과 총개수
	@Select("SELECT count(*) "
			+"FROM (SELECT btype,bno,id,nickname,title,content,tag,hit,regdate "
			+"      FROM (SELECT btype,bno,a.id,nickname,title,content,tag,hit,regdate "
			+"            FROM ch_board_2_3 a,ch_member_2_3 b "
			+"            WHERE a.id=b.id "
			+"            AND btype=#{btype}) "
			+"      WHERE title LIKE '%'||#{word}||'%' "
			+"      OR CONTENT LIKE '%'||#{word}||'%') ")
	public int boardSearchCount();
	
	
	//게시판 검색결과 총페이지`
	@Select("SELECT CEIL(count(*)/4.0) FROM ch_board_2_3 "
			+"WHERE btype=#{btype} "
			+"AND title LIKE '%'||#{word}||'%' "
			+"OR content LIKE '%'||#{word}||'%' ")
	public int boardSearchTotalPage(Map map);
	
	
	//게시글 상세보기
	@Update("UPDATE ch_board_2_3 SET "
			+"hit=hit+1 "
			+"WHERE bno=#{bno} ")
	public void boardHitUpdate(int bno);
	@Select("SELECT btype,a.bno,a.id,image,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday "
			+"FROM ch_board_2_3 a, ch_member_2_3 b "
			+"WHERE a.id=b.id "
			+"AND bno=#{bno} ")
	public BoardVO boardDetailData(int bno);
	
	
	//게시글 1개 댓글수
	@Select("SELECT count(*) as replyCnt FROM ch_boardreply_2_3 "
			+" WHERE bno=#{bno} ")
	public int boardReplyCount(int bno);
	
	//게시글 조회수순 정렬 (hit DESC)
	@Select("SELECT btype,bno,id,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,num "
			+"FROM (SELECT btype,bno,id,nickname,title,content,tag,hit,regdate,rownum as num "
			+"FROM (SELECT btype,bno,a.id,nickname,title,content,tag,hit,regdate "
			+"FROM ch_board_2_3 a, ch_member_2_3 b WHERE a.id=b.id AND btype=#{btype} ORDER BY hit DESC)) "
			+"WHERE num BETWEEN #{start} AND #{end} ")
	public List<BoardVO> boardListOrderByHit(Map map);
	
	
	//게시글 댓글많은순 정렬(rcnt DESC, 아우터 조인 이용 => 게시판 테이블, 댓글 테이블)
	//게시글별 댓글수 먼저 구하기 => (select bno,count(*) as cnt from ch_boardreply_2_3 group by bno) as replyCnt)
	@Select("SELECT bno,id,title,content,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,rcnt,rownum "
			+"FROM (SELECT b.bno,b.bid,b.title,b.content.b.regdate.b.hit,rcnt "
			+"      FROM ch_board_2_3 b, "
			+"           (SELECT bno,count(*) rcnt FROM ch_boardreply2_3 "
			+"            GROUP BY bno) r "
			+"      WHERE b.bno=r.bno(+) "
			+"      ORDER BY rcnt desc) "
			+"WHERE rownum BETWEEN #{start} AND #{end} ")
	public List<BoardVO> boardOderByRelpyCnt(Map map);
	
	
	//올해 게시글 최다작성자 TOP5
	@Select("SELECT a.id,nickname,boardCnt,rownum "
			+"FROM (SELECT id,count(*) as boardCnt "
			+"          FROM ch_board_2_3 "
			+"          WHERE TO_CHAR(regdate,'YYYY')=TO_CHAR(SYSDATE,'YYYY') "
			+"          GROUP BY id "
			+"          ORDER BY count(*) DESC) a, "
			+"          ch_member_2_3 b "
			+"WHERE a.id=b.id "
			+"AND rownum<=5 ")
	public List<BoardVO> boardWriterTop5(BoardVO vo);
	

	//게시글 작성 insert
	//태그 1개의 문자열로 저장 : input 통해 태그를 하나씩 입력하면 각각 input(hidden)에 값이 공백과 함께 추가되도록 제이쿼리 작성, 그걸 태그테이블에 저장
	@SelectKey(keyProperty="bno",resultType=int.class,before=true,
			   statement="SELECT NVL(MAX(bno)+1,1) as bno FROM ch_board_2_3 ")
	@Insert("INSERT INTO ch_board_2_3 VALUES("
			+"#{bno},#{btype},#{id},#{title},#{content},SYSDATE,0,#{tag}) ")
	public void boardInsert(BoardVO vo);
	
	
	//게시글 수정용 상세보기 (board/board_update_vue.do)
	@Select("SELECT btype,a.bno,a.id,nickname,title,content,tag,hit,TO_CHAR(regdate,'YYYY-MM-DD') as dbday "
			+"FROM ch_board_2_3 a, ch_member_2_3 b "
			+"WHERE a.id=b.id "
			+"AND bno=#{bno}")
	public BoardVO boardDetailForUpdate(int bno);
	
	
	//게시글 실제 수정 (board/board_update_ok_vue.do)
	@Update("UPDATE ch_board_2_3 SET "
			+"title=#{title},tag=#{tag},content=#{content} "
			+"WHERE bno=#{bno} ")
	public void boardUpdate(BoardVO vo);
	
	
	//게시글 삭제
	@Delete("DELETE FROM ch_board_2_3 "
			+"WHERE bno=#{bno} ")
	public void boardDelete(int bno);
	
	
}
