package com.hzit.services.impl;

import com.hzit.dao.entity.Comment;
import com.hzit.dao.entity.Discuss;
import com.hzit.dao.mapper.CommentMapper;
import com.hzit.dao.mapper.DiscussMapper;

import com.hzit.services.CommentService;
import com.hzit.vo.CommentVo;
import com.hzit.vo.DiscussVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.UUID;

/**
 * Created by wjf13 on 2016/12/18.
 */
@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private DiscussMapper discussMapper;
    @Override
    @Transactional
    public int addComment(CommentVo commentVo) {
        try{
            String cUuid= UUID.randomUUID().toString();
            int pModule=0;
            Comment comment=new Comment();
            comment.setCUuid(cUuid);
            comment.setcCount("1");
            comment.setCPeople(commentVo.getCPeople());
            List<DiscussVo> discussVos=commentVo.getDiscussVos();
            for (DiscussVo discussVo1 : discussVos){
                pModule=discussVo1.getpModule();
               // System.out.println(discussVo1.toString());
            }
            switch (pModule){
                case 0:
                    comment.setcModule("餐饮");
                    break;
                case 1:
                    comment.setcModule("讲师");
                    break;
                case 2:
                    comment.setcModule("教务");
                    break;
                default:
                    return -1;
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
