package com.example.nacidtest.service.impl;


import com.github.pagehelper.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.nacidtest.entity.NacidHotline;
import com.example.nacidtest.service.NacidHotlineService;
import com.example.nacidtest.mapper.NacidHotlineMapper;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author 李旭锴
* @description 针对表【nacid_hotline(群众质询热线)】的数据库操作Service实现
* @createDate 2022-06-04 14:05:27
*/
@Service
public class NacidHotlineServiceImpl extends ServiceImpl<NacidHotlineMapper, NacidHotline>
    implements NacidHotlineService{
    @Autowired
    private NacidHotlineMapper mapper;
    @Override
    public PageInfo<NacidHotline> selectByLike(String keyword,Integer pageNum,Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        Page<NacidHotline> pagehtolinelist = mapper.selectByLike("%" + keyword + "%");
        PageInfo<NacidHotline> pageInfo = new PageInfo<NacidHotline>(pagehtolinelist);
        return pageInfo;

    }
    @Override
    public NacidHotline selectid(Integer id) {
        return mapper.selectid(id);
    }
}




