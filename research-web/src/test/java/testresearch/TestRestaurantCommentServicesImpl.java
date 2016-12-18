package testresearch;

import com.hzit.StartSpring;
import com.hzit.dao.entity.Comment;
import com.hzit.dao.entity.Discuss;
import com.hzit.dao.entity.Vegetable;
import com.hzit.services.RestaurantCommentService;
import com.hzit.services.VegetableServices;
import com.hzit.vo.CommentVo;
import com.hzit.vo.DiscussVo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by wjf13 on 2016/12/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(StartSpring.class)
public class TestRestaurantCommentServicesImpl {
    @Autowired
    private RestaurantCommentService restaurantCommentService;
    @Test
    public void addRestaurantComment(){
        CommentVo commentVo=new CommentVo();
        commentVo.setCPeople("192.168.0.111");
        DiscussVo discussVo=new DiscussVo();
        discussVo.setVId(3);
        discussVo.setDResult("喜欢吃");
        DiscussVo discussVo1=new DiscussVo();
        discussVo1.setPId(1);
        discussVo1.setDResult("男");
        discussVo1.setpModule(0);
        List<DiscussVo> discussVos=new ArrayList<DiscussVo>();
        discussVos.add(discussVo);
        discussVos.add(discussVo1);
       commentVo.setDiscussVos(discussVos);
        int i=restaurantCommentService.addRestaurantComment(commentVo);
        System.out.println("共影响"+i+"行");
    }
}
