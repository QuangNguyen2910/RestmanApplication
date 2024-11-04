<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restman - Tìm kiếm thông tin món ăn</title>
    <link rel="icon" href="../PageLogo.svg">
    <style>
        /* General styling for the body */
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
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            background-color: #FDF7F0;
            box-sizing: border-box;
        }

        /* Button styling */
        .btn {
            padding: 10px 20px;
            font-size: 16px;
            color: #ffffff;
            background-color: #D84315;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
            margin-top: 10px;
            width: 100%;
        }

        .btn:hover {
            background-color: #BF360C;
        }

        .btn-back {
            background-color: #8D6E63;
        }

        .btn-back:hover {
            background-color: #6D4C41;
        }
    </style>
    <script type="text/javascript">
        function validateForm() {
            var foodNameInput = document.getElementById("foodname");
            if (foodNameInput.value.trim() === "") {
                alert("Yêu cầu nhập tên món ăn!");
                foodNameInput.focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <!-- Page title -->
        <h1>Tìm kiếm thông tin món ăn</h1>

        <!-- Form to submit food name with validation -->
        <form action="gdChonMon629.jsp" method="POST" onsubmit="return validateForm()">
            <label for="tenMon">Tên món:</label>
            <input type="text" id="tenMon" name="tenMon">
            <button type="submit" class="btn">Xác nhận</button>
        </form>

        <!-- Button to go back -->
        <form action="gdChinhKH629.jsp" method="get">
            <button type="submit" class="btn btn-back">Quay lại</button>
        </form>
    </div>
</body>
</html>
