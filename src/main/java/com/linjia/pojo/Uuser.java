package com.linjia.pojo;

public class Uuser {
    private String id;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String account;
    private String let;
    private String password;
    private String address;

    public  Uuser(){};

    public Uuser(String name, String account, String let, String password, String address) {
        this.name = name;
        this.account = account;
        this.let = let;
        this.password = password;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getLet() {
        return let;
    }

    public void setLet(String let) {
        this.let = let;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Uuser{" +
                "name='" + name + '\'' +
                ", account='" + account + '\'' +
                ", let='" + let + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
