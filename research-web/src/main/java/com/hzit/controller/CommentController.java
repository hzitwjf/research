package com.hzit.controller;

import com.fc.platform.commons.page.Page;
import com.hzit.dao.entity.Comment;
import com.hzit.services.CommentService;
import com.hzit.vo.CommentVo;
import com.hzit.vo.DiscussVo;
import com.hzit.vo.ProblemVo;
import com.hzit.vo.VegetableVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/18.
 */
@Controller
public class CommentController {
    @Autowired
    private CommentService commentService;
    @RequestMapping("addComment")
    public String addComment(HttpSession session){
       /* String people= (String) session.getAttribute("ip");
        Integer peopleCount=commentService.findPeopleCount(people);
        if (peopleCount >1 && peopleCount !=null){
            return "index";
        }else {*/
            try {
                int count = 0;
                List<ProblemVo> problemVoList = (List<ProblemVo>) session.getAttribute("restaurantSomeComment");
                //System.out.println(problemVoList.size());
                CommentVo commentVo = new CommentVo();
                String ip = (String) session.getAttribute("ip");
                commentVo.setCPeople(ip);
                List<DiscussVo> discussVos = new ArrayList<DiscussVo>();
                for (ProblemVo problemVo : problemVoList) {
                    DiscussVo discussVo = new DiscussVo();
                    discussVo.setPId(problemVo.getPId());
                    discussVo.setpContent(problemVo.getPContent());
                    discussVo.setDResult(problemVo.getpAnswer());
                    if (problemVo.getpScore() != null) {
                        discussVo.setdScore(String.valueOf(problemVo.getpScore()));
                        // System.out.println(discussVo.getdScore());
                        count = count + problemVo.getpScore();
                    } else {
                        discussVo.setdScore(null);
                    }
                    discussVos.add(discussVo);
                }
                commentVo.setDiscussVos(discussVos);
                commentVo.setcScore(count);
                int i = commentService.addComment(commentVo);
                if (i == 1) {
                    commentService.removeAllSession(session);
                    return "redirect:/toSuccess";
                } else {
                    return "redirect:/toError";
                }
            } catch (Exception ex) {
                ex.printStackTrace();
                return "redirect:/toError";
            }
       // }
    }
    @RequestMapping("addAllComment")
    public String addAllComment(HttpSession session){
       /* String people= (String) session.getAttribute("ip");
        Integer peopleCount=commentService.findPeopleCount(people);
        if (peopleCount >1 && peopleCount !=null){
            return "index";
        }else {*/
            try {
                int count = 0;
                List<VegetableVo> vegetableVoList = (List<VegetableVo>) session.getAttribute("restaurantVegetablesComment");
                List<ProblemVo> problemVoList = (List<ProblemVo>) session.getAttribute("restaurantProblemComment");
                //System.out.println(problemVoList.size());
                CommentVo commentVo = new CommentVo();
                String ip = (String) session.getAttribute("ip");
                commentVo.setCPeople(ip);
                List<DiscussVo> discussVos = new ArrayList<DiscussVo>();
                for (VegetableVo vegetableVo : vegetableVoList) {
                    DiscussVo discussVo = new DiscussVo();
                    discussVo.setVId(vegetableVo.getVId());
                    discussVo.setDResult(vegetableVo.getvDiscuss());
                    discussVo.setpContent(vegetableVo.getVName());
                    discussVos.add(discussVo);
                }
                for (ProblemVo problemVo : problemVoList) {
                    DiscussVo discussVo = new DiscussVo();
                    discussVo.setPId(problemVo.getPId());
                    discussVo.setpContent(problemVo.getPContent());
                    discussVo.setDResult(problemVo.getpAnswer());
                    if (problemVo.getpScore() != null) {
                        discussVo.setdScore(String.valueOf(problemVo.getpScore()));
                        // System.out.println(discussVo.getdScore());
                        count = count + problemVo.getpScore();
                    } else {
                        discussVo.setdScore(null);
                    }
                    discussVos.add(discussVo);
                }
                commentVo.setDiscussVos(discussVos);
                commentVo.setcScore(count);
                int i = commentService.addComment(commentVo);
                if (i == 1) {
                    commentService.removeAllSession(session);
                    return "redirect:/toSuccess";
                } else {
                    return "redirect:/toError";
                }
            } catch (Exception ex) {
                ex.printStackTrace();
                return "redirect:/toError";
            }
        //}
    }
    @RequestMapping("toShowAllComment")
    public String toShowAllComment(@RequestParam("cModule") String cModule,HttpSession session){
        session.setAttribute("cModule",cModule);
        return "redirect:/showAllComment";
    }
    @RequestMapping("showAllComment")
    public String showAllComment(@RequestParam(name="page",defaultValue = "0")Integer page,ModelMap modelMap,HttpSession session){
        /*String ip= (String) session.getAttribute("ip");
        Integer people=commentService.findPeopleCount(ip);
        if (people >1 && people !=null){
            return "index";
        }else {*/
            if(page<=0){
                page=0;
            }
            String module= (String) session.getAttribute("cModule");
            Page<Comment> commentPage=commentService.searchPageByParams(page,8,module);
            modelMap.put("commentPage",commentPage);
            modelMap.put("currentPage",page);
            return "showComment";
        //}
    }
    @RequestMapping("addTeacherComment")
    public String addTeacherComment(HttpSession session){
        /*String peopel= (String) session.getAttribute("ip");
        Integer peopleCount=commentService.findPeopleCount(peopel);
        if (peopleCount>1 && peopleCount!=null){
            return "index";
        }else {*/
            try{
                int count=0;
                //int moduleId= (int) session.getAttribute("pModule");
                List<ProblemVo> problemVoList= (List<ProblemVo>) session.getAttribute("teacherComment");
                //System.out.println(problemVoList.size());
                CommentVo commentVo=new CommentVo();
                String ip= (String) session.getAttribute("ip");
                commentVo.setCPeople(ip);
                String teacherName=(String)session.getAttribute("teaName");
                commentVo.setCdPeople(teacherName);
                List<DiscussVo> discussVos=new ArrayList<DiscussVo>();
                for (ProblemVo problemVo : problemVoList){
                    DiscussVo discussVo=new DiscussVo();
                    discussVo.setPId(problemVo.getPId());
                    discussVo.setpContent(problemVo.getPContent());
                    discussVo.setDResult(problemVo.getpAnswer());
                    discussVo.setpModule(problemVo.getPModule());
                    if (problemVo.getpScore()!=null){
                        discussVo.setdScore(String.valueOf(problemVo.getpScore()));
                        // System.out.println(discussVo.getdScore());
                        count=count+problemVo.getpScore();
                    }else {
                        discussVo.setdScore(null);
                    }
                    discussVos.add(discussVo);
                }
                commentVo.setDiscussVos(discussVos);
                commentVo.setcScore(count);
                int i=commentService.addTeacherComment(commentVo);
                if(i==1){
                    commentService.removeAllSession(session);
                    return "redirect:/toSuccess";
                }else {
                    return "redirect:/toError";
                }
            }catch (Exception ex){
                ex.printStackTrace();
                return "redirect:/toError";
            }
        //}
    }
    @RequestMapping("showDetailsOfTeacher")
    public String showDetailsOfTeacher(@RequestParam("cModule") String cModule,@RequestParam("time") String time, ModelMap modelMap){
        try {
            String month="";
            int year=0;
            List<Comment> commentList=commentService.findAllTeacherAvgScore(cModule,time);
            modelMap.put("avgScore",commentList);
            for (Comment comment : commentList){
                month=comment.getCTime();
                year=comment.getCId();
            }
            modelMap.put("year",year);
            modelMap.put("month",month);
            if (cModule.equals("讲师")){
                return "showDetailsOfTeacherAvgScore";
            }else if (cModule.equals("教务")){
                return "showDetailsOfHeadTeacherAvgScore";
            }else {
                return "redirect:/toError";
            }
        }catch (Exception ex){
            ex.printStackTrace();
            return "redirect:/toError";
        }
    }
    @RequestMapping("toAdminIndex")
    public String toAdminIndex(){
        return "adminIndexIndex";
    }
}
