<%-- 
    Document   : bai_2
    Created on : Oct 16, 2024, 9:09:23 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diện tích – Chu vi Hình Chữ Nhật</title>
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
            input[type="text"] {
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
        <h1>Tính Diện Tích – Chu Vi Hình Chữ Nhật</h1>
        <form action="bai_2.jsp" method="POST">
            <table border="0">
                <tr>
                    <td>Nhập chiều dài:</td>
                    <td><input type="text" name="dai" value="" required/></td>
                </tr>
                <tr>
                    <td>Nhập chiều rộng:</td>
                    <td><input type="text" name="rong" value="" required/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Tính toán"></td>
                    <td><input type="reset" value="Tiếp tục"></td>
                </tr>
            </table>
        </form>

        <%
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");

            if (dai != null && rong != null) {
                try {
                    double d = Double.parseDouble(dai);
                    double r = Double.parseDouble(rong);
                    double dt = d * r;
                    double cv = 2 * (d + r);
        %>
                    <div class="result">
                        <hr>
                        <p>Diện tích: <%= dt %></p>
                        <p>Chu vi: <%= cv %></p>
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
