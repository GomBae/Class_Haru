package com.sist.dao;
import java.util.*;
import com.sist.vo.*;
import com.sist.mapper.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDAO {
	@Autowired
	private MypageMapper mapper;
	public void textInsert(TextVO vo) {
		mapper.textInsert(vo);
	}
	public List<TextVO> myTextsList(Map map){
		return mapper.myTextsList(map);
	}
	public int stextTotalPage(Map map) {
		return mapper.stextTotalPage(map);
	}
	public List<TextVO> myTextrList(Map map){
		return mapper.myTextrList(map);
	}
	public int rtextTotalPage(Map map) {
		return mapper.rtextTotalPage(map);
	}
}
