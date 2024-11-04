<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("../gdDangNhap629.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restman - Xin chào quý khách</title>
    <link rel="icon" href="../PageLogo.svg">
    <style>
        /* General styling for the page */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #FAF3E0; /* Restaurant-inspired background */
        }

        /* Main container */
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

        /* Welcome message styling */
        h1 {
            color: #BF360C;
            font-size: 26px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Styling for the action button */
        .btn-search {
            padding: 12px 20px;
            font-size: 16px;
            color: #ffffff;
            background-color: #D84315; /* Warm red-orange for restaurant ambiance */
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
            margin-top: 20px;
        }

        /* Hover effect for button */
        .btn-search:hover {
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

        <!-- Welcome message -->
        <h1>Xin chào, khách hàng <%= username %>!</h1>

        <!-- Button to go to gdTimMon629.jsp -->
        <form action="gdTimMon629.jsp" method="get">
            <button type="submit" class="btn-search">Tìm kiếm món ăn</button>
        </form>
    </div>
</body>
</html>
