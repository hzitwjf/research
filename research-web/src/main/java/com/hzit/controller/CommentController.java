package com.hzit.controller;

import com.hzit.services.CommentService;
import com.hzit.vo.DiscussVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/12/18.
 */
@Controller
public class CommentController {
    @Autowired
    private CommentService commentService;
    @RequestMapping("addComment")
    @ResponseBody
    public Object addComment(HttpSession session){

        return session.getAttribute("restaurantSomeComment");
    }
    @RequestMapping("addAllComment")
    @ResponseBody
    public Object addAllComment(HttpSession session,DiscussVo  discussVos){

        return discussVos;
    }
}
