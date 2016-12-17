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
            Comment comment=new Comment();
            comment.setCUuid(cUuid);
            comment.setcCount("1");
            comment.setCPeople(commentVo.getCPeople());
            commentMapper.insertComment(comment);
            List<Discuss> discusseDetails=commentVo.getDiscussList();
            for (Discuss discussDetail : discusseDetails){
                Discuss discuss=new Discuss();
                discuss.setCUuid(cUuid);
                discuss.setVId(discussDetail.getVId());
                discuss.setPId(discussDetail.getPId());
                discuss.setDResult(discussDetail.getDResult());
                discussMapper.insertDiscuss(discuss);
            }
            return 1;
        }catch (Exception ex){
            ex.printStackTrace();
            return -1;
        }
    }
}
