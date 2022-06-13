package com.example.nacidtest.controller;

import com.example.nacidtest.entity.NacidUser;
import com.example.nacidtest.service.NacidUserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
@CrossOrigin
@RestController
@RequestMapping("api")
public class NacidUserController {
    @Autowired
    private NacidUserService service;
    @GetMapping("NacidUser")
    public PageInfo<NacidUser> selectname(@RequestParam(value = "name",required = true,defaultValue = "")String name,
                                          @RequestParam(value = "pageNum",required = true,defaultValue = "1")Integer pageNum,
                                          @RequestParam(value = "pageSize",required = true,defaultValue = "100")Integer pageSize)
    {
        return service.selectuser(name,pageNum,pageSize);
    }
    @GetMapping("NacidUser/{name}")
    public NacidUser selectname(@PathVariable("name") String name){return service.selectname(name);}
    @PostMapping("NacidUser")
    public Integer adduser(@RequestBody NacidUser user)
    {
        return service.adduser(user);
    }
    @PutMapping("NacidUser")
    public Integer updatauser(@RequestBody NacidUser user)
    {
        return service.updatauser(user);
    }
    @DeleteMapping("NacidUser/del/{id}")
    public Integer deleteid(@PathVariable("id") Integer id) {return service.deleteid(id);}

}
