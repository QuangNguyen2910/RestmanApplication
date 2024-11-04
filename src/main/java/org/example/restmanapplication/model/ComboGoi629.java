package org.example.restmanapplication.model;

public class ComboGoi629 {
    private int id;
    private int soluong;
    private float thanhtien;
    private Combo629 combo;

    // Constructors, Getters, and Setters

    public ComboGoi629() {
    }

    public ComboGoi629(int id, int soluong, Combo629 combo) {
        this.id = id;
        this.soluong = soluong;
        this.combo = combo;
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
        return thanhtien;
    }

    public float tinhThanhTien() {
        return this.getCombo().getGia() * this.soluong;
    }

    public Combo629 getCombo() {
        return this.combo;
    }

    public void setCombo(Combo629 combo) {
        this.combo = combo;
    }
}
