package com.sist.vo;
import java.util.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TextVO {
	private int tno;
	private String id,nickname,msg,receiver,dbday,recvday,ok;
	private Date regdate,recvdate;
}
