package com.sist.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ReviewVO {
	private int rno,heart,comment_count,curriculum,preparation,kindness,delivery,time,cno;
	private String content,id;
	private Date regdate;
}
