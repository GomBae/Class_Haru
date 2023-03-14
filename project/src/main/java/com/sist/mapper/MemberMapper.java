package com.sist.mapper;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.MemberVO;

public interface MemberMapper {
	@Select("SELECT COUNT(*) FROM ch_member_2_3 "
			+"WHERE id=#{id}")
	public int memberIdCheck(String id);
	
	@Select("SELECT * FROM ch_member_2_3 "
			+"WHERE id=#{id}")
	public MemberVO memberLogin(String id);
}
