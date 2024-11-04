package org.example.restmanapplication.model;

import java.sql.Date;

public class HoaDonNhap629 {
    private int id;
    private NhaCungCap629 nhacungcap;
    private NhaHang629 nhahang;

    private Date ngaynhap;
    // Constructors, Getters, and Setters

    public HoaDonNhap629() {
    }

    public HoaDonNhap629(int id, NhaCungCap629 nhacungcap, NhaHang629 nhahang, Date ngaynhap) {
        this.id = id;
        this.nhacungcap = nhacungcap;
        this.nhahang = nhahang;
        this.ngaynhap = ngaynhap;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public NhaCungCap629 getNhacungcap() {
        return nhacungcap;
    }

    public void setNhacungcap(NhaCungCap629 nhacungcap) {
        this.nhacungcap = nhacungcap;
    }

    public NhaHang629 getNhahang() {
        return nhahang;
    }

    public void setNhahang(NhaHang629 nhahang) {
        this.nhahang = nhahang;
    }

    public Date getNgaynhap() {
        return ngaynhap;
    }

    public void setNgaynhap(Date ngaynhap) {
        this.ngaynhap = ngaynhap;
    }
}