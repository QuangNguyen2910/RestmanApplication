package org.example.restmanapplication.dao;

import java.sql.Connection;

public class DAO {
    public static Connection con;

    public DAO() {
        if(con == null) {
            String dbUrl = "jdbc:mysql://localhost:3306/restman";
            String dbClass = "com.mysql.cj.jdbc.Driver";

            try {
                Class.forName(dbClass);
                con = java.sql.DriverManager.getConnection(dbUrl, "root", "123456");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
