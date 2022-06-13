package com.example.nacidtest;

import com.example.nacidtest.entity.NacidUser;
import com.example.nacidtest.mapper.*;
import com.github.pagehelper.PageHelper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class NacidHotlineTests {
    @Autowired
    private NacidHotlineMapper mapper;

    @Test
    void selectid() {
        System.out.println(mapper.selectid(1));
    }




}

@SpringBootTest
class NacidCodeTests {
    @Autowired
    private NacidCodeMapper mapper;
    @Test
    void selectstyle() {
        System.out.println(mapper.selectcodestyle("1"));
    }
}

@SpringBootTest
class NacidUserTests {
    @Autowired
    private NacidUserMapper mapper;
    @Test
    void selectstyle() {
        System.out.println(mapper.selectuser("温东"));
    }
    @Autowired
    private NacidUser user;
    @Test
    void adduser() {
        user.setName("张三");
        user.setAge(23);
        user.setSex("男");
        user.setUcid("410802199401094996");
        user.setTel("13392786666");
        user.setAddress("天津市张家港县大兴侯街J座 ");
        user.setIsvaccination("2");
        mapper.adduser(user);

        System.out.println(mapper.selectname("张三"));
    }
}

@SpringBootTest
class NacidDareaTests {
    @Autowired
    private NacidDareaMapper mapper;
    @Test
    void selectdarea() {
        System.out.println(mapper.selectdarea("澳门特别行政区巢湖市龙潭沈阳街B座"));
    }
}