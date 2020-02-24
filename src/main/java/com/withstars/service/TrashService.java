package com.withstars.service;

import com.withstars.domain.Trash;

import java.util.List;

public interface TrashService {
    List<Trash> findbyType(int page, int size, int type);
    List<Trash> searchByName(String name);
}
