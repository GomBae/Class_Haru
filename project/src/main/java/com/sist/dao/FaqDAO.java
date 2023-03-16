package com.sist.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.sist.mapper.*;
import com.sist.vo.*;
@Repository
public class FaqDAO {
	@Autowired
	private FaqMapper mapper;
	
	//@Select("SELECT no,subject,content FROM ch_faq_2_3 WHERE cate_no=1")
	public List<FAQVO> tutee_list(){
		return mapper.tutee_list();
	}
	
	//@Select("SELECT no,subject,content FROM ch_faq_2_3 WHERE cate_no=2")
	public List<FAQVO> tutor_list(){
		return mapper.tutor_list();
	}
	
	/*@Select("SELECT ano,subject,name,TO_CHAR(regdate,'YYYY-MM-DD') as dbday,hit,num "
			 +"FROM (SELECT ano,subject,name,regdate,hit,rownum as num "
			 +"FROM (SELECT /*+ INDEX_DESC(ch_faq_2_3 ch_faq_no_pk_2_3)no,subject,name,regdate,hit "
			 +"FROM ch_faq_2_3)) "
			 +"WHERE num BETWEEN #{start} AND #{end}")*/
	  public List<FAQVO> faqListData(Map map){
		  return mapper.faqListData(map);
	  }
	  
	  //@Select("SELECT CEIL(COUNT(*)/5.0) FROM ch_faq_2_3")
	  public int faqTotalPage() {
		  return mapper.faqTotalPage();
	  }
	  
	  /*@SelectKey(keyProperty = "ano",resultType = int.class , before = true,
			  statement = "SELECT NVL(MAX(ano)+1,1) as ano FROM ch_faq_2_3")
	  @Insert("INSERT INTO ch_faq_2_3 VALUES("
			 +"#{no},#{name},#{subject},#{content},#{pwd},SYSDATE,0)")*/
	  public void faqInsert(FAQVO vo) {
		  mapper.faqInsert(vo);
	  }
	
	  
	  public FAQVO faqDetailData(int no)
		{
			mapper.faqHitIncrement(no);
			return mapper.faqDetailData(no);
		}
		
		/*
		 *   @Select("SELECT pwd FROM spring_faq "
					 +"WHERE no=#{no}")
			  public String faqGetPassword(int no);
			  
			  @Update("UPDATE spring_faq SET "
					 +"name=#{name},subject=#{subject},content=#{content} "
					 +"WHERE no=#{no}")
			  public void faqUpdate(faqVO vo);
			  
			  @Delete("DELETE FROM spring_faq "
					 +"WHERE no=#{no}")
			  public void faqDelete(int no);
		 */
		public String faqUpdate(FAQVO vo)
		{
			String res="ano";
			String db_pwd=mapper.faqGetPassword(vo.getAno());
			if(db_pwd.equals(vo.getPwd()))
			{
				mapper.faqUpdate(vo);
				res="yes";
			}
			return res;
		}
		
		public String faqDelete(int ano,String pwd)
		{
			String res="ano";
			String db_pwd=mapper.faqGetPassword(ano);
			if(db_pwd.equals(pwd))
			{
				mapper.faqDelete(ano);
				res="yes";
			}
			return res;
		}
}
