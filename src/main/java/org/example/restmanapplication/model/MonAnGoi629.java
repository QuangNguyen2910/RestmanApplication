package org.example.restmanapplication.model;

public class MonAnGoi629 {
    private int id;
    private int soluong;
    private float thanhtien;
    private MonAn629 monan;

    // Constructors, Getters, and Setters

    public MonAnGoi629() {
    }

    public MonAnGoi629(int id, int soluong, MonAn629 monan) {
        this.id = id;
        this.soluong = soluong;
        this.monan = monan;
        this.thanhtien = this.tinhThanhTien();

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public float getThanhtien() {
        return this.thanhtien;
    }

    public float tinhThanhTien() {
        return this.getMonan().getGia() * this.soluong;
    }

    public MonAn629 getMonan() {
        return this.monan;
    }

    public void setMonan(MonAn629 monan) {
        this.monan = monan;
    }
}
