package org.example.restmanapplication.model;

public class NhaCungCap629 {
    private int id;
    private String ten;
    private String diachi;
    private String sdt;
    private String email;

    // Constructors, Getters, and Setters

    public NhaCungCap629() {
    }

    public NhaCungCap629(int id, String ten, String diachi, String sdt, String email) {
        this.id = id;
        this.ten = ten;
        this.diachi = diachi;
        this.sdt = sdt;
        this.email = email;
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

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
