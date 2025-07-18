<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    Connection connection = null;
    try {
        // Load MySQL Driver (Updated class name is correct)
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection (Ensure DB name, user, and password are correct)
        connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/Enabling_AuthorizedEncrypted?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC", 
            "root", 
            "root"
        );

        out.println("✅ Database Connected Successfully!");
    } catch (Exception e) {
        out.println("❌ Database Connection Failed: " + e.getMessage());
        e.printStackTrace();
    } finally {
        if (connection != null) {
            try { connection.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
%>
