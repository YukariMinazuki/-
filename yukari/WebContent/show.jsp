<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" errorPage="404.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<%
	session.getAttribute("username");
	session.getAttribute("password");
	session.getAttribute("clientTeiephone");
	session.getAttribute("clientEmail");
%>
<html>
<head>
<link rel="stylesheet" href="css/show.css">
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<title>用户信息显示</title>
<script type="text/javascript" src=".\js\show.js"></script>
</head>
<body>
	<div class="div">
		<h3>您的用户信息如下:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
		<table>
			<tr>
				<td width="27%">昵称</td>
				<td width="33%">联系方式</td>
				<td width="40%">邮箱</td>
			</tr>
			<tr>
				<td><%=session.getAttribute("username") %></td>
				<td><%=session.getAttribute("clientTeiephone") %></td>
				<td><%=session.getAttribute("clientEmail") %></td>
			</tr>
		</table>
		<button class="btn btn-info" onclick="update()" id="button1"
			disabled="disabled">修改信息</button>
		<button class="btn btn-info" onclick="index()" id="button2">返回首页</button>
	</div>
</body>
</html>