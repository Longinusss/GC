package com.withstars.service.impl;

import com.github.pagehelper.PageHelper;
import com.withstars.dao.TrashDao;
import com.withstars.domain.Trash;
import com.withstars.service.TrashService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("trashService")
public class TrashServiceImpl implements TrashService {
    @Autowired
    TrashDao trashdao;
    public List<Trash> findbyType(int page, int size, int type) {
        PageHelper.startPage(page,size);
        return trashdao.findbyType(type);
    }
    public List<Trash> searchByName(String name) {
        return trashdao.searchByName(name);
    }
}
