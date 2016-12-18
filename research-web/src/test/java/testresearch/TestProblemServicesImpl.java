package testresearch;

import com.hzit.StartSpring;
import com.hzit.dao.entity.Problem;
import com.hzit.dao.entity.Vegetable;
import com.hzit.services.ProblemServices;
import com.hzit.services.VegetableServices;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wjf13 on 2016/12/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(StartSpring.class)
public class TestProblemServicesImpl {
    @Autowired
    private ProblemServices problemServices;
    @Test
    public void findAllProblems(){
        Map map=new HashMap<>();
            map.put("pModule",0);
            List<Problem> problemList=problemServices.findAllProblem(map);
            problemList.forEach(problem -> System.out.println(problem.toString()));
        }
    @Test
    public void findOneProblems(){
        Problem problem=problemServices.findOneProblem(1);
        System.out.println(problem.toString());
    }
    }

