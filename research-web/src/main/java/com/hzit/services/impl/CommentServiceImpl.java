package com.hzit.services.impl;

import com.fc.platform.commons.page.Page;
import com.fc.platform.commons.page.PageRequest;
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

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.*;

/**
 * Created by wjf13 on 2016/12/18.
 */
@Service
public class CommentServiceImpl implements CommentService  {
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
            comment.setcScore(commentVo.getcScore());
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
                if (discussVo.getdScore()!=null){
                    discuss.setdScore(String.valueOf(discussVo.getdScore()));
                }else {
                    discuss.setdScore("意见反馈题，请根据实际反馈评分");
                }
                discussMapper.insertDiscuss(discuss);
            }
            return 1;
        }catch (Exception ex){
            ex.printStackTrace();
            return -1;
        }
    }

    @Override
    public Page<Comment> searchPageByParams(int page, int rowCount,String cModule) {
        Map map=new HashMap();
        map.put("cModule",cModule);
        PageRequest pageRequest=new PageRequest(page,rowCount);
        Page<Comment> commentPage=commentMapper.searchCommentByParams(map,pageRequest);
        return commentPage;
    }
    @Override
    public Page<Comment> findCommentByParams(int page, int rowCount,String cdPeople,String cModule) {
        PageRequest pageRequest=new PageRequest(page,rowCount);
        Page<Comment> commentPage=commentMapper.findCommentByParams(cdPeople,cModule, pageRequest);
        return commentPage;
    }
    @Override
    public Boolean removeAllSession(HttpSession session) {
        try{
            ServletContext application = session.getServletContext();
            String ip= (String) session.getAttribute("ip");
            List<String> list=new ArrayList<>();
            list.add(ip);
            application.setAttribute("ipList",list);
            Enumeration e=session.getAttributeNames();
            while(e.hasMoreElements()){ String sessionName=(String)e.nextElement();
                System.out.println("存在的session有："+sessionName);
                session.removeAttribute(sessionName);
            }
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public int findPeopleCount(String cPeople) {
        return commentMapper.findPeopleCount(cPeople);
    }

    @Override
    public List<Comment> findAllComment() {
        return commentMapper.searchCommentByParams(null);
    }

    @Override
    public List<Comment> findAllTeacherAvgScore(String cModule,String ymTime) {
        List<Comment> list=commentMapper.searchCommentBycModule(cModule,ymTime);
        List<Comment> commentList=new ArrayList<Comment>();
        for (Comment c : list){
            Comment comment=new Comment();
            comment.setCUuid(c.getCUuid());
            comment.setCTime(c.getCTime());
            comment.setcModule(c.getcModule());
            comment.setCdPeople(c.getCdPeople());
            comment.setcCount(c.getcCount());
            comment.setCId(c.getCId());
            comment.setCPeople(c.getCPeople());
            double d=c.getcScore();
            BigDecimal b   =   new   BigDecimal(d);
            double   f  =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();
            comment.setcScore(f);
            commentList.add(comment);
        }
        return commentList;
    }

    @Override
    public List<Comment> findCommentByCdPeople(String cdPeople) {
        return commentMapper.searchCommentByName(cdPeople);
    }

    @Override
    @Transactional
    public int addTeacherComment(CommentVo commentVo) {
        try{
            String cUuid= UUID.randomUUID().toString();
            int pModule=0;
            Comment comment=new Comment();
            comment.setCUuid(cUuid);
            comment.setcCount("1");
            comment.setCPeople(commentVo.getCPeople());
            comment.setcScore(commentVo.getcScore());
            comment.setCdPeople(commentVo.getCdPeople());
            List<DiscussVo> discussVos=commentVo.getDiscussVos();
            for (DiscussVo discussVo1 : discussVos){
                pModule=discussVo1.getpModule();
                //System.out.println(discussVo1.toString());
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
                if (discussVo.getdScore()!=null){
                    discuss.setdScore(String.valueOf(discussVo.getdScore()));
                }else {
                    discuss.setdScore("意见反馈题，请根据实际反馈评分");
                }
                discussMapper.insertDiscuss(discuss);
            }
            return 1;
        }catch (Exception ex){
            ex.printStackTrace();
            return -1;
        }
    }
}
