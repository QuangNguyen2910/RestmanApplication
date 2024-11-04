package org.example.restmanapplication.dao;

import org.example.restmanapplication.model.*;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BanDatDAO extends DAO {
    public BanDatDAO() {
        super();
    }
    public List<BanDat629> getBanDatTheoTenKhach(String tenKhach) {
        String sql =
            "(SELECT tblBanAn629.*, tblThanhVien629.*, tblKhachHang629.*, tblLanDatBan629.*, tblBanDat629.id AS bandatID, " +
            "NULL AS IdMon, NULL AS tenMon, NULL AS giaMon, " +
            "NULL AS motaMon, NULL AS IdMonGoi, NULL AS soMonGoi, " +
            "tblCombo629.id AS IdCombo, tblCombo629.ten AS tenCombo, tblCombo629.giathanh AS giaCombo, " +
            "tblCombo629.mota AS motaCombo, tblComboGoi629.id AS IdComboGoi, tblComboGoi629.soluong AS soComboGoi " +
            "FROM tblBanDat629, tblBanAn629, tblLanDatBan629, tblKhachHang629, tblThanhVien629, tblComboGoi629, tblCombo629 " +
            "WHERE tblBanDat629.tblBanAn629id = tblBanAn629.id AND tblBanDat629.tblLanDatBan629id = tblLanDatBan629.id " +
            "AND tblLanDatBan629.tblKhachHang629id = tblKhachHang629.tblThanhVien629id AND tblKhachHang629.tblThanhVien629id = tblThanhVien629.id " +
            "AND tblCombo629.id = tblComboGoi629.tblCombo629id AND tblComboGoi629.tblBanDat629id = tblBanDat629.id " +
            "AND tblThanhVien629.hoten LIKE '%" + tenKhach + "%' " +
            "UNION " +
            "SELECT tblBanAn629.*, tblThanhVien629.*, tblKhachHang629.*, tblLanDatBan629.*, tblBanDat629.id AS bandatID, " +
            "tblMonAn629.id AS IdMon, tblMonAn629.ten AS tenMon, tblMonAn629.giathanh as giaMon, " +
            "tblMonAn629.mota AS motaMon, tblMonAnGoi629.id AS IdMonGoi, tblMonAnGoi629.soluong AS soMonGoi, " +
            "NULL AS IdCombo, NULL AS tenCombo, NULL AS giaCombo, NULL AS motaCombo, " +
            "NULL AS IdComboGoi, NULL AS soComboGoi " +
            "FROM tblBanDat629, tblBanAn629, tblLanDatBan629, tblKhachHang629, tblThanhVien629, tblMonAnGoi629, tblMonAn629 " +
            "WHERE tblBanDat629.tblBanAn629id = tblBanAn629.id AND tblBanDat629.tblLanDatBan629id = tblLanDatBan629.id " +
            "AND tblLanDatBan629.tblKhachHang629id = tblKhachHang629.tblThanhVien629id AND tblKhachHang629.tblThanhVien629id = tblThanhVien629.id " +
            "AND tblMonAn629.id = tblMonAnGoi629.tblMonAn629id AND tblMonAnGoi629.tblBanDat629id = tblBanDat629.id " +
            "AND tblThanhVien629.hoten LIKE '%" + tenKhach + "%')" +
            "ORDER BY bandatId";
        List<BanDat629> listBanDat = new ArrayList<>();
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            int current_index = -1;
            while (rs.next()) {
                BanAn629 banAn = new BanAn629();
                banAn.setId(rs.getInt(1));
                banAn.setTen(rs.getString(2));
                banAn.setSonguoi(rs.getInt(3));
                banAn.setMota(rs.getString(4));
                ThanhVien629 thanhVien = new ThanhVien629();
                thanhVien.setId(rs.getInt(5));
                thanhVien.setTen(rs.getString(6));
                thanhVien.setMatkhau(rs.getString(7));
                thanhVien.setHoten(rs.getString(8));
                thanhVien.setEmail(rs.getString(9));
                thanhVien.setSdt(rs.getString(10));
                KhachHang629 khachHang = new KhachHang629(thanhVien.getId(), thanhVien.getTen(), thanhVien.getMatkhau(), thanhVien.getHoten(), thanhVien.getEmail(), thanhVien.getSdt());
                LanDatBan629 lanDatBan = new LanDatBan629();
                lanDatBan.setId(rs.getInt(12));
                lanDatBan.setKhachhang(khachHang);
                lanDatBan.setGiobatdau(rs.getTime(14));
                lanDatBan.setGioketthuc(rs.getTime(15));
                lanDatBan.setNgay(rs.getDate(16));
                BanDat629 banDat = new BanDat629();
                banDat.setId(rs.getInt(17));
                banDat.setLandatban(lanDatBan);
                banDat.setBanan(banAn);
                if (rs.getObject(18) == null) {
                    MonAn629 monAn = new MonAn629(rs.getInt(24), rs.getString(25), rs.getFloat(26), rs.getString(27));
                    MonAnGoi629 monAnGoi = new MonAnGoi629(rs.getInt(28), rs.getInt(29), monAn);
                    if(current_index == banDat.getId()) {
                        listBanDat.get(listBanDat.size() - 1).getListmangoi().add(monAnGoi);
                    } else {
                        banDat.getListmangoi().add(monAnGoi);
                        listBanDat.add(banDat);
                    }
                } else {
                    Combo629 combo = new Combo629(rs.getInt(18), rs.getString(19), rs.getFloat(20), rs.getString(21));
                    ComboGoi629 comboGoi = new ComboGoi629(rs.getInt(22), rs.getInt(23), combo);
                    if(current_index == banDat.getId()) {
                        listBanDat.get(listBanDat.size() - 1).getListcombogoi().add(comboGoi);
                    } else {
                        banDat.getListcombogoi().add(comboGoi);
                        listBanDat.add(banDat);
                    }
                }

                current_index = banDat.getId();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listBanDat;
    }
}
