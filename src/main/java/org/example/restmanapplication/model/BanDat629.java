package org.example.restmanapplication.model;

import java.util.ArrayList;
import java.util.List;

public class BanDat629 {
    private int id;
    private BanAn629 banan;
    private LanDatBan629 landatban;
    private List<MonAnGoi629> listmangoi = new ArrayList<>();
    private List<ComboGoi629> listcombogoi = new ArrayList<>();

    // Constructors, Getters, and Setters

    public BanDat629() {
    }

    public BanDat629(int id, BanAn629 banan, LanDatBan629 landatban, List<MonAnGoi629> listmangoi, List<ComboGoi629> listcombogoi) {
        this.id = id;
        this.banan = banan;
        this.landatban = landatban;
        this.listmangoi = listmangoi;
        this.listcombogoi = listcombogoi;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public BanAn629 getBanan() {
        return banan;
    }

    public void setBanan(BanAn629 banan) {
        this.banan = banan;
    }

    public LanDatBan629 getLandatban() {
        return landatban;
    }

    public void setLandatban(LanDatBan629 landatban) {
        this.landatban = landatban;
    }

    public List<MonAnGoi629> getListmangoi() {
        return listmangoi;
    }

    public void setListmangoi(List<MonAnGoi629> listmangoi) {
        this.listmangoi = listmangoi;
    }

    public List<ComboGoi629> getListcombogoi() {
        return listcombogoi;
    }

    public void setListcombogoi(List<ComboGoi629> listcombogoi) {
        this.listcombogoi = listcombogoi;
    }

    public float tinhTongTien() {
        float tongtien = 0;
        for (MonAnGoi629 monAnGoi : listmangoi) {
            tongtien += monAnGoi.getThanhtien();
        }
        for (ComboGoi629 comboGoi : listcombogoi) {
            tongtien += comboGoi.getThanhtien();
        }
        return tongtien;
    }
}
