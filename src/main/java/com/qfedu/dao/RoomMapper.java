package com.qfedu.dao;

import com.qfedu.pojo.Room;
import com.qfedu.vo.BookVo;
import com.qfedu.vo.ResultVo;
import com.qfedu.vo.RoomVo;

import java.util.List;
import java.util.Map;

public interface RoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

    List<RoomVo> findAllRoom(Map<String, Object> map);

    int selectCount();

    List<RoomVo> findAllRoom1();

    List<RoomVo> findByCondition(Room room);

    List<RoomVo> findByPriceAsc();

    List<RoomVo> findByPriceDesc();

    List<RoomVo> findByMarkAsc();

    List<RoomVo> findByMarkDesc();
    Room findRoomById(Integer id);


    //
    //
    List<RoomVo> findAllRoom3(Map<String, Object> map);

    int selectCount3(Integer price);
}