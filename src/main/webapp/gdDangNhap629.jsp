<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="PageLogo.svg">
    <title>Restman - Đăng nhập</title>
    <style>
        /* Main body styling */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #FAF3E0; /* Light restaurant-themed background */
        }

        /* Container for the login form */
        .container {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 100%;
            max-width: 420px;
            text-align: center;
        }

        /* Logo and heading styling */
        .logo img {
            width: 320px;
            margin-bottom: 20px;
        }

        h1 {
            color: #BF360C; /* Rich, warm color for restaurant branding */
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: 700;
        }

        /* Label styling */
        label {
            font-size: 15px;
            color: #6D4C41; /* Dark brown color for labels */
            display: block;
            text-align: left;
            margin-bottom: 6px;
            font-weight: bold;
        }

        /* Input styling */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #FDF7F0; /* Slightly warm background for inputs */
        }

        /* Button styling */
        .btn-login {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #ffffff;
            background-color: #D84315; /* Deep red-orange for a restaurant feel */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        /* Hover effect for button */
        .btn-login:hover {
            background-color: #BF360C;
        }

        /* Error message styling */
        .error {
            color: #D84315;
            font-size: 14px;
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Logo Section -->
        <div class="logo">
            <img src="RestmanLogo.svg" alt="Restman Logo"> <!-- Replace with actual logo file path -->
        </div>

        <!-- Page Title -->
        <h1>Chào mừng tới nhà hàng Restman</h1>

        <!-- Login Form -->
        <form method="POST" action="doDangNhap629.jsp">
            <label for="username">Tên đăng nhập</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Mật khẩu</label>
            <input type="password" id="password" name="password" required>

            <button type="submit" class="btn-login">Đăng nhập</button>
        </form>

        <!-- Error Message -->
        <%
            String error = request.getParameter("error");
            if (error != null && error.equals("true")) {
        %>
            <p class="error">Sai tên tài khoản hoặc mật khẩu!</p>
        <%
            }
        %>
    </div>
</body>
</html>
