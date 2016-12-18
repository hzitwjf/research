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
        try{
            List<ProblemVo> problemVoList= (List<ProblemVo>) session.getAttribute("restaurantSomeComment");
            //System.out.println(problemVoList.size());
            CommentVo commentVo=new CommentVo();
            String ip= (String) session.getAttribute("ip");
            commentVo.setCPeople(ip);
            List<DiscussVo> discussVos=new ArrayList<DiscussVo>();
            for (ProblemVo problemVo : problemVoList){
                DiscussVo discussVo=new DiscussVo();
                discussVo.setPId(problemVo.getPId());
                discussVo.setpContent(problemVo.getPContent());
                discussVo.setDResult(problemVo.getpAnswer());
                discussVos.add(discussVo);
            }
            commentVo.setDiscussVos(discussVos);
            int i=commentService.addComment(commentVo);
            if(i==1){
                return "redirect:/toSuccess";
            }else {
                return "redirect:/index.jsp";
            }
        }catch (Exception ex){
            ex.printStackTrace();
            return "redirect:/index.jsp";
        }
    }
    @RequestMapping("addAllComment")
    public String addAllComment(HttpSession session){
        try{
            List<VegetableVo> vegetableVoList=(List<VegetableVo>) session.getAttribute("restaurantVegetablesComment");
            List<ProblemVo> problemVoList=(List<ProblemVo>)session.getAttribute("restaurantProblemComment");
            //System.out.println(problemVoList.size());
            CommentVo commentVo=new CommentVo();
            String ip= (String) session.getAttribute("ip");
            commentVo.setCPeople(ip);
            List<DiscussVo> discussVos=new ArrayList<DiscussVo>();
            for (VegetableVo vegetableVo : vegetableVoList){
                DiscussVo discussVo=new DiscussVo();
                discussVo.setVId(vegetableVo.getVId());
                discussVo.setDResult(vegetableVo.getvDiscuss());
                discussVo.setpContent(vegetableVo.getVName());
                discussVos.add(discussVo);
            }
            for (ProblemVo problemVo : problemVoList){
                DiscussVo discussVo=new DiscussVo();
                discussVo.setPId(problemVo.getPId());
                discussVo.setpContent(problemVo.getPContent());
                discussVo.setDResult(problemVo.getpAnswer());
                discussVos.add(discussVo);
            }
            commentVo.setDiscussVos(discussVos);
            int i=commentService.addComment(commentVo);
            if(i==1){
                return "redirect:/toSuccess";
            }else {
                return "redirect:/toShowAllVegetables";
            }
        }catch (Exception ex){
            ex.printStackTrace();
            return "redirect:/toShowAllVegetables";
        }
    }
    @RequestMapping("toShowAllComment")
    public String toShowAllComment(@RequestParam("cModule") String cModule,HttpSession session){
        session.setAttribute("cModule",cModule);
        return "redirect:/showAllComment";
    }
    @RequestMapping("showAllComment")
    public String showAllComment(@RequestParam(name="page",defaultValue = "0")Integer page,ModelMap modelMap,HttpSession session){
        if(page<=0){
            page=0;
        }
        String module= (String) session.getAttribute("cModule");
        Page<Comment> commentPage=commentService.searchPageByParams(page,10,module);
        modelMap.put("commentPage",commentPage);
        modelMap.put("currentPage",page);
        return "showComment";
    }
}
