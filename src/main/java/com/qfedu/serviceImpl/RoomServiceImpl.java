package com.qfedu.serviceImpl;

import com.qfedu.dao.RoomMapper;
import com.qfedu.pojo.Room;
import com.qfedu.service.RoomService;
import com.qfedu.vo.BookVo;
import com.qfedu.vo.PageBeanVo;

import com.qfedu.vo.RoomVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RoomServiceImpl implements RoomService {
    @Autowired
    private RoomMapper roomDao;

    @Override
    public PageBeanVo<RoomVo> findRoomsByPage(Integer page, Integer limit) {
        Map<String, Object> map = new HashMap<>();
        map.put("index", (page - 1) * limit);
        map.put("limit", limit);
        return PageBeanVo.setPage(roomDao.selectCount(), roomDao.findAllRoom(map));
    }

    @Override
    public List<RoomVo> findRoomsByPage1() {
        return roomDao.findAllRoom1();
    }

    @Override
    public List<RoomVo> findByCondition(Room room) {
        return roomDao.findByCondition(room);
    }

    @Override
    public List<RoomVo> orderByCondition(Integer type) {
        if (type == 1) {
            return roomDao.findByPriceAsc();
        } else if (type == 2) {
            return roomDao.findByPriceDesc();
        } else if (type == 3) {
            return roomDao.findByPriceAsc();
        } else if (type == 4) {
            return roomDao.findByPriceDesc();
        } else {
            throw new RuntimeException("网络异常");
        }

    }

 @Override public BookVo findBoById(Date liveTime, Date leaveTime, Integer id) {
 int days = (int) ((leaveTime.getTime() - liveTime.getTime()) / (1000*3600*24));
 BookVo bo=new BookVo();
 bo.setId(id);
 bo.setLiveTime(liveTime);
 bo.setLeaveTime(leaveTime);
 Room r=roomDao.findRoomById(id);
 Integer price=r.getPrice();
 int totalprice=price*days;
 if(totalprice>0){
 bo.setTotalprice(totalprice);
 return bo;
 }else{
 throw new RuntimeException("日期异常");
 }
 }







//
    @Override
    public PageBeanVo<RoomVo> findRoomsByPage3(Integer page, Integer limit,Integer price) {
        Map<String, Object> map = new HashMap<>();
        map.put("index", (page - 1) * limit);
        map.put("limit", limit);
        map.put("price",price);
        return PageBeanVo.setPage(roomDao.selectCount3(price), roomDao.findAllRoom3(map));
    }

}