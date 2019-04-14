package com.cc.interceptors;

import com.cc.pojo.User;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SessionInterceptor implements HandlerInterceptor {

    public static final Logger LOGGER = Logger.getLogger(SessionInterceptor.class);

//    检查当前会话是否有user，如果有放行，没有不放行
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        Object user = request.getSession().getAttribute("SESSION_USER");
        if (user==null){
            LOGGER.warn("您不具备权限，请先登录");
            return false;
        }
        if (user instanceof User){
//            再去检查身份，是否冻结
            ((User) user).setPassword(null);
            request.getSession().setAttribute("SESSION_USER",user);
            LOGGER.info(((User) user).getUsername()+"正在处于登录状态");
            return true;
        }else {
            LOGGER.warn("不要搞事");
            return false;
        }


    }
}
