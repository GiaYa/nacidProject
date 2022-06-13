package com.example.nacidtest.service;

import com.example.nacidtest.entity.NacidAdmin;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;

/**
* @author 李旭锴
* @description 针对表【nacid_admin(管理员用户)】的数据库操作Service
* @createDate 2022-06-06 09:38:45
*/
public interface NacidAdminService extends IService<NacidAdmin> {
    public NacidAdmin loginQuery(NacidAdmin Admin);
    public int insertQuery(NacidAdmin Admin);
}
