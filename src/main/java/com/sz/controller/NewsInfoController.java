package com.sz.controller;

import com.sz.pojo.NewsInfo;
import com.sz.service.NewsInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

public class NewsInfoController {

    @Autowired
    NewsInfoService newsInfoService;
    @RequestMapping("searchInfo")
    public String searchNewsInfo(Model model){
        List<NewsInfo> newsList = newsInfoService.allNewsInfo();
        model.addAttribute("newsList", newsList);
        return "show";
    }
}
