package com.linjia.pojo;

public class FineClass {
    private Integer id;
    private Integer storeId;
    private Integer ClassifyId;
    // 图片名称
    private String img;
    private String danwei;
    private int cyc;

    @Override
    public String toString() {
        return "FineClass{" +
                "id=" + id +
                ", storeId=" + storeId +
                ", ClassifyId=" + ClassifyId +
                ", img='" + img + '\'' +
                ", danwei='" + danwei + '\'' +
                ", cyc=" + cyc +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", describe='" + describe + '\'' +
                '}';
    }

    public int getCyc() {
        return cyc;
    }

    public void setCyc(int cyc) {
        this.cyc = cyc;
    }

    public Integer getStoreId() {
        return storeId;
    }

    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    public String getDanwei() {
        return danwei;
    }

    public void setDanwei(String danwei) {
        this.danwei = danwei;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClassifyId() {
        return ClassifyId;
    }

    public void setClassifyId(Integer classifyId) {
        ClassifyId = classifyId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    private String name;
    private String type;
    private double price;
    private String describe;

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }


}
