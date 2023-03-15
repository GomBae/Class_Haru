package com.sist.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.sist.vo.MemberVO;

public interface MemberMapper {
	//로그인
	@Select("SELECT COUNT(*) FROM ch_member_2_3 "
			+"WHERE id=#{id}")
	public int memberIdCheck(String id);
	
	@Select("SELECT * FROM ch_member_2_3 "
			+"WHERE id=#{id}")
	public MemberVO memberLogin(String id);
	
	//회원가입
//	@Insert("INSERT INTO ch_member_2_3(id,pwd,name,nickname) VALUES("
//			+ "")
}
