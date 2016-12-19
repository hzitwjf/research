package com.hzit.services;

import com.fc.platform.commons.page.Page;
import com.hzit.dao.entity.Discuss;
import com.hzit.vo.DiscussVo;

import java.util.List;
import java.util.Map;


/**
 * Created by wjf13 on 2016/12/19.
 */
public interface DiscussService {
    Page<Discuss> findDiscussPageByCUuid(int page, int rowCount, String cUuid);
    List<DiscussVo> findDiscussOfPopulation();
    List<DiscussVo> findDiscussOfNotPopulation();
    List<DiscussVo> findDiscussOfNormalPopulation();
}
