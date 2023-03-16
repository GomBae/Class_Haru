package com.sist.vo;

import lombok.Getter;
import lombok.Setter;
import java.util.*;
@Getter
@Setter
/*
 * NO               NUMBER         
CATE_NO NOT NULL NUMBER         
SUBJECT NOT NULL VARCHAR2(1000) 
CONTENT NOT NULL CLOB           
ANO     NOT NULL NUMBER         
REGDATE          DATE           
NAME    NOT NULL VARCHAR2(34)   
HIT              NUMBER         
PWD     NOT NULL VARCHAR2(20)   
 */
public class FAQVO {
	private int no,cate_no,ano,hit;
	private String subject,content,name,pwd,dbday;
	private Date regdate;
}
