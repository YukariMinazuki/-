<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
	</head>
	<style>
		.bluebutton {
			font-family: tahoma, "微软雅黑";
			font-size: 15px;
			color: #ffffff;
			border: 0px #1E90FF solid;
			border-bottom: #1E90FF 1px solid;
			border-left: #1E90FF 1px solid;
			border-right: #1E90FF 1px solid;
			border-top: #1E90FF 1px solid;
			background-color: #1E90FF;
			cursor: hand;
			font-style: normal;
			width: 120px;
			height: 40px;
		}
		.div {
			width: 100%;
			height: 100%;
			position: absolute;
			left: 50%;
			top: 30%;
			margin: -100px 0 0 -300px;
		}
		.sousuo {
			border-color: #1E90FF;
			width: 500px;
			height: 37px;
			border: 0px #1E90FF solid;
			border-bottom: #1E90FF 1px solid;
			border-left: #1E90FF 1px solid;
			border-right: #1E90FF 1px solid;
			border-top: #1E90FF 1px solid;
		}
		.div2 {
			width: 100%;
			height: 50px;
			position: fixed;
			left: 0;
			top: 0;
			border-bottom: #1E90FF 1px solid;
			line-height: 50px;
			font-family: tahoma, "微软雅黑";
			font-size: 17px;
			color: #1E90FF;
			text-align: right;
			background: rgba(255,255,255, 0.5);
		}
		a {
			margin: 50px 0 auto 50px;
			font-size: 13pt;
			color: #1E90FF;
			font-family: "微软雅黑";
			text-align: left;
			text-decoration: underline;
			TEXT-DECORATION: none;
		}
		a:link {
			text-decoration: none;
		}
		a:visited {
			text-decoration: none;
		}
		a:hover {
			text-decoration: none;
		}
		a:active {
			text-decoration: none;
		}
		body {
			background-image: url(./WEB-INF/img/123.jpg);
		}
		.img1 {
		width: 350px;
		height: 200px;		
		}
		.img2{
			margin: 0 0 -20px 120px;
		}
	</style>

	<body>
		<div class="div">
			<div class="img2">
				<img src=".\WEB-INF\img\baidu.jpg" class="img1" />
			</div>
			
			<form action="https://www.baidu.com/s?wd=">
				<input type="text" class="sousuo" />
				<input type="button" class="bluebutton" value="百度一下" />
			</form>
		</div>

		<div class="div2">
			<a href="https://www.nuomi.com/?cid=002540">百度糯米</a>
			<a href="http://tieba.baidu.com/">百度贴吧</a>
			<a href="https://zhidao.baidu.com">百度知道</a>
			<a href="http://image.baidu.com/">百度图片</a>
			<a href="javascript:void(0);">登录</a>
			<a href="javascript:window.close()">退出</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</body>

</html>