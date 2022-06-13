package com.example.nacidtest.service;

import com.example.nacidtest.entity.NacidDarea;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
* @author 李旭锴
* @description 针对表【nacid_darea(危险地区)】的数据库操作Service
* @createDate 2022-06-04 18:37:07
*/
public interface NacidDareaService extends IService<NacidDarea> {
    public List<NacidDarea> selectdarea(String region);
}
