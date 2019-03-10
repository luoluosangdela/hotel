package com.qfedu.dao;

import com.qfedu.pojo.PriceType;

public interface PriceTypeMapper {
    int deleteByPrimaryKey(Integer prId);

    int insert(PriceType record);

    int insertSelective(PriceType record);

    PriceType selectByPrimaryKey(Integer prId);

    int updateByPrimaryKeySelective(PriceType record);

    int updateByPrimaryKey(PriceType record);
}