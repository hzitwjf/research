package com.hzit.services.impl;

import com.hzit.dao.entity.Comment;
import com.hzit.dao.entity.Discuss;
import com.hzit.dao.mapper.CommentMapper;
import com.hzit.dao.mapper.DiscussMapper;
import com.hzit.services.RestaurantCommentService;
import com.hzit.vo.CommentVo;
import com.hzit.vo.DiscussVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by wjf13 on 2016/12/18.
 */
@Service
public class RestaurantCommentServiceImpl implements RestaurantCommentService {
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private DiscussMapper discussMapper;
    @Override
    @Transactional
    public int addRestaurantComment(CommentVo commentVo) {
        try{
            String cUuid= UUID.randomUUID().toString();
            int pModule=0;
            Comment comment=new Comment();
            comment.setCUuid(cUuid);
            comment.setcCount("1");
            comment.setCPeople(commentVo.getCPeople());
            comment.setcModule(commentVo.getcModule());
            List<DiscussVo> discussVos=commentVo.getDiscussVos();
            for (DiscussVo discussVo1 : discussVos){
                pModule=discussVo1.getpModule();
               // System.out.println(discussVo1.toString());
            }
            if (pModule==0){
                comment.setcModule("餐饮");
            }else{
                comment.setcModule("未知模块");
            }
            commentMapper.insertComment(comment);
            for (DiscussVo discussVo : discussVos){
                Discuss discuss=new Discuss();
                discuss.setCUuid(cUuid);
                discuss.setVId(discussVo.getVId());
                discuss.setPId(discussVo.getPId());
                discuss.setDResult(discussVo.getDResult());
                discussMapper.insertDiscuss(discuss);
            }
            return 1;
        }catch (Exception ex){
            ex.printStackTrace();
            return -1;
        }
    }
}
