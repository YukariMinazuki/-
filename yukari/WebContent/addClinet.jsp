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
<title>注册页面</title>
</head>
<script type="text/javascript" src=".\js\addClinet.js" ></script>
<link rel="stylesheet" href=".\css\addClinet.css" />
</head>
<body>
    <img src=".\img\baidu.jpg" class="img1" />
	<div class="div">
	 <form action="addClinetCheck.jsp" method="post">
		<h3>您的账户信息：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
		
		昵　　称*：<input type="text" name="userName" id="userName_01" /><br /> 
		<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入4-12个字符</font><br /><br />
		
		密　　码*：<input type="password" name="passWord" id="passWord"/><br /> 
		<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入6-16个字符</font><br /><br />
		
		确认密码*：<input type="password" id="password2" /><br /> 
		<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请再次输入密码</font><br /><br />
		
		<h3>您的个人信息：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
				
		联系方式：<input type="text" name="clientTeiephone"id="clientTeiephone"  /><br /> 
		<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入正确的电话号码</font><br /><br />		
		
		邮箱地址：<input type="text" name="clientEmail" id="clientEmail"  /><br />
		<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入正确的邮箱地址</font><br /><br />
		<font>注：带*为必填项</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
		<br /><br />
		
		<button type="submit" class="btn btn-info" value="确定" onClick="return mycheck() ">确定</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	    <button type="button" class="btn btn-info" onclick = "location.href='index.jsp';" value="取消" >取消</button>
	</form>
	</div>
</body>
</html>
