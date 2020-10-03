package com.kgc.springssm.controller;

import com.kgc.springssm.pojo.Studentinfo;
import com.kgc.springssm.service.StudentinfoService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import jdk.nashorn.internal.ir.ReturnNode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 14:46
 */
@Controller
public class StudentinfoController {
    @Resource
    StudentinfoService studentinfoService;

    @RequestMapping("/")
    public String toindex(Model model){
        List<Studentinfo> list = studentinfoService.selectAll();
        model.addAttribute("list",list);
        return "index";
    }
    @RequestMapping("/toupd")
    public String toupd(Integer sid,Model model){
        Studentinfo studentinfo1 = studentinfoService.selectAllById(sid);
        model.addAttribute("studentinfo1",studentinfo1);
        return "upd";
    }
    @RequestMapping("/doupd")
    public String doupd(Model model,Studentinfo studentinfo){
        int i = studentinfoService.upd(studentinfo);
        if(i>0){
            model.addAttribute("msg","更新成功！");
            return "redirect:/";
        }else {
            model.addAttribute("msg","更新失败！");
            return "redirect:/toupd";
        }
    }

}
