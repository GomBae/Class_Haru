package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import com.sist.vo.*;
public interface JjimMapper {
	
	@Insert("INSERT INTO ch_alljjim_2_3 VALUES(ch_ajno_seq_2_3.nextval,#{id},#{cno})")
	public void jjimInsert(Map map);
	
	@Delete("DELETE FROM ch_alljjim_2_3 WHERE cno=#{cno}")
	public void jjimDelete(int cno);
	
	@Select("SELECT COUNT(*) FROM ch_alljjim_2_3 WHERE cno=#{cno} AND id=#{id}")
	public int jjimCount(Map map);
}
