package com.sist.dao;

import org.apache.ibatis.annotations.Insert;
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
	public MemberVO memberLogin(String id, String pwd) {
		MemberVO vo = mapper.memberLogin(id);
		return vo;
	}

	// 회원가입
//	@Insert("INSERT INTO ch_member_2_3(id,pwd,name) VALUES("
//			+ "#{id},#{pwd},#{name})")
	public void memberInsert(MemberVO vo) {
		mapper.memberInsert(vo);
	}

	public int memberIdCheck(String id) {
		return mapper.memberIdCheck(id);
	}

}
