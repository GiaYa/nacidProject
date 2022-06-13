package com.example.nacidtest.service;

import com.example.nacidtest.entity.NacidUser;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;

/**
* @author 李旭锴
* @description 针对表【nacid_user(用户信息)】的数据库操作Service
* @createDate 2022-06-06 14:41:19
*/
public interface NacidUserService extends IService<NacidUser> {
    public PageInfo<NacidUser> selectuser(String name, Integer pageNum, Integer pageSize);
    public NacidUser selectname(String name);
    public Integer adduser(NacidUser user);
    public Integer updatauser(NacidUser user);
    public Integer deleteid(Integer id);
}
