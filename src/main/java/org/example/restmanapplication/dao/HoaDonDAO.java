package org.example.restmanapplication.dao;

import org.example.restmanapplication.model.HoaDon629;

import java.sql.CallableStatement;
import java.sql.ResultSet;

public class HoaDonDAO extends DAO {
    public HoaDonDAO() {
        super();
    }

    public void luuHoaDon(HoaDon629 hoaDon) {
        String sql = "INSERT INTO tblhoadon629 (tblBanDat629id, tblKhachHang629id, tblNhanVienBanHang629id) VALUES (?, ?, ?)";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, hoaDon.getBandat().getId());
            cs.setInt(2, hoaDon.getKhachhang().getId());
            cs.setFloat(3, hoaDon.getNhanvien().getId());
            cs.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
