package com.example.nacidtest.service;

import com.github.pagehelper.Page;
import com.example.nacidtest.entity.NacidHotline;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;

import java.util.List;


/**
* @author 李旭锴
* @description 针对表【nacid_hotline(群众质询热线)】的数据库操作Service
* @createDate 2022-06-04 14:05:27
*/
public interface NacidHotlineService extends IService<NacidHotline> {
    public PageInfo<NacidHotline> selectByLike(String keyword,Integer pageNum,Integer pageSize);
    public NacidHotline selectid(Integer id);
}
