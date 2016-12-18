package testresearch;

import com.fc.platform.commons.page.Page;
import com.hzit.StartSpring;
import com.hzit.dao.entity.Comment;
import com.hzit.dao.entity.Discuss;
import com.hzit.services.CommentService;
import com.hzit.services.DiscussService;
import com.hzit.vo.CommentVo;
import com.hzit.vo.DiscussVo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wjf13 on 2016/12/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(StartSpring.class)
public class TestDiscussServicesImpl {
    @Autowired
    private DiscussService discussService;
    @Test
    public void findCommentDiscussByPage(){
        int page=3;
        int rowCount=10;
        String cUuid="b71a8687-0e3f-44e7-ac8a-e4c5d16f5cbe";
        Page<Discuss> discussPage=discussService.findDiscussPageByCUuid(page,rowCount,cUuid);
        discussPage.forEach(discuss -> System.out.println(discuss.toString()));
        System.out.println("总行数"+discussPage.getTotalElements());
        System.out.println("总页数"+discussPage.getTotalPages());
    }
}
