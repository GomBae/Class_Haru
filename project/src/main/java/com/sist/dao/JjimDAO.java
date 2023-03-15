package com.sist.dao;


import java.util.Map;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;

import com.sist.mapper.JjimMapper;
import com.sist.vo.ClassDetailVO;
import com.sist.vo.JJimVO;


@Repository
public class JjimDAO {
   @Autowired
   private JjimMapper mapper;
   
//   @SelectKey(keyProperty="ajno",resultType=int.class,before=true,
//            statement="SELECT NVL(MAX(ajno)+1,1) as btno FROM ch_alljjim_2_3 ")
//   @Insert("INSERT INTO ch_alljjim_2_3 VALUES(#{ajno},#{cno},#{id})")

   public void jjimInsert(Map map)
   {
      mapper.jjimInsert(map);
   }
   
//   public void jjimInsert(ClassDetailVO vo)
//   {
//      mapper.jjimInsert(vo);
//   }
   
//   @Delete("DELETE FROM ch_alljjim_2_3 WHERE cno=#{cno}")
   public void jjimDelete(int cno)
   {
      mapper.jjimDelete(cno);
   }
   
//   @Select("SELECT COUNT(*) FROM ch_alljjim_2_3 WHERE cno=#{cno} AND id=#{id}")

   public int jjimCount(Map map)
   {
      return mapper.jjimCount(map);
   }
   
//   public int jjimCount(int cno,String id)
//   {
//      return mapper.jjimCount(cno, id);
//
//   }
}