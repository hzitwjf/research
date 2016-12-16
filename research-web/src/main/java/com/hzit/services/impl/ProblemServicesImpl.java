package com.hzit.services.impl;

import com.hzit.dao.entity.Problem;
import com.hzit.dao.mapper.ProblemMapper;
import com.hzit.services.ProblemServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/16.
 */
@Service
public class ProblemServicesImpl implements ProblemServices {
    @Autowired
    private ProblemMapper problemMapperl;
    @Override
    public List<Problem> findAllProblem(Map map) {
        List<Problem> problemList=problemMapperl.searchProblemByParams(null);
        return problemList;
    }
}
