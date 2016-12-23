package com.hzit.controller;

import com.alibaba.fastjson.JSON;
import com.hzit.dao.entity.Answer;
import com.hzit.dao.entity.Problem;
import com.hzit.dao.entity.Vegetable;
import com.hzit.services.AnswerService;
import com.hzit.services.CommentService;
import com.hzit.services.ProblemServices;
import com.hzit.services.VegetableServices;
import com.hzit.vo.AnswerVo;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    @Autowired
    private CommentService commentService;
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
        return ip;
    }
    @RequestMapping("showAllVegetables")
    public String showAllVegetables(ModelMap modelMap){
        List<Vegetable> vegetableList=vegetableServices.findAllVegetable(null);
        modelMap.put("vagetableList",vegetableList);
        Map problemMap=new HashMap<>();
        problemMap.put("pModule",0);
        List<Problem> problemList=problemServices.findAllProblem(problemMap);
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
        Map problemMap=new HashMap<>();
        problemMap.put("pModule",0);
        List<Problem> problemList=problemServices.findAllProblem(problemMap);
        modelMap.put("problem",problemList);
        List<Answer> answerList=answerService.findAllAnswer(null);
        modelMap.put("answer",answerList);
        return "main";
    }
    @RequestMapping("toVegetablesProblems")
    public String toVegetablesProblems(){
        return "redirect:/vegetablesProblems";
    }
    @RequestMapping("toSuccess")
    public String toSuccess(){
        return "cuccess";
    }
    @RequestMapping("doAllComment")
    @ResponseBody
    public Object doAllComment(@RequestParam("vegetables")String  vegetables,@RequestParam("analyst") String  analyst,HttpSession session){
        /*String ip= (String) session.getAttribute("ip");
        Integer people=commentService.findPeopleCount(ip);
        if (people>1 && people!=null){
            return "index";
        }else {*/
            try {
                List<VegetableVo> varray= JSON.parseArray(vegetables,VegetableVo.class);
                List<AnswerVo> array= JSON.parseArray(analyst,AnswerVo.class);
                List<VegetableVo> vegetableVos=new ArrayList<>();
                List<ProblemVo> problemVos=new ArrayList<>();
                for (int i=0;vegetables !=null && i<varray.size();i++){
                    VegetableVo vegetableVo=new VegetableVo();
                        vegetableVo.setVId(varray.get(i).getVId());
                        vegetableVo.setvDiscuss(varray.get(i).getVeDiscuss());
                        Vegetable vegetable=vegetableServices.findOneVegetable(vegetableVo.getVId());
                        vegetableVo.setVName(vegetable.getVName());
                        vegetableVos.add(vegetableVo);
                }
                for (int j=0;analyst !=null && j<array.size();j++){
                    ProblemVo problemVo=new ProblemVo();
                        problemVo.setPId(array.get(j).getPrId());
                        problemVo.setpAnswer(array.get(j).getAwContent());
                        Problem problem=problemServices.findOneProblem(problemVo.getPId());
                        problemVo.setPContent(problem.getPContent());
                        problemVo.setPModule(problem.getPModule());
                        Answer answer=answerService.findOneAnswer(problemVo.getpAnswer(),problemVo.getPId());
                        if (answer!=null){
                            problemVo.setpScore(answer.getAwSc());
                            problemVos.add(problemVo);
                        }else {
                            problemVos.add(problemVo);
                        }
                }
                session.setAttribute("restaurantVegetablesComment",vegetableVos);
                session.setAttribute("restaurantProblemComment",problemVos);
                //return "SurveyDetails";
                return 1;
            }catch (Exception ex){
                ex.printStackTrace();
                //return "redirect:/toError";
                return -1;
            }
        //}
    }
    @RequestMapping("doSomeComment")
    @ResponseBody
    public Object doSomeComment(@RequestParam("analyst") String  analyst,HttpSession session) {
       /* String ip= (String) session.getAttribute("ip");
        Integer people=commentService.findPeopleCount(ip);
        if (people>1 && people!=null){
            return "index";
        }else {*/
            try {
                List<ProblemVo> problemVos = new ArrayList<ProblemVo>();
                List<AnswerVo> array= JSON.parseArray(analyst,AnswerVo.class);
                for (int j = 0; analyst != null && j < array.size(); j++) {
                        ProblemVo problemVo = new ProblemVo();
                        problemVo.setPId(array.get(j).getPrId());
                        problemVo.setpAnswer(array.get(j).getAwContent());
                        Problem problem = problemServices.findOneProblem(problemVo.getPId());
                        problemVo.setPContent(problem.getPContent());
                        problemVo.setPModule(problem.getPModule());
                        Answer answer=answerService.findOneAnswer(problemVo.getpAnswer(),problemVo.getPId());
                        if (answer!=null){
                            problemVo.setpScore(answer.getAwSc());
                            problemVos.add(problemVo);
                        }else {
                            problemVos.add(problemVo);
                        }
                }
                //modelMap.put("problemVos",problemVos);
                session.setAttribute("restaurantSomeComment",problemVos);
                //return "showVegetablesProblems";
                return 1;
            }catch (Exception ex){
                ex.printStackTrace();
                //return "redirect:/toError";
                return -1;
            }
        //}
    }
    @RequestMapping("toRestaurantIndex")
    public String toRestaurantIndex(){
        return "RestaurantIndex";
    }
    @RequestMapping("toShowVegetablesProblems")
    public String toShowVegetablesProblems(HttpSession session){
        /*List<ProblemVo> problemVoList= (List<ProblemVo>) session.getAttribute("restaurantSomeComment");
        problemVoList.forEach(problemVo -> System.out.println(problemVo.toString()));*/
        return "showVegetablesProblems";
    }
    @RequestMapping("toSurveyDetails")
    public String toSurveyDetails(){
        return "SurveyDetails";
    }
}
