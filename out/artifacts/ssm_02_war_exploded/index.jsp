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
  <script src="/js/jquery/2.0.0/jquery.min.js"></script>
  <link href="/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
  <script src="/js/bootstrap/3.3.6/bootstrap.min.js"></script>
  <script>
  $(function () {
    var x = 0;
    // 鼠标进入，检测账号密码
    $("#downup").mouseenter(function() {
      $.ajax({
        url:"${pageContext.request.contextPath}/user/toLogintest",
        data:{'name':$("#name").val(),'pwd':$("#pwd").val()},
        // data:{'pwd':$("#pwd").val()},
        success:function (data) {
          x = 1;
          if (data.toString()=='Login Success'){
            $("#Info").css("color","green");
            $("#Info").css("font-weight","bold")
          }else {
            $("#Info").css("color","red");
            $("#Info").css("font-weight","bold")
          }
          $("#Info").html(data);
        }
      });
    })
  });
  </script>
</head>
<body style='background-image: url("image/bac.jpg"); background-repeat: no-repeat; background-size: cover; background-color: transparent;'>
<div class="container-fluid" >
  <div class="row">
    <div class="col-xs-12"><br><br><br><br><br><br><br><br><br><br></div>
    <div class="col-xs-7"></div>
    <div id="test" class="col-xs-3 panel panel-body">
      <br><br>
      <form action="/user/toLogin" method="post">
        <input id="name" name="username" type="text" class="form-control" PLACEHOLDER="请输入账号" ><br><br>
        <input id="pwd" name="password" type="password" class="form-control" PLACEHOLDER="请输入密码"><br>
        <span id="Info" ></span><br>
        <button id="downup" type="submit" class="btn btn-success" value="${error}">登 录</button>
        <br><br>
        <a href="/user/toUserRegister" style="float: left">注册</a>
        <a href="/admin/toaLogin" style="float: right">管理员登录</a>
      <br>
      </form>
      <span value="${error}"></span>
    </div>
  </div>
</div>
</body>
</html>
<%--<h3>--%>
<%--  <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>--%>
<%--</h3>--%>

