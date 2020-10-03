package com.kgc.springssm.service;

import com.kgc.springssm.pojo.Studentinfo;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-03 14:45
 */
public interface StudentinfoService {
    List<Studentinfo> selectAll();
    Studentinfo selectAllById(Integer sid);
    int upd(Studentinfo studentinfo);
}
