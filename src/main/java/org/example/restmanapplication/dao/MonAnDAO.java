package org.example.restmanapplication.dao;

import org.example.restmanapplication.model.MonAn629;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MonAnDAO extends DAO {

    public MonAnDAO() {
        super();
    }

    public List<MonAn629> getMonAnChuaTen(String tenMon) {
        String sql = "SELECT * FROM tblMonAn629 WHERE ten LIKE '%" + tenMon + "%'";
        List<MonAn629> listMonAn = new ArrayList<>();
        try {
            CallableStatement cs = con.prepareCall(sql);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                MonAn629 monAn = new MonAn629();
                monAn.setId(rs.getInt("id"));
                monAn.setTen(rs.getString("ten"));
                monAn.setGia(rs.getInt("giathanh"));
                monAn.setMota(rs.getString("mota"));
                listMonAn.add(monAn);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listMonAn;
    }
}
