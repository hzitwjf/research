package com.hzit.controller;

import com.hzit.dao.entity.Vegetable;
import com.hzit.services.VegetableServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2016/12/15.
 */
@Controller
public class VegetableController {
    @Autowired
    private VegetableServices vegetableServices;
    @RequestMapping("showAll")
    public String showAllVegettables(ModelMap modelMap){
        List<Vegetable> vegetableList=vegetableServices.findAllVegetable();
        modelMap.put("vagetableList",vegetableList);
        return "index";
    }
}
