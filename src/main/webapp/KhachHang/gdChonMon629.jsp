<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<%
    // Retrieve the food name from the request and set it in the session
    String foodname = null;

    if (request.getParameter("tenMon") != null) {
        foodname = (String)request.getParameter("tenMon");
        session.setAttribute("tenMon", foodname);
    } else {
        foodname = (String)session.getAttribute("tenMon");
    }

    MonAnDAO checker = new MonAnDAO();
    List<MonAn629> listMonAn = checker.getMonAnChuaTen(foodname);

    // If food items are found, set in session, else display an error message
    if (listMonAn.size() == 0) {
%>
        <script type="text/javascript">
            alert("Không tồn tại món ăn có chứa từ khóa!");
            window.location.href = "gdTimMon629.jsp";
        </script>
<%
    } else {
        session.setAttribute("listMonAn", listMonAn);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restman - Tìm kiếm thông tin món ăn</title>
    <link rel="icon" href="../PageLogo.svg">
    <style>
        /* Main styling for body */
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
            max-width: 600px;
            text-align: center;
        }

        /* Header styling */
        h1 {
            color: #BF360C; /* Rich, warm color for restaurant branding */
            font-size: 26px;
            margin-bottom: 30px;
            font-weight: bold;
        }

        /* Header and back button styling */
        p {
            color: #6D4C41;
            font-size: 18px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #D84315;
            color: #ffffff;
        }

        /* Row hover effect */
        tr {
            transition: background-color 0.3s;
        }

        tr:hover {
            background-color: #FAE3D9;
            cursor: pointer;
        }

        /* Button styling */
        .btn-back {
            padding: 10px 20px;
            font-size: 16px;
            color: #ffffff;
            background-color: #8D6E63;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
            margin-top: 20px;
            display: block;
            width: 100%;
        }

        .btn-back:hover {
            background-color: #6D4C41;
        }
    </style>
    <script type="text/javascript">
        // JavaScript function to submit a form with the selected food ID
        function selectFood(maMonChon) {
            var form = document.createElement("form");
            form.method = "POST";
            form.action = "gdThongTinMonAn629.jsp"; // target JSP

            var input = document.createElement("input");
            input.type = "hidden";
            input.name = "maMonChon";
            input.value = maMonChon;

            form.appendChild(input);
            document.body.appendChild(form);
            form.submit();
        }
    </script>
</head>
<body>
    <div class="container">
        <!-- Page title -->
        <h1>Tìm kiếm thông tin món ăn</h1>

        <!-- Display the food name being searched -->
        <p>Tên món cần tìm: <strong><%= foodname %></strong></p>

        <!-- Food information table -->
        <table>
            <tr>
                <th>Mã món</th>
                <th>Tên món</th>
                <th>Giá món</th>
            </tr>
            <% for (int i = 0; i < listMonAn.size(); i++) { %>
                <tr onclick="selectFood('<%= i %>')">
                    <td><%= listMonAn.get(i).getId() %></td>
                    <td><%= listMonAn.get(i).getTen() %></td>
                    <td><%= String.format("%.3f", listMonAn.get(i).getGia()) %> VND</td>
                </tr>
            <% } %>
        </table>

        <!-- Back button to return to search page -->
        <form action="gdTimMon629.jsp" method="get">
            <button type="submit" class="btn-back">Quay lại</button>
        </form>
    </div>
</body>
</html>
<%
    }
%>