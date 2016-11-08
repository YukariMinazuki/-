<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.io.*" errorPage="404.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   request.setCharacterEncoding("utf-8");
   response.setCharacterEncoding("utf-8");
   response.setContentType("utf-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>写入数据</title>
</head>
<body> 


    <% 
//获取表单信息

    String userName=request.getParameter("userName");
    String password=request.getParameter("passWord");
    String clientTeiephone=request.getParameter("clientTeiephone");
    String clientEmail=request.getParameter("clientEmail");
    
//链接数据库
       Class.forName("com.mysql.jdbc.Driver");
       String connectSQL="jdbc:mysql://localhost:3306/test";
       Connection conn= DriverManager.getConnection(connectSQL,"root","");
       
//添加到client表
       String sql="insert into client values(?,?,?,?)";       
       PreparedStatement zx = conn.prepareStatement(sql);
            
       zx.setString(1, userName);
       zx.setString(2, password);
       zx.setString(3, clientTeiephone);
       zx.setString(4, clientEmail);
       
       zx.executeUpdate();
      
       zx.close();   
       conn.close();
    %>
    
    <p>您的信息登记成功，即将跳往登录界面</p>
    <%response.sendRedirect("login.jsp");%>    
</body>
</html>