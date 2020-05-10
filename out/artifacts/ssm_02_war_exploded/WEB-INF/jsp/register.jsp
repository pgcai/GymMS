<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/6
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%--用户注册--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>会员注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>注册</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-4">
    <form action="${pageContext.request.contextPath}/user/userRegister" method="post">
        会员账号：<input class="form-control" type="text" name="username" value="user"><br><br>
        会员密码：<input class="form-control" type="text" name="password" value="user"><br><br>
        会员姓名：<input class="form-control" type="text" name="name"><br><br>
        会员性别：<input name="sex" type="radio" checked="checked" value="男"/>男
        <input name="sex" type="radio" value="女"/>女<br><br>
        会员电话：<input class="form-control" type="text" name="telephone"><br><br>
        会员年龄：<input class="form-control" type="text" name="age"><br><br>
        <input class="btn btn-success" type="submit" value="注册">
    </form>
        </div>
    </div>

</div>
