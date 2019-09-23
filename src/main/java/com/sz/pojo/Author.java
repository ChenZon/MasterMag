package com.sz.pojo;

/**
 * 作者类
 * @author hyc
 *
 */
public class Author {
    private String authorid;//作者编号
    private String authorname;//作者名


    public Author() {
        super();
    }


    public Author(String authorid, String authorname) {
        super();
        this.authorid = authorid;
        this.authorname = authorname;
    }


    public String getAuthorid() {
        return authorid;
    }


    public void setAuthorid(String authorid) {
        this.authorid = authorid;
    }


    public String getAuthorname() {
        return authorname;
    }


    public void setAuthorname(String authorname) {
        this.authorname = authorname;
    }


}