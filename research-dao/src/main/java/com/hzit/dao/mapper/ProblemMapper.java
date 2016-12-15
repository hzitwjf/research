package com.hzit.dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.hzit.dao.entity.Problem;
import com.fc.platform.commons.page.Page;
import com.fc.platform.commons.page.Pageable;

public interface ProblemMapper {

	void insertProblem(Problem problem);

	void deleteProblemByPId(Integer PId);

	void updateProblem(Problem problem);

	Page<Problem> searchProblemByParams(@Param("map") Map<String, String> map, Pageable pageable);

	List<Problem> searchProblemByParams(@Param("map") Map<String, String> map);

} 
