package com.example.nacidtest.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.nacidtest.entity.NacidCard;
import com.example.nacidtest.service.NacidCardService;
import com.example.nacidtest.mapper.NacidCardMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
* @author 李旭锴
* @description 针对表【nacid_card(通信大数据行程卡
)】的数据库操作Service实现
* @createDate 2022-06-04 14:40:51
*/
@Service
public class NacidCardServiceImpl extends ServiceImpl<NacidCardMapper, NacidCard>
    implements NacidCardService{

    @Autowired
    private NacidCardMapper mapper;
    @Override
    public PageInfo<NacidCard> selectcard(String ucid,Integer pageNum,Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        Page<NacidCard> pagecardlist = mapper.selectcard("%" + ucid + "%");
        PageInfo<NacidCard> pageInfocard = new PageInfo<NacidCard>(pagecardlist);
        return pageInfocard;
    }
}




