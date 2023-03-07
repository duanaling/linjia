package com.linjia.pojo;

import java.sql.Date;

public class Orders {
    private int id;
    private int userId;
    private double prices;
    private String time;
    private int fineId;
    private int count;
    private String orederId;
    private int storeid;
    private int cyc;
    private FineClass fine;

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", userId=" + userId +
                ", prices=" + prices +
                ", time='" + time + '\'' +
                ", fineId=" + fineId +
                ", count=" + count +
                ", orederId='" + orederId + '\'' +
                ", storeid=" + storeid +
                ", cyc=" + cyc +
                ", fine=" + fine +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getPrices() {
        return prices;
    }

    public void setPrices(double prices) {
        this.prices = prices;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getFineId() {
        return fineId;
    }

    public void setFineId(int fineId) {
        this.fineId = fineId;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getOrederId() {
        return orederId;
    }

    public void setOrederId(String orederId) {
        this.orederId = orederId;
    }

    public int getStoreid() {
        return storeid;
    }

    public void setStoreid(int storeid) {
        this.storeid = storeid;
    }

    public int getCyc() {
        return cyc;
    }

    public void setCyc(int cyc) {
        this.cyc = cyc;
    }

    public FineClass getFine() {
        return fine;
    }

    public void setFine(FineClass fine) {
        this.fine = fine;
    }
}