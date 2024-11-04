<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" import="java.util.ArrayList,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    NguoiDungDAO checker = new NguoiDungDAO();

    int id = checker.getNguoiDungId(username, password);
    if(id != -1){
        session.setAttribute("username", username);
        session.setAttribute("id", id);

        if(checker.isNhanVien(id)){
            response.sendRedirect("NhanVien/gdChinhNV629.jsp");
        } else {
            response.sendRedirect("KhachHang/gdChinhKH629.jsp");
        }
    } else {
        response.sendRedirect("gdDangNhap629.jsp?error=Invalid credentials");
    }
%>