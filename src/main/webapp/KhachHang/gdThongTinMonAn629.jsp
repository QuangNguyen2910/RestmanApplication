<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<%
    // Get the food ID from the request
    Integer maMonChon = Integer.parseInt(request.getParameter("maMonChon"));

    // Retrieve the MonAn629 list from the session
    List<MonAn629> listMonAn = (List<MonAn629>) session.getAttribute("listMonAn");

    // Find the selected food item
    MonAn629 thongTinMonAn = listMonAn.get(maMonChon);

    Integer maMon = thongTinMonAn.getId();
    String tenMon = thongTinMonAn.getTen();
    Float giaThanh = thongTinMonAn.getGia();
    String moTa = thongTinMonAn.getMota();
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restman - Tìm kiếm thông tin món ăn</title>
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
            text-align: left;
        }

        /* Header styling */
        h1 {
            color: #BF360C; /* Rich, warm color for restaurant branding */
            font-size: 24px;
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Information paragraph styling */
        p {
            font-size: 18px;
            color: #6D4C41;
            margin: 10px 0;
        }

        /* Strong labels */
        strong {
            color: #D84315;
        }

        /* Button styling */
        .btn-back {
            display: block;
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #ffffff;
            background-color: #8D6E63;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            text-align: center;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        /* Hover effect for button */
        .btn-back:hover {
            background-color: #6D4C41;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Page title -->
        <h1>Tìm kiếm thông tin món ăn</h1>

        <% if (thongTinMonAn != null) { %>
            <p><strong>Mã món:</strong> <%= maMon %></p>
            <p><strong>Tên món ăn:</strong> <%= tenMon %></p>
            <p><strong>Giá:</strong> <%= String.format("%.3f", giaThanh) %> VND</p>
            <p><strong>Mô tả:</strong> <%= moTa %></p>
        <% } else { %>
            <p>Food item not found.</p>
        <% } %>

        <!-- Back button -->
        <form action="gdChonMon629.jsp" method="get">
            <button type="submit" class="btn-back">Quay lại</button>
        </form>
    </div>
</body>
</html>
