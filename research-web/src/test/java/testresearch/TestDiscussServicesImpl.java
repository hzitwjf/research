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
        int page=0;
        int rowCount=10;
        String cUuid="13d45526-1a5b-4f54-ac5e-3c9444916062";
        Page<Discuss> discussPage=discussService.findDiscussPageByCUuid(page,rowCount,cUuid);
        discussPage.forEach(discuss -> System.out.println(discuss.toString()));
        System.out.println("总行数"+discussPage.getTotalElements());
        System.out.println("总页数"+discussPage.getTotalPages());
    }

    /**
     * 统计受欢迎度一般的菜品
     */
    @Test
    public void findDiscussOfNormalPopulation(){
        List<DiscussVo> discussVoList=discussService.findDiscussOfNormalPopulation();
        discussVoList.forEach(discussVo -> System.out.println(discussVo.toString()));
    }
    /**
     * 统计不受欢迎的菜品
     */
    @Test
    public void findDiscussOfNotPopulation(){
        List<DiscussVo> discussVoList=discussService.findDiscussOfNotPopulation();
        discussVoList.forEach(discussVo -> System.out.println(discussVo.toString()));
    }
    /**
     * 统计非常受欢迎度的菜品
     */
    @Test
    public void findDiscussOfPopulation(){
        List<DiscussVo> discussVoList=discussService.findDiscussOfPopulation();
        discussVoList.forEach(discussVo -> System.out.println(discussVo.toString()));
    }
}
