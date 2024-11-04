package org.example.restmanapplication.model;

import java.util.Date;

public class NguyenLieu629 {
    private int id;
    private String ten;
    private int soluongtonkho;
    private String donvi;
    private Date ngaynhap;
    private Date hansudung;

    // Constructors, Getters, and Setters

    public NguyenLieu629() {
    }

    public NguyenLieu629(int id, String ten, int soluongtonkho, String donvi, Date ngaynhap, Date hansudung) {
        this.id = id;
        this.ten = ten;
        this.soluongtonkho = soluongtonkho;
        this.donvi = donvi;
        this.ngaynhap = ngaynhap;
        this.hansudung = hansudung;
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

    public int getSoluongtonkho() {
        return soluongtonkho;
    }

    public void setSoluongtonkho(int soluongtonkho) {
        this.soluongtonkho = soluongtonkho;
    }

    public String getDonvi() {
        return donvi;
    }

    public void setDonvi(String donvi) {
        this.donvi = donvi;
    }

    public Date getNgaynhap() {
        return ngaynhap;
    }

    public void setNgaynhap(Date ngaynhap) {
        this.ngaynhap = ngaynhap;
    }

    public Date getHansudung() {
        return hansudung;
    }

    public void setHansudung(Date hansudung) {
        this.hansudung = hansudung;
    }
}
