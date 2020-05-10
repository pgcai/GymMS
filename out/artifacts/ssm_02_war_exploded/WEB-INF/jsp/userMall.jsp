<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/9
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%--商城页--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商城</title>
    <style>
        .card{
            background-image: url("/image/card2.jpg");
            background-size: 100% auto;
            width: 100%;
            height: 250px;
            background-repeat: no-repeat;
        }
    </style>
    <!-- 引入 Bootstrap -->
    <script src="/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
        <jsp:include page="navigationUser.jsp"/>
        <br><br>
    <div class="row">
        <br>
        <div class="col-md-12">
            <div class="col-md-2"></div>
            <div class="col-md-3">
                <div class="panel panel-default panel-success" style="text-align: center">
                <div class="panel-heading">一日体验卡：￥10</div>
                <div class="card"></div>
                <button class="btn btn-success" data-toggle="modal" data-target="#myModal">购买</button>
                </div>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-1"></div>
            <div class="col-md-3">
                <div class="panel panel-default panel-info" style="text-align: center">
                <div class="panel-heading">月卡：￥150</div>
                <div class="card"></div>
                <button class="btn btn-success" data-toggle="modal" data-target="#myModal">购买</button>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="col-md-2"></div>
            <div class="col-md-3">
                <div class="panel panel-default panel-warning" style="text-align: center">
                    <div class="panel-heading">半年卡：￥600</div>
                    <div class="card"></div>
                    <button class="btn btn-success" data-toggle="modal" data-target="#myModal">购买</button>
                </div>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-1"></div>
            <div class="col-md-3">
                <div class="panel panel-default panel-danger" style="text-align: center">
                    <div class="panel-heading">年卡：￥1000</div>
                    <div class="card"></div>
                    <button class="btn btn-success" data-toggle="modal" data-target="#myModal">购买</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<jsp:include page="buyCardMT.jsp"/>
