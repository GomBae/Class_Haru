package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MemberMapper;
import com.sist.vo.MemberVO;
@Repository
public class MemberDAO {

	@Autowired
	private MemberMapper mapper;
	
	/*
	 * @Select("SELECT COUNT(*) FROM chat_member " +"WHERE id=#{id}") public int
	 * memberIdCheck(String id);
	 * 
	 * @Select("SELECT id,pwd,name FROM chat_member " +"WHERE id=#{id}")
	 */
	public MemberVO memberLogin(String id,String pwd)
	{
		MemberVO vo=new MemberVO();
		//id체크
		int count=mapper.memberIdCheck(id);
		if(count==0) //id가 없는 상태
		{
			vo.setMsg("NOID");
		}
		else //id가 있는 상태
		{
			MemberVO dbvo=mapper.memberLogin(id);
			if(dbvo.getPwd().equals(pwd))
			{
				vo.setMsg("OK");
				vo.setId(dbvo.getId());
				vo.setName(dbvo.getName());
				vo.setAdmin(dbvo.getAdmin());
				vo.setImage(dbvo.getImage());
				vo.setNickname(dbvo.getNickname());
				vo.setIntro(dbvo.getIntro());
				vo.setTel(dbvo.getTel());
				vo.setTutor(dbvo.getTutor());				
			}
			else
			{
				vo.setMsg("NOPWD");
			}
		}
		return vo;
	}

}
