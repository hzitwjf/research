package testresearch;

import com.fc.platform.commons.page.Page;
import com.hzit.StartSpring;
import com.hzit.dao.entity.Comment;
import com.hzit.dao.entity.TeacherInfo;
import com.hzit.services.CommentService;
import com.hzit.services.TeacherService;
import com.hzit.vo.CommentVo;
import com.hzit.vo.DiscussVo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wjf13 on 2016/12/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(StartSpring.class)
public class TestTeacherServicesImpl {
    @Autowired
    private TeacherService teacherService;
    @Test
    public void findTeacherInfoByTeaModule(){
        List<TeacherInfo> teacherInfoList =teacherService.findTeacherInfoByModule(2);
        teacherInfoList.forEach(teacherInfo -> System.out.println(teacherInfo.toString()));
    }
    @Test
    public void findTeacherInfoByTeaId(){
        TeacherInfo teacherInfo=teacherService.findTeacherByTeaId(1);
        System.out.println(teacherInfo.toString());
    }
}
