package com.kgc.springssm.service.impl;

import com.kgc.springssm.mapper.StudentinfoMapper;
import com.kgc.springssm.pojo.Studentinfo;
import com.kgc.springssm.pojo.StudentinfoExample;
import com.kgc.springssm.service.StudentinfoService;
import jdk.nashorn.internal.ir.ReturnNode;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 14:45
 */
@Service
public class StudentinfoServiceImpl implements StudentinfoService{
    @Resource
    StudentinfoMapper studentinfoMapper;

    @Override
    public List<Studentinfo> selectAll() {
        List<Studentinfo> studentinfos = studentinfoMapper.selectByExample(null);
        return studentinfos;
    }

    @Override
    public Studentinfo selectAllById(Integer sid) {
        Studentinfo studentinfo = studentinfoMapper.selectByPrimaryKey(sid);
        return studentinfo;
    }

    @Override
    public int upd(Studentinfo studentinfo) {
        int i = studentinfoMapper.updateByPrimaryKeySelective(studentinfo);
        return i;
    }
}
