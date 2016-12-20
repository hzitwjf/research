package com.hzit.services;

import com.hzit.dao.entity.TeacherInfo;

import java.util.List;

/**
 * Created by Administrator on 2016/12/20.
 */
public interface TeacherService {
    List<TeacherInfo> findTeacherInfoByModule(Integer teaModule);
    TeacherInfo findTeacherByTeaId(Integer teaId);
}
