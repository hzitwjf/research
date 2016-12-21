package com.hzit.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/12/15.
 */
public class BaseComment implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        System.out.println("拦截器启动啦");
        HttpSession session=request.getSession();
        /*if (request.getHeader("x-forwarded-for") == null) {
            session.setAttribute("remoteAddr",request.getRemoteAddr());
        }else {
            session.setAttribute("header", request.getHeader("x-forwarded-for"));
        }*/
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknow".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        if (ip==null){
            response.sendRedirect("/index.jsp");
            return false;
        }
        //session.setAttribute("ip",ip);
        //return true;
        if (ip.equals("192.168.0.151")){
            return false;
        }else {
            session.setAttribute("ip",ip);
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        HttpSession session=httpServletRequest.getSession();
        System.out.println("IP是："+session.getAttribute("ip"));
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
