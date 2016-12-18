package com.hzit.services.impl;

import com.fc.platform.commons.page.Page;
import com.fc.platform.commons.page.PageImpl;
import com.fc.platform.commons.page.PageRequest;
import com.hzit.dao.entity.Discuss;
import com.hzit.dao.mapper.DiscussMapper;
import com.hzit.services.DiscussService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


/**
 * Created by wjf13 on 2016/12/19.
 */
@Service
public class DiscussServiceImpl implements DiscussService{
    @Autowired
    private DiscussMapper discussMapper;
    @Override
    public Page<Discuss> findDiscussPageByCUuid(int page, int rowCount,String cUuid) {
        PageRequest pageRequest=new PageRequest(page,rowCount);
        Map map=new HashMap();
        map.put("cUuid",cUuid);
        Page<Discuss> discussPage=discussMapper.searchDiscussByParams(map,pageRequest);
        return discussPage;
    }
}
