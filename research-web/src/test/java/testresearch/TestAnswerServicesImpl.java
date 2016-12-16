package testresearch;

import com.hzit.StartSpring;
import com.hzit.dao.entity.Answer;
import com.hzit.dao.entity.Problem;
import com.hzit.services.AnswerService;
import com.hzit.services.ProblemServices;
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
public class TestAnswerServicesImpl {
    @Autowired
    private AnswerService answerService;
    @Test
    public void findAllAnswers(){
            List<Answer> answerList=answerService.findAllAnswer(null);
            answerList.forEach(answer -> System.out.println(answer.toString()));
        }
    }

