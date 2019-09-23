package com.sz.service.impl;

import com.sz.dao.NewsInfoMapper;
import com.sz.pojo.NewsInfo;
import com.sz.service.NewsInfoService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class NewsInfoServiceImpl implements NewsInfoService {

    @Autowired
    NewsInfoMapper newsInfoMapper;


    public List<NewsInfo> allNewsInfo() {
        List<NewsInfo> newsInfoList= new ArrayList<NewsInfo>();
        newsInfoList=newsInfoMapper.findnewsInfoMap();
        return newsInfoList;
    }
}
