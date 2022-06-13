package com.example.nacidtest.service;

import com.example.nacidtest.entity.NacidCard;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.pagehelper.PageInfo;

/**
* @author 李旭锴
* @description 针对表【nacid_card(通信大数据行程卡
)】的数据库操作Service
* @createDate 2022-06-04 14:40:51
*/
public interface NacidCardService extends IService<NacidCard> {
     public PageInfo<NacidCard> selectcard(String ucid,Integer pageNum,Integer pageSize);
}
