package com.hzit.dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.hzit.dao.entity.TeacherInfo;
import com.fc.platform.commons.page.Page;
import com.fc.platform.commons.page.Pageable;

public interface TeacherInfoMapper {

	void insertTeacherInfo(TeacherInfo teacherInfo);

	void deleteTeacherInfoByTeaId(Integer teaId);

	void updateTeacherInfo(TeacherInfo teacherInfo);

	Page<TeacherInfo> searchTeacherInfoByParams(@Param("map") Map<String, String> map, Pageable pageable);

	List<TeacherInfo> searchTeacherInfoByParams(@Param("map") Map<String, String> map);

} 
