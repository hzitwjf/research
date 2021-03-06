package com.hzit.controller;

import com.fc.platform.commons.page.Page;
import com.hzit.dao.entity.Comment;
import com.hzit.dao.entity.Discuss;
import com.hzit.dao.entity.Problem;
import com.hzit.dao.entity.Vegetable;
import com.hzit.services.DiscussService;
import com.hzit.services.ProblemServices;
import com.hzit.services.VegetableServices;
import com.hzit.vo.DiscussVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

/**
 * Created by wjf13 on 2016/12/19.
 */
@Controller
public class DiscussController {
    /*@Autowired
    private HttpServletRequest request;*/
    @Autowired
    private DiscussService discussService;
    @Autowired
    private VegetableServices vegetableServices;
    @Autowired
    private ProblemServices problemServices;
    @RequestMapping("toShowDiscussByCUuid")
    public String toShowDiscussByCUuid(@RequestParam("cUuid") String cUuid, HttpSession session){
        session.setAttribute("cUuid",cUuid);
        return "redirect:/showDiscussByCUuid";
    }
    @RequestMapping("showDiscussByCUuid")
    public String showDiscussByCUuid(HttpSession session, ModelMap modelMap) {
        /*if (page <= 0) {
        @RequestParam(name = "page", defaultValue = "0")
            page = 0;
        }*/
        Integer page=0;
        String uuid=(String)session.getAttribute("cUuid");
        Page<Discuss> discussPage=discussService.findDiscussPageByCUuid(page,200,uuid);
        List<DiscussVo> discussVoList=new ArrayList<>();
        for (Discuss discuss : discussPage){
            DiscussVo discussVo=new DiscussVo();
            discussVo.setDId(discuss.getDId());
            discussVo.setCUuid(discuss.getCUuid());
            discussVo.setVId(discuss.getVId());
            discussVo.setPId(discuss.getPId());
            discussVo.setDResult(discuss.getDResult());
            discussVo.setdScore(discuss.getdScore());
            if (discussVo.getPId()!=null){
                Problem problem=problemServices.findOneProblem(discussVo.getPId());
                String content=problem.getPContent();
                //System.out.println(content);
                discussVo.setpContent(content);
            }
            Vegetable vegetable=vegetableServices.findOneVegetable(discussVo.getVId());
            String vegetableName=vegetable.getVName();
            //System.out.println(vegetableName);
            discussVo.setvName(vegetableName);
            //System.out.println(discussVo.toString());
            discussVoList.add(discussVo);
        }
       modelMap.put("discussVoList", discussVoList);
        modelMap.put("currentPage", page);
        modelMap.put("totalElements",discussPage.getTotalElements());
        modelMap.put("totalPages",discussPage.getTotalPages());
        return "showDiscuss";
    }
    @RequestMapping("showPopulation")
    public String showPopulation(ModelMap modelMap){
        List<DiscussVo> population=discussService.findDiscussOfPopulation();
        List<DiscussVo> notPopulation=discussService.findDiscussOfNotPopulation();
        List<DiscussVo> normalPopulation=discussService.findDiscussOfNormalPopulation();
        modelMap.put("population",population);
        modelMap.put("notPopulation",notPopulation);
        modelMap.put("normalPopulation",normalPopulation);
        return "showDetailsOfPopulation";
    }
    @RequestMapping("removeAllSession")
    @ResponseBody
    public Boolean removeAllSession(HttpServletRequest request) {
        try {
            ServletContext servletContext=request.getSession().getServletContext();
            List<String> list= (List<String>) servletContext.getAttribute("ipList");
            if (list!=null && list.size()!=0){
                for (int i=0;i<list.size();i++){
                    System.out.println("全局域里的IP："+list.get(i));
                }
            }
            servletContext.removeAttribute("ipList");
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
            return false;
        }
    }
}
