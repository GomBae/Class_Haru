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
public class ClassService {
	@Autowired
	private ClassMapper cmapper;
	

	@Autowired
	private JjimMapper jMapper;
	

//	@Select("SELECT cateno,catename FROM ch_category_2_3")
	public List<CategoryVO> classCateData(){
		return cmapper.classCateData();
	}
//	@Select("SELECT cateno,detail_cateno,detail_catename FROM ch_category_detail_2_3 "
//			+ "WHERE cateno=#{cateno}")
	public List<CategoryDetailVO> classCateDetailData(int cateno){
		return cmapper.classCateDetailData(cateno);
	}
	
	/*@Select("SELECT cno,title,image,location,perprice,jjim_count,cateno,detail_cateno,onoff,tutor_info_nickname "
    +"FROM ch_classdetail_2_3 "
    +"WHERE cateno=#{cateno} AND detail_cateno=#{detail_cateno}")*/
	public List<ClassDetailVO> classListData(Map map)
	{
		return cmapper.classListData(map);
	}

//	@Select("SELECT cno,title,image,place,location,schedule,notice,time,perprice,totalprice, "
//    + "summary,target,tutor_intro,class_intro,class_curri,class_video,onoff,inwon,tutor_info_nickname,tutor_info_img, "
//    + "jjim_count FROM CH_CLASSDETAIL_2_3"
//    + "WHERE cno=#{cno}")

	public ClassDetailVO classDetailData(int cno)
	{
		return cmapper.classDetailData(cno);
	}

//	@SelectKey(keyProperty="ajno",resultType=int.class,before=true,
//	   statement="SELECT NVL(MAX(ajno)+1,1) as btno FROM ch_alljjim_2_3 ")
	//@Insert("INSERT INTO ch_alljjim_2_3 VALUES(#{ajno},#{cno},#{id})")
//	public void jjimInsert(JJimVO vo)
//	{
//		jMapper.jjimInsert(vo);
//	}
//	
//	//@Delete("DELETE FROM ch_alljjim_2_3 WHERE cno=#{cno}")
//	public void jjimDelete(int cno)
//	{
//		jMapper.jjimDelete(cno);
//	}
//	
//	//@Select("SELECT COUNT(*) FROM ch_alljjim_2_3 WHERE cno=#{cno} AND id=#{id}")
//	public int jjimCount(int cno,String id)
//	{
//		return jMapper.jjimCount(cno, id);
//	}

	
	// @Select("SELECT CEIL(COUNT(*)/20 FROM ch_classdetail_2_3")
	public int classTotalPage()
	{
		return cmapper.classTotalPage();
	}
	
	//@Select("SELECT COUNT(*) FROM ch_classdetail_2_3") 
	public String classRowCount(Map map)
	{
		return cmapper.classRowCount(map);
	}
	

}
