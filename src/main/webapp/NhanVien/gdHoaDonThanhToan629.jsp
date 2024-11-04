<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,org.example.restmanapplication.dao.*,org.example.restmanapplication.model.*"%>
<%@ page import="java.sql.Time" %>
<%
    List<BanDat629> listBanDat = (List<BanDat629>) session.getAttribute("listBanDat");
    String customername = (String) session.getAttribute("customername");
    int idBanKhachChon = Integer.parseInt(request.getParameter("banDatId"));
    NhanVienBanHang629 nvbh = (NhanVienBanHang629) session.getAttribute("nvbh");
    BanDat629 banDatChon = null;
    for (BanDat629 bd : listBanDat) {
        if (bd.getId() == idBanKhachChon) {
            banDatChon = bd;
            break;
        }
    }

    HoaDon629 hoaDon = new HoaDon629(banDatChon, banDatChon.getLandatban().getKhachhang(), nvbh, banDatChon.tinhTongTien());
    session.setAttribute("hoaDon", hoaDon);
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../PageLogo.svg">
    <title>Restman - Thanh toán</title>
    <style>
        /* General styling */
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
            color: #BF360C;
            font-size: 26px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Information paragraph styling */
        p {
            color: #6D4C41;
            font-size: 18px;
            margin-bottom: 20px;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            margin-bottom: 20px;
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

        /* Button styling */
        .btn {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }

        /* Confirm payment button */
        .btn-confirm {
            background-color: #D84315;
        }

        .btn-confirm:hover {
            background-color: #BF360C;
        }

        /* Back button styling */
        .btn-back {
            background-color: #8D6E63;
        }

        .btn-back:hover {
            background-color: #6D4C41;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thanh toán</h1>

        <!-- Display bill details -->
        <p>Hóa đơn bàn <%= banDatChon.getId() %> đặt bởi khách hàng: <strong><%= customername %></strong></p>

        <table>
            <tr>
                <th>Món đã gọi</th>
                <th>Số lượng</th>
                <th>Đơn giá (VND)</th>
                <th>Thành tiền (VND)</th>
            </tr>
            <% for (MonAnGoi629 mag : banDatChon.getListmangoi()) { %>
                <tr>
                    <td><%= mag.getMonan().getTen() %></td>
                    <td><%= mag.getSoluong() %></td>
                    <td><%= String.format("%.3f", mag.getMonan().getGia()) %></td>
                    <td><%= String.format("%.3f", mag.getThanhtien()) %></td>
                </tr>
            <% } %>
            <% for (ComboGoi629 cg : banDatChon.getListcombogoi()) { %>
                <tr>
                    <td><%= cg.getCombo().getTen() %></td>
                    <td><%= cg.getSoluong() %></td>
                    <td><%= String.format("%.3f", cg.getCombo().getGia()) %></td>
                    <td><%= String.format("%.3f", cg.getThanhtien()) %></td>
                </tr>
            <% } %>
        </table>

        <p><strong>Tổng tiền:</strong> <%= String.format("%.3f", banDatChon.tinhTongTien()) %> VND</p>

        <!-- Confirm payment button -->
        <form action="doHoaDonThanhToan629.jsp" method="POST">
            <button type="submit" class="btn btn-confirm">Xác nhận thanh toán</button>
        </form>

        <!-- Back button -->
        <form action="gdBanKhachDat629.jsp" method="get">
            <button type="submit" class="btn btn-back">Quay lại</button>
        </form>
    </div>
</body>
</html>
