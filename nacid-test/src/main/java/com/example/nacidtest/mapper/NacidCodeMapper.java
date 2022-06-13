package com.example.nacidtest.mapper;

import com.example.nacidtest.entity.NacidCode;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
* @author 李旭锴
* @description 针对表【nacid_code(福建健康码)】的数据库操作Mapper
* @createDate 2022-06-04 15:12:40
* @Entity com.example.nacidtest.entity.NacidCode
*/
@Repository
public interface NacidCodeMapper extends BaseMapper<NacidCode> {
    public Page<NacidCode> selectcodestyle(String codestyle);
    public List<NacidCode> selectStyle(String style);
}




