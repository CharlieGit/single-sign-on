<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resource/css/login.css">
<script type="text/javascript" src="../resource/js/jquery.min.js"></script>
<title>Login</title>
</head>
<body>
	<div id="login_top">
		<div id="welcome">Welcome</div>
		<div id="back">
			<a href="#">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp; <a href="#">帮助</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
				<form action="../j_spring_security_check" method="post">
					<div id="login_tip">用户登录&nbsp;&nbsp;UserLogin</div>
					<div>
						<input type="text" name="j_username" class="username">
					</div>
					<div>
						<input type="password" name="j_password" class="pwd">
					</div>
					<div id="btn_area">
						<input type="submit" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录"/>&nbsp;&nbsp; 
						<input type="text" class="verify"/> 
						<img src="../resource/images/login/verify.png" alt="" width="80" height="40">
					</div>
					<div id="login-error">${error}</div>
				</form>
			</div>
		</div>
	</div>
	<div id="login_bottom">版权所有</div>
</body>
</html>