package com.hzit.services.impl;

import com.hzit.dao.entity.Vegetable;
import com.hzit.dao.mapper.VegetableMapper;
import com.hzit.services.VegetableServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wjf13 on 2016/12/15.
 */
@Service
public class VegetableServicesImpl implements VegetableServices {
    @Autowired
    private VegetableMapper vegetableMapper;
    @Override
    public List<Vegetable> findAllVegetable(Map map) {
        List<Vegetable> vegetableList=vegetableMapper.searchVegetableByParams(map);
        return vegetableList;
    }

    @Override
    public Vegetable findOneVegetable(Integer vId) {
        Map map=new HashMap();
        map.put("vId",vId);
        List<Vegetable> vegetableList=vegetableMapper.searchVegetableByParams(map);
        return vegetableList.get(0);
    }
}
