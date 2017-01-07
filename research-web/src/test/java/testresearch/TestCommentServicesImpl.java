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

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        String time=simpleDateFormat.format(date);
        System.out.println(time);
        //List<Comment> commentList=commentService.findAllTeacherAvgScore("讲师","2017-01-1");
        //commentList.forEach(comment -> System.out.println(comment.toString()));
    }
    @Test
    public void findAllCommentsByPageAndCdPeople(){
        int page=0;
        int rowCount=3;
        Page<Comment> commentPage=commentService.findCommentByParams(page,rowCount,"冼","讲师");
        commentPage.forEach(comment -> System.out.println(comment.toString()));
        System.out.println("总行数"+commentPage.getTotalElements());
        System.out.println("总页数"+commentPage.getTotalPages());
    }
    @Test
    public void findAllCommentsByName(){
        List<Comment> list=commentService.findCommentByCdPeople("叶青");
        list.forEach(comment -> comment.toString());
    }
}
/*
<c:if test="${commentPage.totalPages!=0}">
<div class="am-cf">
        共 ${commentPage.totalElements} 条记录
<a href="javascript:history.go(-1)" class="am-btn am-btn-primary" style="margin-left: 360px">返回</a>
<div class="am-fr">
<ul class="am-pagination">
<c:if test="${(currentPage-1)<0}">
<li class="am-disabled"><a href="showAllComment?page=${currentPage-1}">«</a></li>
</c:if>
<c:if test="${(currentPage-1)>=0}">
<li><a href="showAllComment?page=${currentPage-1}">«</a></li>
</c:if>
<c:forEach begin="0" end="${commentPage.totalPages-1}" var="p">
<li class="am-active"><a href="showAllComment?page=${p}">${p+1}</a></li>
</c:forEach>
<c:if test="${currentPage<(commentPage.totalPages-1)}">
<li><a href="showAllComment?page=${currentPage+1}">»</a></li>
</c:if>
<c:if test="${currentPage>=(commentPage.totalPages-1)}">
<li class="am-disabled"><a href="showAllComment?page=${currentPage+1}">»</a></li>
</c:if>
</ul>
</div>
</c:if>*/
