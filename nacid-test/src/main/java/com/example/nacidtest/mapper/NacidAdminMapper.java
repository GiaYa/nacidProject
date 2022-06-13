package com.example.nacidtest.mapper;

import com.example.nacidtest.entity.NacidAdmin;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.stereotype.Repository;

/**
* @author 李旭锴
* @description 针对表【nacid_admin(管理员用户)】的数据库操作Mapper
* @createDate 2022-06-06 09:38:45
* @Entity com.example.nacidtest.entity.NacidAdmin
*/
@Repository
public interface NacidAdminMapper extends BaseMapper<NacidAdmin> {
    public NacidAdmin loginQuery(NacidAdmin Admin);
    public int inserQuert(NacidAdmin Admin);
}




