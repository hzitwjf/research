package com.hzit.services;

import com.hzit.dao.entity.Vegetable;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/15.
 */
public interface VegetableServices {
    List<Vegetable> findAllVegetable(Map map);
    Vegetable findOneVegetable(Integer vId);
}
