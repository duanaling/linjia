package com.linjia.pojo;

import java.util.List;

public class pageBean<E>{
    private long totalCount;
    private long totalPage;
    private long currentPage;
    private long pageSize;
   private List<E> list;


    public long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(long totalCount) {
        this.totalCount = totalCount;
    }

    public long getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(long totalPage) {
        this.totalPage = totalPage;
    }

    public long getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(long currentPage) {
        this.currentPage = currentPage;
    }

    public long getPageSize() {
        return pageSize;
    }

    public void setPageSize(long pageSize) {
        this.pageSize = pageSize;
    }

    public List<E> getList() {
        return list;
    }

    public void setList(List<E> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "pageBean{" +
                "totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                ", currentPage=" + currentPage +
                ", pageSize=" + pageSize +
                ", list=" + list +
                '}';
    }
}
