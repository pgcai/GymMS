<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/6
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/6
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%--管理员显示用户列表页--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
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
    <br><br><br><br>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>账号</th>
                    <th>密码</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>电话</th>
                    <th>剩余时间</th>
                    <th>起始时间</th>
                    <th>结束时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}">
                    <tr>
                        <td>${user.getId()}</td>
                        <td>${user.getUsername()}</td>
                        <td>${user.getPassword()}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getSex()}</td>
                        <td>${user.getAge()}</td>
                        <td>${user.getTelephone()}</td>
                        <td>${user.getRemainday()}</td>
                        <td>${user.getBegintime()}</td>
                        <td>${user.getEndtime()}</td>
                        <td>
<%--                            data-toggle="modal" data-target="#myModalupdateUser" href="id=${user.getId()}"--%>
                            <a id="edit" href="${pageContext.request.contextPath}/admin/toUpdateUser?id=${user.getId()}" class="btn btn-info btn-sm">更改</a>
                            <a href="${pageContext.request.contextPath}/admin/del/${user.getId()}" class="btn btn-danger btn-sm">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <jsp:include page="page.jsp"/>
    <form action="/admin/findByPage" method="post">
        <input type="hidden" name="pageNum" id="pageNum">
        <input type="hidden" name="pageSize" id="pageSize">
    </form>
</div>
<%--增加用户，模态窗口--%>
<jsp:include page="addUserMT.jsp"/>
<%--更改用户信息，模态窗口--%>
<jsp:include page="updateUserMT.jsp"/>


