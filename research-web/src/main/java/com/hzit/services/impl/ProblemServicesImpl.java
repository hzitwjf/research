package com.hzit.services.impl;

import com.hzit.dao.entity.Problem;
import com.hzit.dao.mapper.ProblemMapper;
import com.hzit.services.ProblemServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/16.
 */
@Service
public class ProblemServicesImpl implements ProblemServices {
    @Autowired
    private ProblemMapper problemMapper;
    @Override
    public List<Problem> findAllProblem(Map map) {
        List<Problem> problemList=problemMapper.searchProblemByParams(null);
        return problemList;
    }

    @Override
    public Problem findOneProblem(Integer pId) {
        Map map=new HashMap();
        map.put("pId",pId);
        List<Problem> problem=problemMapper.searchProblemByParams(map);
        return problem.get(0);
    }
}
