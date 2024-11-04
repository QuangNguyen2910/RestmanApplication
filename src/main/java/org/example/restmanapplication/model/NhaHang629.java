package org.example.restmanapplication.model;

public class NhaHang629 {
    private int id;
    private String ten;
    private String diachi;
    private String mota;

    // Constructors, Getters, and Setters

    public NhaHang629() {
    }

    public NhaHang629(int id, String ten, String diachi, String mota) {
        this.id = id;
        this.ten = ten;
        this.diachi = diachi;
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

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }
}
