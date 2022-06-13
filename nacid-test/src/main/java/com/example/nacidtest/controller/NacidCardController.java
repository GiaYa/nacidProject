package com.example.nacidtest.controller;

import com.example.nacidtest.entity.NacidCard;
import com.example.nacidtest.service.NacidCardService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
@RequestMapping("api")
public class NacidCardController {
    @Autowired
    private NacidCardService service;
    @GetMapping("NacidCard")
    public PageInfo<NacidCard> selectcard(@RequestParam(value = "ucid",required = true,defaultValue = "") String ucid,
                                          @RequestParam(value = "pageNum",required = true,defaultValue = "1") Integer pageNum,
                                          @RequestParam(value = "pageSize",required = true,defaultValue = "50") Integer pageSize) {
        return service.selectcard(ucid,pageNum,pageSize);
    }
}
