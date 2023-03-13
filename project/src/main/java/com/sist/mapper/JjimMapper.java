package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import com.sist.vo.*;
public interface JjimMapper {
	@SelectKey(keyProperty="ajno",resultType=int.class,before=true,
			   statement="SELECT NVL(MAX(ajno)+1,1) as btno FROM ch_alljjim_2_3 ")
	@Insert("INSERT INTO ch_alljjim_2_3 VALUES(#{ajno},#{cno},#{id})")
	public void jjimInsert(ClassDetailVO vo);
	
	@Delete("DELETE FROM ch_alljjim_2_3 WHERE cno=#{cno}")
	public void jjimDelete(int cno);
	
	@Select("SELECT COUNT(*) FROM ch_alljjim_2_3 WHERE cno=#{cno} AND id=#{id}")
	public int jjimCount(int cno,String id);
}
