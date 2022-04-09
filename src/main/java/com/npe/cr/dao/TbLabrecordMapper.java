package com.npe.cr.dao;

import com.npe.cr.pojo.TbLabrecord;
import com.npe.cr.pojo.TbLabrecordExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbLabrecordMapper {
    long countByExample(TbLabrecordExample example);

    int deleteByExample(TbLabrecordExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbLabrecord record);

    int insertSelective(TbLabrecord record);

    List<TbLabrecord> selectByExample(TbLabrecordExample example);

    TbLabrecord selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbLabrecord record, @Param("example") TbLabrecordExample example);

    int updateByExample(@Param("record") TbLabrecord record, @Param("example") TbLabrecordExample example);

    int updateByPrimaryKeySelective(TbLabrecord record);

    int updateByPrimaryKey(TbLabrecord record);
}