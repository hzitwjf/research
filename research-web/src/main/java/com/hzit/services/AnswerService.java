package com.hzit.services;

import com.hzit.dao.entity.Answer;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/16.
 */
public interface AnswerService {
    List<Answer> findAllAnswer(Map map);
}
