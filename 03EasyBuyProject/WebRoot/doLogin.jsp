<%@page import="com.xdf.bean.Easybuy_User"%>
<%@page import="com.xdf.service.impl.UserServiceImpl"%>
<%@page import="com.xdf.service.UserService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doLogin.jsp' starting page</title>
    
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
   /* 
     现在这个doLogin页面存在的意义
     01.获取login页面用户输入的信息
     02.调用service层得到数据库数据
     03.进行比对返回用户响应
   
   
    */
   //解决post请求乱码问题
    request.setCharacterEncoding("utf-8");
     String userName= request.getParameter("userName");
     String password=  request.getParameter("password");
     
     //调用service层代码
     UserService  service=new UserServiceImpl();
     Easybuy_User  user= service.login(userName,password);
     if(user!=null){
       //存在session作用域中
       session.setAttribute("loginUser", user);
     }else{
       //重定向到login.jsp
       response.sendRedirect("login.jsp");
     }
    %>
  
  
  
  
  
  
  </body>
</html>
