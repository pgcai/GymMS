<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/9
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%--主页导航栏--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row clearfix">
    <div class="col-md-12 column navbar navbar-fixed-top">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img alt="Brand" src="/image/tb2.ico" width="50" height="50">
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/admin/findByPage">会员列表<span class="sr-only">(current)</span></a></li>
                        <%--                            <li><a href="${pageContext.request.contextPath}/admin/toAddUser">新增</a></li>--%>
                        <li data-toggle="modal" data-target="#myModal"><a>新增</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">记账流水</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">健身器材维护</a></li>
                                <li><a href="#">健身房实时客流量</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="/admin/buy">商城</a></li>
                                <li><a href="#">活动</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/admin/searchUser" method="post">
                        <div class="form-group">
                            <input name="name" type="text" class="form-control" placeholder="Search by name">
                        </div>
                        <button type="submit" class="btn btn-default">查询</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">签到</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">个人信息</a></li>
                                <li><a href="#">系统设置</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/admin/aLogin" class="disabled">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</div>
