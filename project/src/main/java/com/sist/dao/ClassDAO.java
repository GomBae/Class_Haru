package com.sist.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.*;
import com.sist.vo.*;
import com.sist.vo.*;
@Repository
public class ClassDAO {
	@Autowired
	private ClassMapper mapper;
	
	/*@Select("SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname "
    +"FROM ch_classdetail_2_3 "
    +"WHERE cateno=#{cateno} AND detail_cateno=#{detail_cateno}")*/
	public List<ClassDetailVO> classListData(Map map)
	{
		return mapper.classListData(map);
	}

	
}
