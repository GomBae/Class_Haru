package com.sist.dao;
import java.util.*;
import com.sist.vo.*;
import com.sist.mapper.*;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	@Autowired
	private AdminMapper mapper;
	
	//공지 목록
	public List<BoardVO> noticeList(Map map){
		return mapper.noticeList(map);
	}
	public int noticeTotalPage() {
		return mapper.noticeTotalPage();
	}
	
	//강의 승인
	public List<ClassDetailVO> classList(Map map){
		return mapper.classList(map);
	}
	public int classTotalPage() {
		return mapper.classTotalPage();
	}
	public void classConfirm(int cno) {
		mapper.classConfirm(cno);
	}
	
	//회원 관리
	public List<MemberVO> memberList(Map map){
		return mapper.memberList(map);
	}
	public int memberTotalPage() {
		return mapper.memberTotalPage();
	}
	public void memberDelete(String id) {
		mapper.memberDelete(id);
	}
	
	//튜터 승인
	public MemberVO memberDetail(String id) {
		return mapper.memberDetail(id);
	}
	public void tutorConfirm(String id) {
		mapper.tutorConfirm(id);
		mapper.tutorInsert(id);
	}
	
	//튜터 관리
	public List<MemberVO> tutorList(Map map){
		return mapper.tutorList(map);
	}
	public int tutorTotalPage() {
		return mapper.tutorTotalPage();
	}
	public List<ClassDetailVO> tutorClassList(Map map){
		return mapper.tutorClassList(map);
	}
	public int tutorClassCount() {
		return mapper.tutorClassCount();
	}
}
