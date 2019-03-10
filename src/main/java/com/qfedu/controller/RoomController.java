package com.qfedu.controller;

import com.qfedu.pojo.Room;
import com.qfedu.service.RoomService;
import com.qfedu.vo.PageBeanVo;
import com.qfedu.vo.ResultVo;
import com.qfedu.vo.RoomVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Controller
public class RoomController {
    @Autowired
    private RoomService roomService;

    @RequestMapping("/findallRooms.do")
    @ResponseBody
    public PageBeanVo<RoomVo> findallRooms(@Param("page") Integer page, @Param("limit") Integer limit) {
        return roomService.findRoomsByPage(page, limit);
    }

    @RequestMapping("/findallRooms1.do")
    @ResponseBody
    public List<RoomVo> findallRooms1() {
        return roomService.findRoomsByPage1();
    }


    @RequestMapping("/findByCondition.do")
    @ResponseBody
    public ResultVo findByCondition(Room room) {
        return ResultVo.setOK(roomService.findByCondition(room));
    }

    @RequestMapping("/OrderByCondition.do")
    @ResponseBody
    public ResultVo orderByCondition(Integer type) {
        return ResultVo.setOK(roomService.orderByCondition(type));
    }


    @RequestMapping("/bookRoom.do")
     @ResponseBody
     public ResultVo bookRoom(Date liveTime, Date leaveTime,Integer id) throws ParseException {
        return 	ResultVo.setOK(roomService.findBoById(liveTime,leaveTime,id));
    }







    @RequestMapping("/searchByPage3.do")
    @ResponseBody
    public PageBeanVo<RoomVo> searchByPage3(@Param("page") Integer page, @Param("limit") Integer limit,Integer price) {
        return roomService.findRoomsByPage3(page,limit,price);
    }



}
