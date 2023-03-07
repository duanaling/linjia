package com.linjia.pojo;

public class Store {
    private  Integer id;
    private  String  storeName;
    private  String  name;
    private  String  address;
    private  String recom;
    private  String img1;
    private  String img2;

    private  String let;


    @Override
    public String toString() {
        return "Store{" +
                "id=" + id +
                ", storeName='" + storeName + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", recom='" + recom + '\'' +
                ", img1='" + img1 + '\'' +
                ", img2='" + img2 + '\'' +
                ", let='" + let + '\'' +
                '}';
    }

    public String getRecom() {
        return recom;
    }

    public void setRecom(String recom) {
        this.recom = recom;
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





    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }



    public String getLet() {
        return let;
    }

    public void setLet(String let) {
        this.let = let;
    }
}
