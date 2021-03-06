package com.qfedu.controller;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class CustomerDateConvert implements Converter<String, Date> {
    @Override
    public Date convert(String text) {
        // TODO Auto-generated method stub
        if (text == null || text.trim().isEmpty()) {
            return null;

        }
        SimpleDateFormat[] sdFormats = new SimpleDateFormat[]{
                new SimpleDateFormat("yyyy-MM-dd"),
                new SimpleDateFormat("yyyyMMdd"),
                new SimpleDateFormat("yyyy年MM月dd日")
        };
        for (SimpleDateFormat sdf : sdFormats) {
            try {
                return sdf.parse(text);
            } catch (ParseException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                continue;
            }
        }
        return null;
    }

}
