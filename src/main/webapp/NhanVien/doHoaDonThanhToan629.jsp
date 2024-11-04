<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<%
    HoaDon629 hoaDon = (HoaDon629) session.getAttribute("hoaDon");
    HoaDonDAO hoaDonDAO = new HoaDonDAO();
    hoaDonDAO.luuHoaDon(hoaDon);

    // Send notification to the screen
    out.println("<h1>Đã lưu hóa đơn thành công!</h1>");
%>
