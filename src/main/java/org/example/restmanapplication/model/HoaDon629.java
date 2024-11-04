package org.example.restmanapplication.model;

public class HoaDon629 {
    private int id;
    private float tongtien;
    private BanDat629 bandat;
    private KhachHang629 khachhang;
    private NhanVienBanHang629 nhanvien;

    // Constructors, Getters, and Setters

    public HoaDon629() {
    }

    public HoaDon629(int id, BanDat629 bandat, KhachHang629 khachhang, NhanVienBanHang629 nhanvien, float tongtien) {
        this.id = id;
        this.tongtien = tongtien;
        this.bandat = bandat;
        this.khachhang = khachhang;
        this.nhanvien = nhanvien;
    }

    public HoaDon629(BanDat629 bandat, KhachHang629 khachhang, NhanVienBanHang629 nhanvien, float tongtien) {
        this.tongtien = tongtien;
        this.bandat = bandat;
        this.khachhang = khachhang;
        this.nhanvien = nhanvien;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getTongtien() {
        return tongtien;
    }

    public void setTongtien(float tongtien) {
        this.tongtien = tongtien;
    }

    public BanDat629 getBandat() {
        return bandat;
    }

    public void setBandat(BanDat629 bandat) {
        this.bandat = bandat;
    }

    public KhachHang629 getKhachhang() {
        return khachhang;
    }

    public void setKhachhang(KhachHang629 khachhang) {
        this.khachhang = khachhang;
    }

    public NhanVienBanHang629 getNhanvien() {
        return nhanvien;
    }

    public void setNhanvien(NhanVienBanHang629 nhanvien) {
        this.nhanvien = nhanvien;
    }
}
