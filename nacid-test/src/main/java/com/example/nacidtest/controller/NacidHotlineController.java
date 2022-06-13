package com.example.nacidtest.controller;

import com.example.nacidtest.entity.NacidHotline;
import com.example.nacidtest.service.NacidHotlineService;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
@RequestMapping("api")
public class NacidHotlineController {
    @Autowired
    private NacidHotlineService service;
    @GetMapping("NacidHotline")
    public PageInfo<NacidHotline> selectByLike(@RequestParam(value ="keyword",required = true,defaultValue = "") String keyword,
                                               @RequestParam(value = "pageNum",required = true,defaultValue = "1")Integer pageNum,
                                               @RequestParam(value = "pageSize",required = true,defaultValue = "50")Integer pageSize) {
        return service.selectByLike(keyword,pageNum,pageSize);
    }
    @GetMapping("NacidHotline/{id}")
    public NacidHotline selectid(@PathVariable("id") Integer id) {
        return service.selectid(id);
    }

}
