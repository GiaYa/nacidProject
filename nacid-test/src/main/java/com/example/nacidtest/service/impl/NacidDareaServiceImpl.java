package com.example.nacidtest.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.nacidtest.entity.NacidDarea;
import com.example.nacidtest.service.NacidDareaService;
import com.example.nacidtest.mapper.NacidDareaMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @author 李旭锴
* @description 针对表【nacid_darea(危险地区)】的数据库操作Service实现
* @createDate 2022-06-04 18:37:07
*/
@Service
public class NacidDareaServiceImpl extends ServiceImpl<NacidDareaMapper, NacidDarea>
    implements NacidDareaService{
    @Autowired
    private NacidDareaMapper mapper;
    @Override
    public List<NacidDarea> selectdarea(String region) {

        return mapper.selectdarea(region);

    }
}




