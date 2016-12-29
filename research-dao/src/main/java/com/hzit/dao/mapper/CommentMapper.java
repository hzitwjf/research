package com.hzit.dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.hzit.dao.entity.Comment;
import com.fc.platform.commons.page.Page;
import com.fc.platform.commons.page.Pageable;

public interface CommentMapper {

	void insertComment(Comment comment);

	void deleteCommentByCId(Integer CId);

	void updateComment(Comment comment);

	Page<Comment> searchCommentByParams(@Param("map") Map<String, String> map, Pageable pageable);
	Page<Comment> findCommentByParams(@Param("cdPeople")String cdPeople,@Param("cModule")String cModule, Pageable pageable);
	List<Comment> searchCommentByParams(@Param("map") Map<String, String> map);
	int findPeopleCount(@Param("cPeople") String cPeople);
	List<Comment> searchCommentBycModule(@Param("cModule") String cModule,@Param("ymTime") String ymTime);
	List<Comment> searchCommentByName(@Param("cdPeople") String cdPeople);
} 
