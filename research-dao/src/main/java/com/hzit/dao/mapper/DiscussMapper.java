package com.hzit.dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.hzit.dao.entity.Discuss;
import com.fc.platform.commons.page.Page;
import com.fc.platform.commons.page.Pageable;

public interface DiscussMapper {

	void insertDiscuss(Discuss discuss);

	void deleteDiscussByDId(Integer DId);

	void updateDiscuss(Discuss discuss);

	Page<Discuss> searchDiscussByParams(@Param("map") Map<String, String> map, Pageable pageable);

	List<Discuss> searchDiscussByParams(@Param("map") Map<String, String> map);
	List<Discuss> searchDiscussOfPopulation();
	List<Discuss> searchDiscussOfNotPopulation();
	List<Discuss> searchDiscussOfNormalPopulation();
} 
