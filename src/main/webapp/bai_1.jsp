<%-- 
    Document   : bai_1
    Created on : Oct 16, 2024, 8:35:51 AM
    Author     : ADMIN
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Chương trình đầu tiên</title>
</head>
<body>
    <h2>Chương trình đầu tiên</h2>
    <form action="bai_1.jsp" method="post">
        Hãy nhập họ tên: <input type="text" name="hoten" value="" required="" />
        <input type="submit" value="Thi Hành"/>
    </form>
    <%
        request.setCharacterEncoding("UTF-8");
        String hoten=request.getParameter("hoten");
        if(hoten!=null){
        out.println("Chào bạn:<b>"+hoten+"</b>");
        
        
        }
        %>
</body>
</html>

