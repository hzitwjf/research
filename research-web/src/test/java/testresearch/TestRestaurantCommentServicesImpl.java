package testresearch;

import com.hzit.StartSpring;
import com.hzit.dao.entity.Comment;
import com.hzit.dao.entity.Discuss;
import com.hzit.dao.entity.Vegetable;
import com.hzit.services.RestaurantCommentService;
import com.hzit.services.VegetableServices;
import com.hzit.vo.CommentVo;
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
        Discuss discuss=new Discuss();
        discuss.setVId(3);
        discuss.setDResult("喜欢吃");
        Discuss discuss1=new Discuss();
        discuss1.setPId(1);
        discuss1.setDResult("男");
        List<Discuss> discussList=new ArrayList<Discuss>();
        discussList.add(discuss);
        discussList.add(discuss1);
        commentVo.setDiscussList(discussList);
        int i=restaurantCommentService.addRestaurantComment(commentVo);
        System.out.println("共影响"+i+"行");
    }
}
