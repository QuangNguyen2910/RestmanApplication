<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<%
    String customername = null;
    if(request.getParameter("customername") != null){
        customername = (String)request.getParameter("customername");
        session.setAttribute("customername", customername);
    } else {
        customername = (String)session.getAttribute("customername");
    }

    BanDatDAO checker = new BanDatDAO();
    List<BanDat629> listBanDat = checker.getBanDatTheoTenKhach(customername);

    if(listBanDat.size() == 0) {
%>
        <script type="text/javascript">
            alert("Tên Khách Hàng chưa từng đặt bàn nào tại nhà hàng!");
            window.location.href = "gdTimKhachDat629.jsp";
        </script>
<%
    } else {
        session.setAttribute("listBanDat", listBanDat);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../PageLogo.svg">
    <title>Restman - Thanh toán</title>
    <style>
        /* General styling for body */
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

        /* Header and label styling */
        p {
            color: #6D4C41;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
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
            text-align: center;
        }

        th {
            background-color: #D84315;
            color: #ffffff;
            font-weight: bold;
        }

        /* Row styling with hover effect */
        tr {
            transition: background-color 0.3s;
        }

        tr:hover {
            background-color: #FAE3D9;
            cursor: pointer;
        }

        /* Button styling for back button */
        .btn-back {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #ffffff;
            background-color: #8D6E63;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .btn-back:hover {
            background-color: #6D4C41;
        }
    </style>
    <script type="text/javascript">
        // JavaScript function to submit a form with the selected ban dat ID
        function chonBanDat(banDatId) {
            var form = document.createElement("form");
            form.method = "POST";
            form.action = "gdHoaDonThanhToan629.jsp"; // target JSP

            var input = document.createElement("input");
            input.type = "hidden";
            input.name = "banDatId";
            input.value = banDatId;

            form.appendChild(input);
            document.body.appendChild(form);
            form.submit();
        }
    </script>
</head>
<body>
    <div class="container">
        <!-- Display the customer's name -->
        <p>Tên khách: <strong><%= customername %></strong></p>

        <!-- Table for booked tables information -->
        <table>
            <tr>
                <th>Mã bàn</th>
                <th>Giờ bắt đầu</th>
                <th>Giờ kết thúc</th>
                <th>Ngày</th>
            </tr>
            <% for (BanDat629 bd : listBanDat) { %>
                <tr onclick="chonBanDat('<%= bd.getId() %>')">
                    <td><%= bd.getId() %></td>
                    <td><%= bd.getLandatban().getGiobatdau() %></td>
                    <td><%= bd.getLandatban().getGioketthuc() %></td>
                    <td><%= bd.getLandatban().getNgay() %></td>
                </tr>
            <% } %>
        </table>

        <!-- Back button to search again -->
        <form action="gdTimKhachDat629.jsp" method="get">
            <button type="submit" class="btn-back">Quay lại</button>
        </form>
    </div>
</body>
</html>
<%
    }
%>
