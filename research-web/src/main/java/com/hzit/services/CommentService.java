package com.hzit.services;

import com.fc.platform.commons.page.Page;
import com.hzit.dao.entity.Comment;
import com.hzit.vo.CommentVo;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by wjf13 on 2016/12/18.
 */
public interface CommentService {
    int addComment(CommentVo commentVo);
    int addTeacherComment(CommentVo commentVo);
    Page<Comment> searchPageByParams(int page, int rowCount,String cModule );
    Boolean removeAllSession(HttpSession session);
    int findPeopleCount(String cPeople);
    List<Comment> findAllComment();
    List<Comment> findAllTeacherAvgScore(String cModule,String ymTime);
}
