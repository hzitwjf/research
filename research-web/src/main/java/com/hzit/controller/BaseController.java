package com.hzit.controller;


import com.hzit.interceptor.BaseComment;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by Administrator on 2016/10/7.
 */
public class BaseController extends WebMvcConfigurerAdapter {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //利用拦截器注册一个对象，给请求指定一个拦截的对象，并且指定拦截的路径。
       // registry.addInterceptor(new comment()).addPathPatterns("/**")
       InterceptorRegistration interceptorRegistration= registry.addInterceptor(new BaseComment());
        interceptorRegistration.addPathPatterns("/showAll");
        super.addInterceptors(registry);
    }
}
