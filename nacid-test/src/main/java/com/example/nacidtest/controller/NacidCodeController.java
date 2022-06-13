package com.example.nacidtest.controller;

import com.example.nacidtest.entity.NacidCode;
import com.example.nacidtest.service.NacidCodeService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin
@RestController
@RequestMapping("api")
public class NacidCodeController {
    @Autowired
    private NacidCodeService service;
    @GetMapping("NacidCode/{codestyle}")
    public PageInfo<NacidCode> selectstyle (@PathVariable("codestyle") String codestyle,
                                           @RequestParam(value = "pageNum",required = true,defaultValue = "1") Integer pageNum,
                                           @RequestParam(value = "pageSize",required = true,defaultValue = "20") Integer pageSize) {
        return service.selectcodestyle(codestyle,pageNum,pageSize);
    }
    /**@GetMapping("NacidCode/{style}")
    public List<NacidCode> selectStyle(@PathVariable("style") String style) {

        return service.selectStyle(style);
    }*/

}
