package com.sz.pojo;
/**
 * 新闻信息类
 * @author hyc
 *
 */
public class NewsInfo {
    private String newsno;//新闻编号
    private String news_title;//新闻标题
    private String news_author;//新闻作者
    private int news_type;//新闻种类
//    private NewsType type;
    private Author author;

    public NewsInfo(String newsno, String news_title, String news_author,
                    int news_type) {
        super();
        this.newsno = newsno;
        this.news_title = news_title;
        this.news_author = news_author;
        this.news_type = news_type;
    }
    public NewsInfo() {
        super();
    }
    public String getNewsno() {
        return newsno;
    }
    public void setNewsno(String newsno) {
        this.newsno = newsno;
    }
    public String getNews_title() {
        return news_title;
    }
    public void setNews_title(String news_title) {
        this.news_title = news_title;
    }
    public String getNews_author() {
        return news_author;
    }
    public void setNews_author(String news_author) {
        this.news_author = news_author;
    }
    public int getNews_type() {
        return news_type;
    }
    public void setNews_type(int news_type) {
        this.news_type = news_type;
    }


}