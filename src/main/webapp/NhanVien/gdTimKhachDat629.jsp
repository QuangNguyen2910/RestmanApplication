<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../PageLogo.svg">
    <title>Restman - Thanh toán</title>
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
            max-width: 400px;
            text-align: center;
        }

        /* Header styling */
        h1 {
            color: #BF360C;
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Label styling */
        label {
            font-size: 16px;
            color: #6D4C41;
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            text-align: left;
        }

        /* Input styling */
        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            background-color: #FDF7F0;
            box-sizing: border-box;
        }

        /* Button styling for submit and back buttons */
        .btn {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
            margin-top: 10px;
        }

        /* Confirm button styling */
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
        <!-- Page title -->
        <h1>Thanh toán</h1>

        <!-- Form to submit customer name -->
        <form action="gdBanKhachDat629.jsp" method="POST">
            <label for="customername">Tên khách hàng đặt bàn:</label>
            <input type="text" id="customername" name="customername" required>
            <button type="submit" class="btn btn-confirm">Xác nhận</button>
        </form>

        <!-- Back button to return to previous page -->
        <form action="gdChinhNV629.jsp" method="get">
            <button type="submit" class="btn btn-back">Quay lại</button>
        </form>
    </div>
</body>
</html>
