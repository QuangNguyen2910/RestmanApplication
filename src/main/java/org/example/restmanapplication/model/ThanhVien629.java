package org.example.restmanapplication.model;

public class ThanhVien629 {
    private int id;
    private String ten;
    private String matkhau;
    private String hoten;
    private String email;
    private String sdt;

    // Constructors, Getters, and Setters

    public ThanhVien629() {
    }

    public ThanhVien629(int id, String ten, String matkhau, String hoten, String email, String sdt) {
        this.id = id;
        this.ten = ten;
        this.matkhau = matkhau;
        this.hoten = hoten;
        this.email = email;
        this.sdt = sdt;
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

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }
}