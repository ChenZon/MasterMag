package com.sz.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.sz.pojo.Student;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler)
            throws Exception {

        String url = request.getRequestURI();

        HttpSession session = request.getSession();
        Student user = (Student) session.getAttribute("USER_SESSION");

        if (user != null && (url.indexOf("/login") >= 0 ||  url.indexOf("/register") >= 0 ||  url.indexOf("jsp/login.jsp") >= 0)){
            System.out.println("你已经登录！");
            request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);

        }

        //以下页面不拦截
        if ((url.indexOf("/login") >= 0 || url.indexOf("/register") >= 0 || url.indexOf("/isRegistered") >= 0 || url.indexOf("/create") >= 0 ) && user == null){
            System.out.println(url);
            return true;
        }

        if (user != null) {
            return true;
        }





        request.getRequestDispatcher("/").forward(request, response);
        System.out.println("不要搞事---url: "+ url);
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
