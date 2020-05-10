<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/9
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员主页</title>
    <!-- 引入 Bootstrap -->
    <script src="/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        .sport{
            background-image: url("/image/sportdata.jpg");
            background-size: 100% auto;
            width: 100%;
            height: 530px;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <jsp:include page="navigationUser.jsp"/>
    <br><br>
    <div class="row">
        <br>
        <div class="col-md-12">
            <div class="col-md-1"></div>
            <div class="col-md-2">
                    <input type="hidden" class="form-control" name="id" value="${user.getId()}"/><br>
                    会员账号：<input disabled="true" class="form-control" type="text" name="username" value="${user.getUsername()}"/><br>
                    会员密码：<input class="form-control" type="text" name="password" value="${user.getPassword()}"/><br>
                    会员姓名：<input class="form-control" type="text" name="name" value="${user.getName()}"><br>
                    会员电话：<input class="form-control" type="text" name="telephone" value="${user.getTelephone()}"><br>
                    会员性别：<input class="form-control" type="text"name="sex" value="${user.getSex()}"><br>
                    会员年龄：<input class="form-control" type="text" name="age" value="${user.getAge()}"><br>
                    注册时间：<input disabled="true" class="form-control" name="begintime" value="${user.getBegintime()}"/><br>
                    结束日期：<input disabled="true" class="form-control" name="endtime" value="${user.getEndtime()}"/><br>
                    剩余天数：<input disabled="true" class="form-control" name="remainday" value="${user.getRemainday()}"/><br>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-6">
                <br><br><br>
                <div class="panel panel-info">
                    <div class="panel-heading">最近健身信息</div>
                <div class="sport"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
