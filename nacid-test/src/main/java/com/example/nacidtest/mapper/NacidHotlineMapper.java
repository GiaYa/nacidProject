package com.example.nacidtest.mapper;

import com.github.pagehelper.Page;
import com.example.nacidtest.entity.NacidHotline;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
* @author 李旭锴
* @description 针对表【nacid_hotline(群众质询热线)】的数据库操作Mapper
* @createDate 2022-06-04 14:05:27
* @Entity com.example.nacidtest.entity.NacidHotline
*/
@Repository
public interface NacidHotlineMapper extends BaseMapper<NacidHotline> {
   public NacidHotline selectid(int id);
   public Page<NacidHotline> selectByLike(String keyword);

}




