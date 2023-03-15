package com.sist.dao;
import java.util.*;
import com.sist.vo.*;
import com.sist.mapper.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	@Autowired
	private AdminMapper mapper;
	public List<BoardVO> noticeList(Map map){
		return mapper.noticeList(map);
	}
	public int noticeTotalPage() {
		return mapper.noticeTotalPage();
	}
}
