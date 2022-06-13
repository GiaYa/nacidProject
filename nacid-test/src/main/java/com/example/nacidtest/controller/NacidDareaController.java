package com.example.nacidtest.controller;

import com.example.nacidtest.entity.NacidDarea;
import com.example.nacidtest.service.NacidDareaService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin
@RestController
@RequestMapping("api")
public class NacidDareaController {
    @Autowired
    private NacidDareaService service;
    @GetMapping("NacidDarea/{region}")
    public List<NacidDarea> selectdarea(@PathVariable("region") String region){

        return service.selectdarea(region);
    }
}
