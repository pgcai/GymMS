<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/6
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%--更新用户页--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <script src="/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <%--    引入导航栏--%>
    <jsp:include page="navigation.jsp"/>
        <br/><br/><br/>
    <div class="row">
        <div class="col-xs-12">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/admin/updateUser" method="post">
        <div class="col-xs-9">
            <div class="col-xs-4">
                会员id  :<input class="form-control" name="id" value="${user.getId()}"/><br>
                会员账号：<input class="form-control" type="text" name="username" value="${user.getUsername()}"/><br>
                会员密码：<input class="form-control" type="text" name="password" value="${user.getPassword()}"/><br>
                会员姓名：<input class="form-control" type="text" name="name" value="${user.getName()}"><br>
                会员电话：<input class="form-control" type="text" name="telephone" value="${user.getTelephone()}"><br>
                会员性别：<input name="sex" type="radio" checked="checked" value="男"/>男
                <input name="sex" type="radio" value="女"/>女<br><br>
            </div>
            <div class="col-xs-1"></div>
            <div class="col-xs-4">
                会员年龄：<input class="form-control" type="text" name="age" value="${user.getAge()}"><br>
                注册时间：<input class="form-control" name="begintime" value="${user.getBegintime()}"/><br>
                结束日期：<input class="form-control" name="endtime" value="${user.getEndtime()}"/><br>
                剩余天数：<input class="form-control disabled" name="remainday" value="${user.getRemainday()}"/><br>
                增减天数：<input class="form-control" type="text" name="addday" value="0"><br><br>
            </div>
        </div>
            <div class="col-xs-9">
                <div class="col-xs-4"></div>
                <div class="col-xs-4">
                    <input class="btn btn-success btn-lg" type="submit" value="提交"/>
                </div>
            </div>
        </form>
    </div>
</div>
