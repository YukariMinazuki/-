<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" errorPage="404.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<title>登录页面</title>
<script type="text/javascript" src=".\js\login.js" ></script>
<link rel="stylesheet" href=".\css\login.css" />
 
</head>

<body>
	<img src=".\img\baidu.jpg" class="img1" />
	<div class="div">
	<form action="loginCheck.jsp" method="post" >
	<br />
		昵　称：<input type="text" name="userName"id="userName"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
		<font>请输入4-12个字符</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />	<br />	
		密　码：<input type="password" name="password"id="password"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
		<font>请输入6-16个字符</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />	
		验证码：<input type="text" id="validationCode" size="6" >
		<%
         int intmethod1=(int)((((Math.random())*11))-1);
         int intmethod2=(int)((((Math.random())*11))-1);
         int intmethod3=(int)((((Math.random())*11))-1);
         int intmethod4=(int)((((Math.random())*11))-1);
         String intsum=intmethod1+""+intmethod2+intmethod3+intmethod4;
        %>
		<input type="hidden" id="validationCode2" value="<%=intsum %>">
		<img src="./img/<%=intmethod1 %>.jpg"> 
		<img src="./img/<%=intmethod2 %>.jpg"> 
		<img src="./img/<%=intmethod3 %>.jpg"> 
		<img src="./img/<%=intmethod4 %>.jpg"> 
		<br />
		<font>请输入验证码</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />	
		<button type="submit" class="btn btn-info" value="登录" onClick="return checkAll_01()">登录</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="addClinet.jsp"><button type="button" class="btn btn-info" value="注册" >注册</button></a>
		</form>
		</div>
		
		


</body>
</html>