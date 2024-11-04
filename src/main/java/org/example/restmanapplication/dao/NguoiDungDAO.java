package org.example.restmanapplication.dao;

import org.example.restmanapplication.model.NhanVien629;
import org.example.restmanapplication.model.NhanVienBanHang629;
import org.example.restmanapplication.model.ThanhVien629;

import java.sql.CallableStatement;
import java.sql.ResultSet;

public class NguoiDungDAO extends DAO {
    public NguoiDungDAO() {
        super();
    }

    // Get user id by username and password, if no user found, return -1
    public int getNguoiDungId(String username, String password) {
        String sql = "SELECT id FROM tblThanhVien629 WHERE ten = '" + username + "' AND matkhau = '" + password + "'";
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            if (rs.next()) {
                return rs.getInt("id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    // Check user is NhanVien or not
    public boolean isNhanVien(int id) {
        String sql = "SELECT tblThanhVien629id FROM tblNhanVien629 WHERE tblThanhVien629id = " + id;
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public NhanVienBanHang629 getNhanVienBHTuId(int id) {
        String sql = "SELECT * FROM tblThanhVien629, tblNhanVien629 WHERE tblThanhVien629.id = tblNhanVien629.tblThanhVien629id AND tblNhanVien629.vitri = 'Nhân viên bán hàng' AND tblThanhVien629.id = " + id;
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            if (rs.next()) {
                NhanVienBanHang629 nhanVienBH = new NhanVienBanHang629(
                        rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(8)
                );
                return nhanVienBH;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
