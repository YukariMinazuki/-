<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="404.jsp"%>
<%@page import="java.util.*" %>
<jsp:useBean id="now" class="com.yukari.UserDate"/>

<html>
	<head>
		<meta charset="utf-8" />
	<link type="text/css" rel="stylesheet" href="./css/main.css" />
	</head>
	<title>百度一下，你就知道</title>
		<%
		if(application.getAttribute("count")==null){ 
			application.setAttribute("count", new Integer(0)); 
			} 
			Integer count = (Integer)application.getAttribute("count"); 
			application.setAttribute("count",new Integer(count.intValue()+1)); 
			%> 

	<body>
		<div class="div">
			<div class="img2">
				<img src=".\img\baidu.jpg" class="img1" />
			</div>
			
			<form action="https://www.baidu.com/s?<%=request.getAttribute("wd")%>">
				<input type="text" class="sousuo"  name="wd" />
				<input type="submit" class="bluebutton" value="百度一下" />
			</form>
		</div>

		<div class="div2">
			    
		    <%=now %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="https://www.nuomi.com/?cid=002540">百度糯米</a>
			<a href="http://tieba.baidu.com/">百度贴吧</a>
			<a href="https://zhidao.baidu.com">百度知道</a>
			<a href="http://image.baidu.com/">百度图片</a>
			<a href="login.jsp">登录</a>
			<a href="addClinet.jsp">注册</a>
			<a href="javascript:window.opener=null;window.close();">退出</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		
		<div class="div3">
	       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你是第<%=application.getAttribute("count") %>位访问者。
	   <br/>
	   <br/>
	       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版权信息@魔法少女组
	       <br/>
	       <br/>
	   超级无敌可爱温柔善良贤惠的yukari制作
		</div>
	</body>

</html>