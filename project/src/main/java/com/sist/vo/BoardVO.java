package com.sist.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class BoardVO {
	private int bno,btype,hit;
	private String id,title,content,tag;
	private Date regdate;
}
