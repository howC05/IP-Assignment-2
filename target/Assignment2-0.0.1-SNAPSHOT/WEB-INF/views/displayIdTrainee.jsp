<%@ page import="java.util.*, java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trainee Details</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ip23db", "root", "");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from trainee where id=" + id);
            if(rs.next()) {
    %>
    <h1>Trainee Details:</h1>
    <p>ID: <%= rs.getInt("id") %></p>
    <p>Name: <%= rs.getString("name") %></p>
    <p>Weight: <%= rs.getDouble("weight") %></p>
    <%
            } else {
                out.println("<p>Trainee not found.</p>");
            }
            conn.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
