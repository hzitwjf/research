package com.hzit.services.impl;

import com.fc.platform.commons.page.Page;
import com.fc.platform.commons.page.PageImpl;
import com.fc.platform.commons.page.PageRequest;
import com.hzit.dao.entity.Discuss;
import com.hzit.dao.entity.Vegetable;
import com.hzit.dao.mapper.DiscussMapper;
import com.hzit.services.DiscussService;
import com.hzit.services.VegetableServices;
import com.hzit.vo.DiscussVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by wjf13 on 2016/12/19.
 */
@Service
public class DiscussServiceImpl implements DiscussService{
    @Autowired
    private DiscussMapper discussMapper;
    @Autowired
    private VegetableServices vegetableServices;
    @Override
    public Page<Discuss> findDiscussPageByCUuid(int page, int rowCount,String cUuid) {
        PageRequest pageRequest=new PageRequest(page,rowCount);
        Map map=new HashMap();
        map.put("cUuid",cUuid);
        Page<Discuss> discussPage=discussMapper.searchDiscussByParams(map,pageRequest);
        return discussPage;
    }

    @Override
    public List<DiscussVo> findDiscussOfPopulation() {
        List<DiscussVo> discussVoList=new ArrayList<>();
        List<Discuss> discussList=discussMapper.searchDiscussOfPopulation();
        for (Discuss discuss : discussList){
            DiscussVo discussVo=new DiscussVo();
            discussVo.setDResult(discuss.getDResult());
            discussVo.setPId(discuss.getPId());
            discussVo.setVId(discuss.getVId());
            Vegetable vegetable=vegetableServices.findOneVegetable(discuss.getVId());
            discussVo.setvName(vegetable.getVName());
            discussVoList.add(discussVo);
        }
        return discussVoList;
    }

    @Override
    public List<DiscussVo> findDiscussOfNotPopulation() {
        List<DiscussVo> discussVoList=new ArrayList<>();
        List<Discuss> discussList=discussMapper.searchDiscussOfNotPopulation();
        for (Discuss discuss : discussList){
            DiscussVo discussVo=new DiscussVo();
            discussVo.setDResult(discuss.getDResult());
            discussVo.setPId(discuss.getPId());
            discussVo.setVId(discuss.getVId());
            Vegetable vegetable=vegetableServices.findOneVegetable(discuss.getVId());
            discussVo.setvName(vegetable.getVName());
            discussVoList.add(discussVo);
        }
        return discussVoList;
    }

    @Override
    public List<DiscussVo> findDiscussOfNormalPopulation() {
        List<DiscussVo> discussVoList=new ArrayList<>();
        List<Discuss> discussList=discussMapper.searchDiscussOfNormalPopulation();
        for (Discuss discuss : discussList){
            DiscussVo discussVo=new DiscussVo();
            discussVo.setDResult(discuss.getDResult());
            discussVo.setPId(discuss.getPId());
            discussVo.setVId(discuss.getVId());
            Vegetable vegetable=vegetableServices.findOneVegetable(discuss.getVId());
            discussVo.setvName(vegetable.getVName());
            discussVoList.add(discussVo);
        }
        return discussVoList;
    }
}
