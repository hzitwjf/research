package com.hzit.controller;


import com.hzit.dao.entity.Answer;
import com.hzit.dao.entity.Problem;
import com.hzit.services.AnswerService;
import com.hzit.services.ProblemServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
    @RequestMapping("toError")
    public String toError(){
        return "500";
    }
    @RequestMapping("teacherProblems")
    public String showAllTeacherProblems(@RequestParam("pModule") Integer pModule,ModelMap modelMap){
        Map problemMap=new HashMap<>();
        problemMap.put("pModule",pModule);
        List<Problem> problemList=problemServices.findAllProblem(problemMap);
        modelMap.put("problem",problemList);
        List<Answer> answerList=answerService.findAllAnswer(null);
        modelMap.put("answer",answerList);
        return "showTeacherProblems";
    }
}
