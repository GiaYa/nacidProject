package com.example.nacidtest.service;

import com.example.nacidtest.entity.NacidCode;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
* @author 李旭锴
* @description 针对表【nacid_code(福建健康码)】的数据库操作Service
* @createDate 2022-06-04 15:12:40
*/
public interface NacidCodeService extends IService<NacidCode> {
    public PageInfo<NacidCode> selectcodestyle(String codestyle, Integer pageNum, Integer pageSize);
    /**public List<NacidCode> selectStyle(String style);*/
}
