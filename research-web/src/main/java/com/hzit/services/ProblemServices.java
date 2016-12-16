package com.hzit.services;

import com.hzit.dao.entity.Problem;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/16.
 */
public interface ProblemServices {
    List<Problem> findAllProblem(Map map);
}
