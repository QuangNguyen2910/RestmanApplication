package org.example.restmanapplication.model;

import java.sql.Date;

public class NhanVien629 extends ThanhVien629{
    private String vitricongviec;

    // Constructors, Getters, and Setters

    public NhanVien629() {
        super();
    }

    public NhanVien629(int id, String ten, String matkhau, String hoten, String email, String sdt,
                       String vitricongviec) {
        super(id, ten, matkhau, hoten, email, sdt);
        this.vitricongviec = vitricongviec;
    }

    public String getVitricongviec() {
        return vitricongviec;
    }

    public void setVitricongviec(String vitricongviec) {
        this.vitricongviec = vitricongviec;
    }
}
