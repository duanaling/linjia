package com.linjia.pojo;

public class Images {

    private  Integer id;
    private  Integer storeId;
    private Integer Fine_classid;
    private  String  name;
    private  String  img1;
    private  String img2;
    private  String img3;
    private String describe;



    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    @Override
    public String toString() {
        return "Images{" +
                "id=" + id +
                ", storeId=" + storeId +
                ", Fine_classid=" + Fine_classid +
                ", name='" + name + '\'' +
                ", img1='" + img1 + '\'' +
                ", img2='" + img2 + '\'' +
                ", img3='" + img3 + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }

    public Integer getStoreId() {
        return storeId;
    }

    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    public Integer getFine_classid() {
        return Fine_classid;
    }

    public void setFine_classid(Integer fine_classid) {
        Fine_classid = fine_classid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }
}
