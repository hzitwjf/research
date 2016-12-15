package com.hzit.services.impl;

import com.hzit.dao.entity.Vegetable;
import com.hzit.dao.mapper.VegetableMapper;
import com.hzit.services.VegetableServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wjf13 on 2016/12/15.
 */
@Service
public class VegetableServicesImpl implements VegetableServices {
    @Autowired
    private VegetableMapper vegetableMapper;
    @Override
    public List<Vegetable> findAllVegetable() {
        List<Vegetable> vegetableList=vegetableMapper.searchVegetableByParams(null);
        return vegetableList;
    }
}
