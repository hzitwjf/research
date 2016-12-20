package com.hzit.services.impl;

import com.hzit.dao.entity.TeacherInfo;
import com.hzit.dao.mapper.TeacherInfoMapper;
import com.hzit.services.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/20.
 */
@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherInfoMapper teacherInfoMapper;
    @Override
    public List<TeacherInfo> findTeacherInfoByModule(Integer teaModule) {
        Map map=new HashMap<>();
        map.put("teaModule",teaModule);
        return teacherInfoMapper.searchTeacherInfoByParams(map);
    }

    @Override
    public TeacherInfo findTeacherByTeaId(Integer teaId) {
        Map map=new HashMap<>();
        map.put("teaId",teaId);
        List<TeacherInfo> teacherInfoList=teacherInfoMapper.searchTeacherInfoByParams(map);
        if (teacherInfoList!=null && teacherInfoList.size()==1){
            return teacherInfoList.get(0);
        }
        return null;
    }
}
