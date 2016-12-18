package com.hzit.services;

import com.fc.platform.commons.page.Page;
import com.hzit.dao.entity.Comment;
import com.hzit.vo.CommentVo;

import java.util.List;

/**
 * Created by wjf13 on 2016/12/18.
 */
public interface CommentService {
    int addComment(CommentVo commentVo);
    Page<Comment> searchPageByParams(int page, int rowCount,String cModule );
}
