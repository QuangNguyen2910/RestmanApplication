package org.example.restmanapplication.model;

public class BanAn629 {
    private int id;
    private String ten;
    private int songuoi;
    private String mota;

    // Constructors, Getters, and Setters

    public BanAn629() {
    }

    public BanAn629(int id, String ten, int songuoi, String mota) {
        this.id = id;
        this.ten = ten;
        this.songuoi = songuoi;
        this.mota = mota;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public int getSonguoi() {
        return songuoi;
    }

    public void setSonguoi(int songuoi) {
        this.songuoi = songuoi;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }
}
