package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
/*
 * private int cno,jjim_count,cateno,tno,detail_cateno;
	private double tutor_info_grade_total;
	private String title,image,place,location,schedule,notice,time,
					perprice,totalprice,summary,target,tutor_intro,class_intro,
					class_curri,class_video,onoff,inwon,tutor_info_nickname,tutor_info_img;
 */

import com.sist.vo.ClassDetailVO;
public interface MainMapper {
	@Select("SELECT cno,jjim_count,title,image,perprice,tutor_info_nickname,tutor_info_grade_total,rownum "
			+ "FROM (SELECT cno,jjim_count,title,image,perprice,tutor_info_nickname "
			+ "FROM ch_classdetail_2_3 ORDER BY jjim_count DESC) "
			+ "WHERE rownum <=5")
	public List<ClassDetailVO> nowPopularClass();
}
