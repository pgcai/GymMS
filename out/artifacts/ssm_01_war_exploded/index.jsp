<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/6
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3 {
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 4px;
    }
  </style>
    <script src="./WEB-INF/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="./WEB-INF/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="./WEB-INF/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
<h3>
  <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>
</h3>
</body>
</html>
