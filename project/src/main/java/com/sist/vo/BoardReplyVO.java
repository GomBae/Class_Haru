package com.sist.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class BoardReplyVO {
	private int brno,bno,group_id,group_step,group_tab,root,depth;
	private String id,msg;
	private Date regdate;
}
