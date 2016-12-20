package testresearch;

import com.fc.platform.commons.page.Page;
import com.hzit.StartSpring;
import com.hzit.dao.entity.Comment;
import com.hzit.services.CommentService;
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
public class TestCommentServicesImpl {
    @Autowired
    private CommentService commentService;
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
        int i=commentService.addComment(commentVo);
        System.out.println("共影响"+i+"行");
    }
    @Test
    public void findAllCommentsByPage(){
        int page=0;
        int rowCount=3;
        Page<Comment> commentPage=commentService.searchPageByParams(page,rowCount,"餐饮");
        commentPage.forEach(comment -> System.out.println(comment.toString()));
        System.out.println("总行数"+commentPage.getTotalElements());
        System.out.println("总页数"+commentPage.getTotalPages());
    }
    @Test
    public void findPeopleCount(){
        int i=commentService.findPeopleCount("127.0.0.1");
        System.out.println(i);
    }
    @Test
    public void findAllComments(){
       List<Comment> commentList=commentService.findAllComment();
        commentList.forEach(comment -> System.out.println(comment.toString()));
    }
    //SELECT AVG(c_score),c_score FROM COMMENT WHERE c_module='讲师' GROUP BY cd_people
    @Test
    public void findAllTeacherAvgScore(){
        List<Comment> commentList=commentService.findAllTeacherAvgScore("教务");
        commentList.forEach(comment -> System.out.println(comment.toString()));
    }
}
