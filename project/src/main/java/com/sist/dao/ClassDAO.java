package com.sist.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.*;
import com.sist.vo.*;
import com.sist.vo.*;
@Repository
public class ClassDAO {
	@Autowired
	private ClassMapper mapper;
	

//	@Select("SELECT cateno,catename FROM ch_category_2_3")
	public List<CategoryVO> classCateData(){
		return mapper.classCateData();
	}
//	@Select("SELECT cateno,detail_cateno,detail_catename FROM ch_category_detail_2_3 "
//			+ "WHERE cateno=#{cateno}")
	public List<CategoryDetailVO> classCateDetailData(int cateno){
		return mapper.classCateDetailData(cateno);
	}
	
	/*@Select("SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname "
    +"FROM ch_classdetail_2_3 "
    +"WHERE cateno=#{cateno} AND detail_cateno=#{detail_cateno}")*/
	public List<ClassDetailVO> classListData(Map map)
	{
		return mapper.classListData(map);
	}

	
}
