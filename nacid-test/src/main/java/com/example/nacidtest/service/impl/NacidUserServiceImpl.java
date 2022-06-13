package com.example.nacidtest.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.nacidtest.entity.NacidUser;
import com.example.nacidtest.service.NacidUserService;
import com.example.nacidtest.mapper.NacidUserMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
* @author 李旭锴
* @description 针对表【nacid_user(用户信息)】的数据库操作Service实现
* @createDate 2022-06-06 14:41:19
*/
@Service
public class NacidUserServiceImpl extends ServiceImpl<NacidUserMapper, NacidUser>
    implements NacidUserService{
    @Autowired
    private NacidUserMapper mapper;
    @Override
    public PageInfo<NacidUser> selectuser(String name, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        Page<NacidUser> pageuserlist = mapper.selectuser("%" + name + "%");
        PageInfo<NacidUser> PageInfouser = new PageInfo<NacidUser>(pageuserlist);
        return PageInfouser;
    }
    @Override
    public NacidUser selectname(String name) {
        return mapper.selectname(name);
    }

    @Override
    public Integer adduser(NacidUser user)
    {
        return mapper.adduser(user);
    }
    @Override
    public Integer updatauser(NacidUser user) {return mapper.updatauser(user);}
    @Override
    public Integer deleteid(Integer id) {return mapper.deleteid(id);}
}




