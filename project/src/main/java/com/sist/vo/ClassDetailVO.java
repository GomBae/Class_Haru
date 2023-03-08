package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ClassDetailVO {
	private int cno,jjim_count,cateno,tno,detail_cateno;
	private double tutor_info_grade_total;
	private String title,image,place,location,schedule,notice,time,
					perprice,totalprice,summary,target,tutor_intro,class_intro,
					class_curri,class_video,onoff,inwon,tutor_info_nickname,tutor_info_img;
}
