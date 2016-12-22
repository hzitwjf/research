package com.hzit.controller;


import com.hzit.dao.entity.Answer;
import com.hzit.dao.entity.Problem;
import com.hzit.dao.entity.TeacherInfo;
import com.hzit.services.AnswerService;
import com.hzit.services.CommentService;
import com.hzit.services.ProblemServices;
import com.hzit.services.TeacherService;
import com.hzit.vo.ProblemVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/19.
 */
@Controller
public class TeacherController {
    @Autowired
    private ProblemServices problemServices;
    @Autowired
    private AnswerService answerService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private CommentService commentService;
    @RequestMapping("toError")
    public String toError(){
        return "500";
    }
    @RequestMapping("teacherProblems")
    public String showAllTeacherProblems(@RequestParam("pModule") Integer pModule,ModelMap modelMap,HttpSession session){
        /*String people=(String)session.getAttribute("ip");
        Integer peopleCount=commentService.findPeopleCount(people);
        if (peopleCount>1 && peopleCount!=null){
            return "index";
        }else {*/
            Map problemMap=new HashMap<>();
            problemMap.put("pModule",pModule);
            List<Problem> problemList=problemServices.findAllProblem(problemMap);
            modelMap.put("problem",problemList);
            List<TeacherInfo> teacherInfoList=teacherService.findTeacherInfoByModule(pModule);
            modelMap.put("teacher",teacherInfoList);
            List<Answer> answerList=answerService.findAllAnswer(null);
            modelMap.put("answer",answerList);
            //session.setAttribute("pModule",pModule);
            if(pModule==1){
                return "showTeacherProblems";
            }else if (pModule==2){
                return "showHeadTeacherProblem";
            }else {
                return "redirect:/toError";
            }
        //}
    }
    @RequestMapping("doTeacherComment")
    @ResponseBody
    public Object doTeacherComment(@RequestParam("analyst") String [] analyst,@RequestParam("teaId") Integer teaId,ModelMap modelMap,HttpSession session) {
        /*String people=(String)session.getAttribute("ip");
        Integer peopleCount=commentService.findPeopleCount(people);
        if (peopleCount>1 && peopleCount!=null){
            return "index";
        }else {*/
            try {
                List<ProblemVo> problemVos = new ArrayList<ProblemVo>();
                for (int j = 0; analyst != null && j < analyst.length; j++) {
                    ProblemVo problemVo = new ProblemVo();
                    if (j % 2 == 0) {
                        problemVo.setPId(Integer.parseInt(analyst[j]));
                        problemVo.setpAnswer(analyst[j + 1]);
                        Problem problem = problemServices.findOneProblem(problemVo.getPId());
                        problemVo.setPContent(problem.getPContent());
                        problemVo.setPModule(problem.getPModule());
                        Answer answer = answerService.findOneAnswer(problemVo.getpAnswer(), problemVo.getPId());
                        if (answer != null) {
                            problemVo.setpScore(answer.getAwSc());
                            problemVos.add(problemVo);
                        } else {
                            problemVos.add(problemVo);
                        }
                    } else {
                        System.out.println("");
                    }
                }
                modelMap.put("problemVos", problemVos);
                TeacherInfo teacherInfo = teacherService.findTeacherByTeaId(teaId);
                //modelMap.put("teacher",teacherInfo);
                session.setAttribute("teaName", teacherInfo.getTeaName());
                session.setAttribute("teacherComment", problemVos);
                //return "SurveyTeacherDetails";
                //return problemVos;
                return 1;
            } catch (Exception ex) {
                ex.printStackTrace();
                //return "redirect:/toError";
                return -1;
            }
        }
    //}
    @RequestMapping("toSurveyTeacherDetails")
    public String toSurveyTeacherDetails(){
        return "SurveyTeacherDetails";
    }
}
