package org.example.restmanapplication.model;
import java.sql.Time;
import java.sql.Date;

public class LanDatBan629 {
    private int id;

    private KhachHang629 khachhang;
    private Time giobatdau;
    private Time gioketthuc;
    private Date ngay;

    // Constructors, Getters, and Setters

    public LanDatBan629() {
    }

    public LanDatBan629(int id, KhachHang629 khachhang, Time giobatdau, Time gioketthuc, Date ngay) {
        this.id = id;
        this.khachhang = khachhang;
        this.giobatdau = giobatdau;
        this.gioketthuc = gioketthuc;
        this.ngay = ngay;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public KhachHang629 getKhachhang() {
        return khachhang;
    }

    public void setKhachhang(KhachHang629 khachhang) {
        this.khachhang = khachhang;
    }

    public Time getGiobatdau() {
        return giobatdau;
    }

    public void setGiobatdau(Time giobatdau) {
        this.giobatdau = giobatdau;
    }

    public Time getGioketthuc() {
        return gioketthuc;
    }

    public void setGioketthuc(Time gioketthuc) {
        this.gioketthuc = gioketthuc;
    }

    public Date getNgay() {
        return ngay;
    }

    public void setNgay(Date ngay) {
        this.ngay = ngay;
    }
}
