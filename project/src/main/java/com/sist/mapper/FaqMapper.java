package com.sist.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import java.util.*;
import com.sist.vo.*;
public interface FaqMapper {
	@Select("SELECT no,subject,content FROM ch_faq_2_3 WHERE cate_no=1")
	public List<FAQVO> tutee_list(); 
	
	@Select("SELECT no,subject,content FROM ch_faq_2_3 WHERE cate_no=2")
	public List<FAQVO> tutor_list(); 
	
	@Select("SELECT ano,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,num "
			 +"FROM (SELECT ano,subject,name,regdate,hit,rownum as num "
			 +"FROM (SELECT /*+ INDEX_DESC(ch_faq_2_3 ch_faq_ano_pk_2_3)*/ano,subject,name,regdate,hit "
			 +"FROM ch_faq_2_3)) "
			 +"WHERE num BETWEEN #{start} AND #{end}")
	  public List<FAQVO> faqListData(Map map);
	  
	  @Select("SELECT CEIL(COUNT(*)/5.0) FROM ch_faq_2_3")
	  public int faqTotalPage();
	  
	  @SelectKey(keyProperty = "ano",resultType = int.class , before = true,
			  statement = "SELECT NVL(MAX(ano)+1,1) as ano FROM ch_faq_2_3")
	  @Insert("INSERT INTO ch_faq_2_3(ano,name,subject,content,pwd,regdate,hit,cate_no,no) VALUES("
			 +"#{ano},#{name},#{subject},#{content},#{pwd},SYSDATE,0,#{cate_no}, CH_FAQ_NO_SEQ_2_3.nextval)")
	  public void faqInsert(FAQVO vo);
	  
	  @Update("UPDATE ch_faq_2_3 SET "
			 +"hit=hit+1 "
			 +"WHERE ano=#{ano}")
	  public void faqHitIncrement(int ano);
	  
	  @Select("SELECT ano,name,subject,content,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit "
			 +"FROM ch_faq_2_3 "
			 +"WHERE ano=#{ano}")
	  public FAQVO faqDetailData(int ano);
	  
	  @Select("SELECT pwd FROM ch_faq_2_3 "
			 +"WHERE ano=#{ano}")
	  public String faqGetPassword(int ano);
	  
	  @Update("UPDATE ch_faq_2_3 SET "
			 +"name=#{name},subject=#{subject},content=#{content} "
			 +"WHERE ano=#{ano}")
	  public void faqUpdate(FAQVO vo);
	  
	  @Delete("DELETE FROM ch_faq_2_3 "
			 +"WHERE ano=#{ano}")
	  public void faqDelete(int ano);

}
