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
        interceptorRegistration.addPathPatterns("/addComment");
        interceptorRegistration.addPathPatterns("/addAllComment");
        interceptorRegistration.addPathPatterns("/toShowAllComment");
        interceptorRegistration.addPathPatterns("/addTeacherComment");
        interceptorRegistration.addPathPatterns("/showDetailsOfTeacher");
        interceptorRegistration.addPathPatterns("/toAdminIndex");
        interceptorRegistration.addPathPatterns("/toShowDiscussByCUuid");
        interceptorRegistration.addPathPatterns("/showPopulation");
        interceptorRegistration.addPathPatterns("/teacherProblems");
        interceptorRegistration.addPathPatterns("/doTeacherComment");
        interceptorRegistration.addPathPatterns("/toSurveyTeacherDetails");
        interceptorRegistration.addPathPatterns("/toShowAllVegetables");
        interceptorRegistration.addPathPatterns("/toVegetablesProblems");
        interceptorRegistration.addPathPatterns("/doAllComment");
        interceptorRegistration.addPathPatterns("/doSomeComment");
        interceptorRegistration.addPathPatterns("/toShowVegetablesProblems");
        interceptorRegistration.addPathPatterns("/toSurveyDetails");
        interceptorRegistration.addPathPatterns("/removeAllSession");
        super.addInterceptors(registry);
    }
}
