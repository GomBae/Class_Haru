package com.sist.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ReserveVO {
	private int crno,cno,inwon;
	private String id,has_schedule,cdate,ctime,msg,ok;
	private Date regdate;
}
