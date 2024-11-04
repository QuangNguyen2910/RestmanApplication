package org.example.restmanapplication.model;

public class NguyenLieuNhap629 {
    private int id;
    private HoaDonNhap629 hoadonnhap;
    private NguyenLieu629 nguyenlieu;
    private NhanVienKho629 nhanvienkho;

    // Constructors, Getters, and Setters

    public NguyenLieuNhap629() {
    }

    public NguyenLieuNhap629(int id, HoaDonNhap629 hoadonnhap, NguyenLieu629 nguyenlieu, NhanVienKho629 nhanvienkho) {
        this.id = id;
        this.hoadonnhap = hoadonnhap;
        this.nguyenlieu = nguyenlieu;
        this.nhanvienkho = nhanvienkho;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public HoaDonNhap629 getHoadonnhap() {
        return hoadonnhap;
    }

    public void setHoadonnhap(HoaDonNhap629 hoadonnhap) {
        this.hoadonnhap = hoadonnhap;
    }

    public NguyenLieu629 getNguyenlieu() {
        return nguyenlieu;
    }

    public void setNguyenlieu(NguyenLieu629 nguyenlieu) {
        this.nguyenlieu = nguyenlieu;
    }

    public NhanVienKho629 getNhanvienkho() {
        return nhanvienkho;
    }

    public void setNhanvienkho(NhanVienKho629 nhanvienkho) {
        this.nhanvienkho = nhanvienkho;
    }
}
