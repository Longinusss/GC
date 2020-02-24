package com.withstars.dao;

import com.withstars.domain.Trash;

import java.util.List;

public interface TrashDao {
    List<Trash> findbyType(int type);
    List<Trash> searchByName(String name);
}
