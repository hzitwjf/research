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

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wjf13 on 2016/12/19.
 */
@Controller
public class DiscussController {
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
    public String showDiscussByCUuid(@RequestParam(name = "page", defaultValue = "0") Integer page,HttpSession session, ModelMap modelMap) {
        if (page <= 0) {
            page = 0;
        }
        String uuid=(String)session.getAttribute("cUuid");
        Page<Discuss> discussPage=discussService.findDiscussPageByCUuid(page,10,uuid);
        List<DiscussVo> discussVoList=new ArrayList<>();
        for (Discuss discuss : discussPage){
            DiscussVo discussVo=new DiscussVo();
            discussVo.setDId(discuss.getDId());
            discussVo.setCUuid(discuss.getCUuid());
            discussVo.setVId(discuss.getVId());
            discussVo.setPId(discuss.getPId());
            discussVo.setDResult(discuss.getDResult());
            Problem problem=problemServices.findOneProblem(discussVo.getPId());
            String content=problem.getPContent();
            //System.out.println(content);
            discussVo.setpContent(content);
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
}
