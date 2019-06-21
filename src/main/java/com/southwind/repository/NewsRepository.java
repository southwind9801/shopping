package com.southwind.repository;

import com.southwind.entity.News;

import java.util.List;

public interface NewsRepository {
    public List<News> findForMain();
    public List<News> findLimit(int index, int limit);
    public int count();
}
