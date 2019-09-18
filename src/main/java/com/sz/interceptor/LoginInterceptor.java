package com.sz.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
//import com.itheima.core.po.User;
import com.sz.pojo.Student;
/**
 * 鐧诲綍鎷︽埅鍣?
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler)
            throws Exception {

        String url = request.getRequestURI();

        if (url.indexOf("/login") >= 0) {
            return true;
        }
        // 鑾峰彇Session
        HttpSession session = request.getSession();
        Student user = (Student) session.getAttribute("USER_SESSION");

        if (user != null) {
            return true;
        }

        request.setAttribute("msg", "鎮ㄨ繕娌℃湁鐧诲綍锛岃鍏堢櫥褰曪紒");
        System.out.println("你还没有登录。。。。。。。。。。。");
        request.getRequestDispatcher("login").forward(request, response);
        return false;
    }
    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }
    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }
}
