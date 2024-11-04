package org.example.restmanapplication.model;

import java.sql.Date;
import java.util.List;

public class TheThanhVien629 {
    private int id;
    private String ten;
    private String mota;
    private int diemtichluy;
    private List<String> uudai;
    private Date ngayphathanh;
    private Date ngayhethan;

    // Constructors, Getters, and Setters

    public TheThanhVien629() {
    }

    public TheThanhVien629(int id, String ten, String mota, int diemtichluy, List<String> uudai, Date ngayphathanh, Date ngayhethan) {
        this.id = id;
        this.ten = ten;
        this.mota = mota;
        this.diemtichluy = diemtichluy;
        this.uudai = uudai;
        this.ngayphathanh = ngayphathanh;
        this.ngayhethan = ngayhethan;
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

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public int getDiemtichluy() {
        return diemtichluy;
    }

    public void setDiemtichluy(int diemtichluy) {
        this.diemtichluy = diemtichluy;
    }

    public List<String> getUudai() {
        return uudai;
    }

    public void setUudai(List<String> uudai) {
        this.uudai = uudai;
    }

    public Date getNgayphathanh() {
        return ngayphathanh;
    }

    public void setNgayphathanh(Date ngayphathanh) {
        this.ngayphathanh = ngayphathanh;
    }

    public Date getNgayhethan() {
        return ngayhethan;
    }

    public void setNgayhethan(Date ngayhethan) {
        this.ngayhethan = ngayhethan;
    }
}
