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
<title>验证登录</title>
</head>
<body>

	<%
		//获取表单信息     
		String userName2 = request.getParameter("userName");
		String passWord2 = request.getParameter("password");
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;

		Class.forName("com.mysql.jdbc.Driver");
		String connectSQL = "jdbc:mysql://localhost:3306/test";
		con = DriverManager.getConnection(connectSQL, "root", "");

		st = con.createStatement();
		String sql1 = "select * from client where userName ='" + userName2 + "'";
		rs = st.executeQuery(sql1);

		if (rs.next()) {
			String username = rs.getString("userName");
			String password = rs.getString("passWord");

			if (password.equals(passWord2)) {
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				session.setAttribute("clientTeiephone", rs.getString("clientTeiephone"));
				session.setAttribute("clientEmail", rs.getString("clientEmail"));

			} else {
				response.sendRedirect("login.jsp");
			}
		}

		rs.close();
		st.close();
		con.close();
		
		response.sendRedirect("show.jsp");
	%>
</body>
</html>