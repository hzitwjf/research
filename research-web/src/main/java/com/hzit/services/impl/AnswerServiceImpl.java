package com.hzit.services.impl;

import com.hzit.dao.entity.Answer;
import com.hzit.dao.mapper.AnswerMapper;
import com.hzit.services.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
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

    @Override
    public Answer findOneAnswer(String awContent, Integer prId) {
        Map map=new HashMap<>();
        map.put("awContent",awContent);
        map.put("prId",prId);
        List<Answer> answerList=answerMapper.searchAnswerByParams(map);
        if (answerList.size()!=0 && answerList!=null){
            return answerList.get(0);
        }else {
            return null;
        }
    }
}
