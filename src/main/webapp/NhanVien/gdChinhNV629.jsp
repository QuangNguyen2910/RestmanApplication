<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<%
    // Get the username from the session
    String username = (String) session.getAttribute("username");
    Integer id = (Integer) session.getAttribute("id");
    NguoiDungDAO checker = new NguoiDungDAO();
    NhanVienBanHang629 nvbh = checker.getNhanVienBHTuId(id);
    session.setAttribute("nvbh", nvbh);
    if(username == null) {
        response.sendRedirect("../gdDangNhap629.jsp"); // Redirect to login if not logged in
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../PageLogo.svg">
    <title>Restman - Xin chào nhân viên</title>
    <style>
        /* General styling for the page */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #FAF3E0;
        }

        /* Container styling */
        .container {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        /* Logo */
        .logo img {
            width: 180px;
            margin-bottom: 20px;
        }

        /* Header styling */
        h1 {
            color: #BF360C;
            font-size: 26px;
            margin-bottom: 30px;
            font-weight: bold;
        }

        /* Button styling */
        .btn-pay {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #ffffff;
            background-color: #D84315;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        /* Hover effect for button */
        .btn-pay:hover {
            background-color: #BF360C;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Logo section -->
        <div class="logo">
            <img src="../RestmanLogo.svg" alt="Restman Logo">
        </div>
        <!-- Welcome message displaying the employee's username -->
        <h1>Xin chào, nhân viên <%= username %>!</h1>

        <!-- Button to proceed to payment JSP page -->
        <form action="gdTimKhachDat629.jsp" method="get">
            <button type="submit" class="btn-pay">Thanh toán</button>
        </form>
    </div>
</body>
</html>
