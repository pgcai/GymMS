<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/7
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%--管理登录页--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        div#test{
            text-align: center;
            filter;
            background-color:rgba(255, 255, 255, 0.5);
        }
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
    <script>
        $(function() {
            document.getElementById("zh").focus();
        });
    </script>
    <script src="/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body style='background-image: url("../../image/bac.jpg"); background-repeat: no-repeat; background-size: cover; background-color: transparent;'>
<div class="container-fluid" >
    <div class="row">
        <div class="col-xs-12"><br><br><br><br><br><br><br><br><br><br></div>
        <div class="col-xs-7"></div>
        <div id="test" class="col-xs-3 panel panel-body">
            <form action="${pageContext.request.contextPath}/admin/aLogin" method="post">
                <br><br>
                <input id="zh" type="text" name="username" class="form-control" PLACEHOLDER="请输入账号" >
                <br><br>
                <input type="password" name="password" class="form-control" PLACEHOLDER="请输入密码">
                <br><br>
                <button type="submit" class="btn btn-success">管理员登录</button>
                <br><br>
                <a href="/" style="float: right">用户登录</a>
                <br>
            </form>
        </div>
    </div>
</div>
</body>
</html>
<%--<h3>--%>
<%--  <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>--%>
<%--</h3>--%>
