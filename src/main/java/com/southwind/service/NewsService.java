package com.southwind.service;

import com.southwind.entity.News;

import java.util.List;

public interface NewsService {
    public List<News> findForMain();
    public List<News> findByPage(int page, int limit);
    public int getPages(int limit);
}
