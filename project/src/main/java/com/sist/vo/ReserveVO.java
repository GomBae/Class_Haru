package com.sist.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ReserveVO {
	private int crno,cno,inwon,totalperprice_num,score;
	private String image,title,tutor,id,totalperprice,totalprice,ok,sche_info,tutorMsg,schedule,place,location;
	private Date regdate;
}
