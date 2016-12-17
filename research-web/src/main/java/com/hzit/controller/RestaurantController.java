package com.hzit.controller;

import com.hzit.dao.entity.Answer;
import com.hzit.dao.entity.Problem;
import com.hzit.dao.entity.Vegetable;
import com.hzit.services.AnswerService;
import com.hzit.services.ProblemServices;
import com.hzit.services.VegetableServices;
import com.hzit.vo.ProblemVo;
import com.hzit.vo.VegetableVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/12/15.
 */
@Controller
public class RestaurantController extends BaseController{
    @Autowired
    private VegetableServices vegetableServices;
    @Autowired
    private ProblemServices problemServices;
    @Autowired
    private AnswerService answerService;
    @RequestMapping("ip")
    @ResponseBody
    public String ip(HttpSession session,HttpServletRequest request){
        if (request.getHeader("x-forwarded-for") == null) {
            session.setAttribute("remoteAddr",request.getRemoteAddr());
        }else {
            session.setAttribute("header", request.getHeader("x-forwarded-for"));
        }
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknow".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        session.setAttribute("ip", ip);
        return ip;
    }
    @RequestMapping("showAllVegetables")
    public String showAllVegetables(ModelMap modelMap){
        List<Vegetable> vegetableList=vegetableServices.findAllVegetable(null);
        modelMap.put("vagetableList",vegetableList);
        List<Problem> problemList=problemServices.findAllProblem(null);
        modelMap.put("problem",problemList);
        List<Answer> answerList=answerService.findAllAnswer(null);
        modelMap.put("answer",answerList);
        return "showAllVegetablesAndProblem";
    }
    @RequestMapping("toShowAllVegetables")
    public String toShow(){
        return "redirect:/showAllVegetables";
    }
    @RequestMapping("vegetablesProblems")
    public String  vegetablesProblems(ModelMap modelMap){
        List<Problem> problemList=problemServices.findAllProblem(null);
        modelMap.put("problem",problemList);
        List<Answer> answerList=answerService.findAllAnswer(null);
        modelMap.put("answer",answerList);
        return "main";
    }
    @RequestMapping("toVegetablesProblems")
    public String toVegetablesProblems(){
        return "redirect:/vegetablesProblems";
    }
    @RequestMapping("toCuccess")
    public String toCuccess(){
        return "cuccess";
    }
    @RequestMapping("toComment")
    public String toComment(){
        return "redirect:/doComment";
    }
    @RequestMapping("doAllComment")
    @ResponseBody
    public Object knowIp(@RequestParam("vegetables")String [] vegetables,@RequestParam("analyst") String [] analyst,HttpSession session){
        //@RequestParam("VId") String [] VId,@RequestParam("VName") String [] VName
        List<VegetableVo> vegetableVos=new ArrayList<VegetableVo>();
        List<ProblemVo> problemVos=new ArrayList<ProblemVo>();
        List list=new ArrayList();
        for (int i=0;vegetables !=null && i<vegetables.length;i++){
            /*System.out.println(vegetables[i]);
            list.add(vegetables[i]);*/
            VegetableVo vegetableVo=new VegetableVo();
            if (i%2==0){
                vegetableVo.setVId(Integer.parseInt(vegetables[i]));
                vegetableVo.setvDiscuss(vegetables[i+1]);
                System.out.println(vegetableVo.toString());
                vegetableVos.add(vegetableVo);
            }else {
                System.out.println("");
            }
        }
        for (int j=0;analyst !=null && j<analyst.length;j++){
            /*System.out.println(analyst[j]);
            list.add(analyst[j]);*/
            ProblemVo problemVo=new ProblemVo();
            if (j%2==0){
                problemVo.setPId(Integer.parseInt(analyst[j]));
                problemVo.setpAnswer(analyst[j]+1);
                System.out.println(problemVo.toString());
                problemVos.add(problemVo);
            }else {
                System.out.println("");
            }
        }
        list.add(vegetableVos);
        list.add(problemVos);
        return list;
    }
}
