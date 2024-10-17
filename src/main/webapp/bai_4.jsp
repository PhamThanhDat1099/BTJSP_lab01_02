<%-- 
    Document   : bai_4
    Created on : Oct 16, 2024, 9:49:47 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chuyển Đổi Ngoại Tệ Sang VNĐ</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
            }
            table {
                margin: 0 auto;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 8px;
            }
            td {
                padding: 10px;
            }
            input[type="text"], select {
                width: 150px;
                padding: 5px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }
            input[type="submit"], input[type="reset"] {
                padding: 10px 20px;
                border-radius: 5px;
                border: none;
                background-color: #4CAF50;
                color: white;
                cursor: pointer;
            }
            input[type="submit"]:hover, input[type="reset"]:hover {
                background-color: #45a049;
            }
            .result {
                margin-top: 20px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <h1>Chuyển Đổi Ngoại Tệ Sang VNĐ</h1>
        <form action="bai_4.jsp" method="POST">
            <table border="0">
                <tr>
                    <td>Nhập số tiền:</td>
                    <td><input type="text" name="sotien" value="" required/></td>
                </tr>
                <tr>
                    <td>Chọn loại ngoại tệ:</td>
                    <td>
                        <select name="ngoaite" required>
                            <option value="USD">USD</option>
                            <option value="GBP">GBP</option>
                            <option value="EUR">EUR</option>
                            <option value="JPY">JPY</option>
                            <option value="AUD">AUD</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Chuyển đổi"></td>
                    <td><input type="reset" value="Tiếp tục"></td>
                </tr>
            </table>
        </form>

        <%
            String sotien = request.getParameter("sotien");
            String ngoaite = request.getParameter("ngoaite");

            if (sotien != null && ngoaite != null) {
                try {
                    double tien = Double.parseDouble(sotien);
                    double tygia = 0;

                    switch (ngoaite) {
                        case "USD":
                            tygia = 21380.00;
                            break;
                        case "GBP":
                            tygia = 32622.80;
                            break;
                        case "EUR":
                            tygia = 23555.67;
                            break;
                        case "JPY":
                            tygia = 178.61;
                            break;
                        case "AUD":
                            tygia = 16727.44;
                            break;
                    }

                    double ketqua = tien * tygia;
        %>
                    <div class="result">
                        <hr>
                        <p>Số tiền quy đổi: <%= String.format("%.2f", ketqua) %> VNĐ</p>
                    </div>
        <%
                } catch (NumberFormatException e) {
        %>
                    <div class="result">
                        <p>Vui lòng nhập số hợp lệ!</p>
                    </div>
        <%
                }
            }
        %>
    </body>
</html>

