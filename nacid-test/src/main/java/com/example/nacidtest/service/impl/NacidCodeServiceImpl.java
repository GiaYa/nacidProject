package com.example.nacidtest.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.nacidtest.entity.NacidCode;
import com.example.nacidtest.entity.NacidUser;
import com.example.nacidtest.service.NacidCodeService;
import com.example.nacidtest.mapper.NacidCodeMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import java.util.List;

/**
* @author 李旭锴
* @description 针对表【nacid_code(福建健康码)】的数据库操作Service实现
* @createDate 2022-06-04 15:12:40
*/
@Service
public class NacidCodeServiceImpl extends ServiceImpl<NacidCodeMapper, NacidCode>
    implements NacidCodeService{
    @Autowired
    private NacidCodeMapper mapper;
    @Override
    public PageInfo<NacidCode> selectcodestyle(String codestyle,Integer pageNum,Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        Page<NacidCode> pagecodelist = mapper.selectcodestyle("%" + codestyle + "%");
        /**Page<NacidCode> pagecodelist = mapper.selectcodestyle( "%" + codestyle + "%");*/
        PageInfo<NacidCode> pageInfocode  = new PageInfo<NacidCode>(pagecodelist);
        return pageInfocode;
    }
    /**@Override
    public List<NacidCode> selectStyle (String style) {
            return mapper.selectStyle(style);
    }*/
}




