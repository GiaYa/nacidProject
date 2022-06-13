package com.example.nacidtest.mapper;

import com.example.nacidtest.entity.NacidHotline;
import com.example.nacidtest.entity.NacidUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
* @author 李旭锴
* @description 针对表【nacid_user(用户信息)】的数据库操作Mapper
* @createDate 2022-06-06 14:41:19
* @Entity com.example.nacidtest.entity.NacidUser
*/
@Mapper
public interface NacidUserMapper extends BaseMapper<NacidUser> {
    public Page<NacidUser> selectuser(String name);
    public NacidUser selectname(String name);
    public Integer adduser(NacidUser user);
    public Integer updatauser(NacidUser user);
    public Integer deleteid(Integer id);

}




