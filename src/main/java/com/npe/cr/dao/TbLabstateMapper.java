package com.npe.cr.dao;

import com.npe.cr.pojo.TbLabstate;
import com.npe.cr.pojo.TbLabstateExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TbLabstateMapper {
    long countByExample(TbLabstateExample example);

    int deleteByExample(TbLabstateExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbLabstate record);

    int insertSelective(TbLabstate record);

    List<TbLabstate> selectByExample(TbLabstateExample example);

    TbLabstate selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbLabstate record, @Param("example") TbLabstateExample example);

    int updateByExample(@Param("record") TbLabstate record, @Param("example") TbLabstateExample example);

    int updateByPrimaryKeySelective(TbLabstate record);

    int updateByPrimaryKey(TbLabstate record);
}