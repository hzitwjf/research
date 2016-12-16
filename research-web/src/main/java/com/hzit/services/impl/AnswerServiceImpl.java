package com.hzit.services.impl;

import com.hzit.dao.entity.Answer;
import com.hzit.dao.mapper.AnswerMapper;
import com.hzit.services.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/16.
 */
@Service
public class AnswerServiceImpl implements AnswerService {
    @Autowired
    private AnswerMapper answerMapper;
    @Override
    public List<Answer> findAllAnswer(Map map) {
        List<Answer> answerList=answerMapper.searchAnswerByParams(null);
        return answerList;
    }
}
