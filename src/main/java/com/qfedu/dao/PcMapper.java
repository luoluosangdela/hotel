package com.qfedu.dao;

import com.qfedu.pojo.Pc;

public interface PcMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Pc record);

    int insertSelective(Pc record);

    Pc selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Pc record);

    int updateByPrimaryKey(Pc record);
}