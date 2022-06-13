package com.example.nacidtest.mapper;

import com.example.nacidtest.entity.NacidCard;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.github.pagehelper.Page;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

/**
* @author 李旭锴
* @description 针对表【nacid_card(通信大数据行程卡
)】的数据库操作Mapper
* @createDate 2022-06-04 14:40:51
* @Entity com.example.nacidtest.entity.NacidCard
*/
@Repository
public interface NacidCardMapper extends BaseMapper<NacidCard> {
    public Page<NacidCard> selectcard(String ucid);
}




