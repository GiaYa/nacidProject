package com.example.nacidtest.mapper;

import com.example.nacidtest.entity.NacidDarea;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.github.pagehelper.Page;
import org.springframework.stereotype.Repository;

/**
* @author 李旭锴
* @description 针对表【nacid_darea(危险地区)】的数据库操作Mapper
* @createDate 2022-06-04 18:37:06
* @Entity com.example.nacidtest.entity.NacidDarea
*/
@Repository
public interface NacidDareaMapper extends BaseMapper<NacidDarea> {
    public Page<NacidDarea> selectdarea(String region);
}




