<%@page import="com.xdf.bean.Easybuy_User"%>
<%@page import="com.xdf.service.impl.UserServiceImpl"%>
<%@page import="com.xdf.service.UserService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doRegister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <%
     request.setCharacterEncoding("utf-8");
     //通过请求获取用户注册信息  并封装成一个User对象
     Easybuy_User user=new Easybuy_User();
     user.setEmail(request.getParameter("email"));
     user.setIdentityCode(request.getParameter("pid"));
     user.setLoginName(request.getParameter("userName"));
     user.setUserName(request.getParameter("realName"));
     user.setPassword(request.getParameter("password"));
     user.setSex(Integer.parseInt(request.getParameter("sex")));
     user.setMobile(request.getParameter("phone"));
     user.setType(0);
  
      //调用service层代码
      UserService  service=new UserServiceImpl();
      service.register(user);
  
   %>
  
  
  
  
  
  
  
  
  
  
  
  
  </body>
</html>
