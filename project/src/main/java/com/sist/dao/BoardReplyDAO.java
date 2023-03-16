package com.sist.dao;
import com.sist.mapper.*;
import com.sist.vo.*;

import oracle.jdbc.internal.OracleTypes;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardReplyDAO {
	
	private Connection conn;
	private CallableStatement cs;
	private final String URL="jdbc:oracle:thin:@211.63.89.131:1521:XE";
	
	public BoardReplyDAO()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {}
	} 
	
	public void getConnection()
	{
		try {
			conn=DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception ex) {}
	}
	
	public void disConnection()
	{
		try {
			if(cs!=null) cs.close();
			if(conn!=null) conn.close();
		} catch (Exception ex) {}
	}
	
	//댓글 읽기
	public List<BoardReplyVO> boardReplyList(BoardReplyVO vo)
	{
		List<BoardReplyVO> list=new ArrayList<BoardReplyVO>();
		try
		{
			getConnection();
			String sql="{CALL ch_replylist(?,?)}";
			cs=conn.prepareCall(sql);
			cs.setInt(1, vo.getBno());
			cs.registerOutParameter(2, OracleTypes.CURSOR);
			cs.executeQuery();
			
			System.out.println("bno:"+cs.getString(2));
			ResultSet rs=(ResultSet)cs.getObject(2);
			while(rs.next())
			{
				BoardReplyVO rvo=new BoardReplyVO();
				rvo.setBno(rs.getInt(1));
				rvo.setBrno(rs.getInt(2));
				rvo.setId(rs.getString(3));
				rvo.setName(rs.getString(4));
				rvo.setMsg(rs.getNString(5));
				rvo.setDbday(rs.getString(6));
			}
			rs.close();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		return list;
	}
	
	//댓글쓰기
	public void boardReplyInsert(BoardReplyVO vo)
	{
		try
		{
			getConnection();
			String sql="{CALL ch_replyInsert(?,?,?)}";
			cs=conn.prepareCall(sql);
			cs.setInt(1, vo.getBno());
			cs.setString(2, vo.getId());
			cs.setString(3, vo.getMsg());
			cs.executeQuery();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
	}
	
	//댓글수정
	public void boardReplyUpdate(BoardReplyVO vo)
	{
		try
		{
			getConnection();
			String sql="{CALL ch_replyupdate(?,?,?)}";
			cs=conn.prepareCall(sql);
			cs.setInt(1, vo.getBrno());
			cs.setString(2, vo.getId());
			cs.setString(3, vo.getMsg());
			cs.executeQuery();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		
	}
	//댓글삭제
	public void boardReplyDelete(int brno)
	{
		try
		{
			getConnection();
			String sql="{CALL ch_replydelete(?)}";
			cs=conn.prepareCall(sql);
			cs.setInt(1, brno);
			cs.executeQuery();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		
	}
}



