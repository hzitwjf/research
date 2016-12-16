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

import java.util.List;

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
            List<Problem> problemList=problemServices.findAllProblem(null);
            problemList.forEach(problem -> System.out.println(problem.toString()));
        }
    }

