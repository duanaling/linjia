package com.linjia.pojo;

public class ShoppingCart {
    private  Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFine_classId() {
        return Fine_classId;
    }

    public void setFine_classId(Integer fine_classId) {
        Fine_classId = fine_classId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getNumbers() {
        return numbers;
    }

    public void setNumbers(Integer numbers) {
        this.numbers = numbers;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    private Integer Fine_classId;
    private Integer userId;
    private Integer numbers;
    private  double price;
    private String name;
    private double prices;

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "id=" + id +
                ", Fine_classId=" + Fine_classId +
                ", userId=" + userId +
                ", numbers=" + numbers +
                ", price=" + price +
                ", name='" + name + '\'' +
                ", prices=" + prices +
                '}';
    }

    public double getPrices() {
        return prices;
    }

    public void setPrices(double prices) {
        this.prices = prices;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
