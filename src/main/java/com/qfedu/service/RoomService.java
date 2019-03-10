package com.qfedu.service;

import com.qfedu.pojo.Room;
import com.qfedu.vo.BookVo;
import com.qfedu.vo.PageBeanVo;
import com.qfedu.vo.ResultVo;
import com.qfedu.vo.RoomVo;

import java.util.Date;
import java.util.List;

public interface RoomService {
    PageBeanVo<RoomVo> findRoomsByPage(Integer page, Integer limit);

    List<RoomVo> findRoomsByPage1();

    List<RoomVo> findByCondition(Room room);

    List<RoomVo> orderByCondition(Integer type);

    BookVo findBoById(Date liveTime, Date leaveTime, Integer id);



    //
    //
    PageBeanVo<RoomVo> findRoomsByPage3(Integer page, Integer limit,Integer price);
}
