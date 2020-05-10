<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/9
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%--增加用户模态窗--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <form action="${pageContext.request.contextPath}/admin/addUser" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">新增用户</h4>
                </div>
                <div class="modal-body">
                    <%--                <p>问题描述</p>--%>
                    <%--                <textarea class="form-control"></textarea>--%>
                    <input placeholder="会员账号" class="form-control" type="text" name="username"><br/>
                    <input placeholder="会员密码" class="form-control" type="text" name="password"><br/>
                    <input placeholder="会员姓名" class="form-control" type="text" name="name"><br/>
                    会员性别：<input name="sex" type="radio" checked="checked" value="男"/>男
                    <input name="sex" type="radio" value="女"/>女<br><br/>
                    <input placeholder="会员电话" class="form-control" type="text" name="telephone"><br/>
                    <input placeholder="会员年龄" class="form-control" type="text" name="age"><br/>
                    <input placeholder="起始日期" class="form-control" type="date" name="begintime"><br/>
                    <input placeholder="办卡天数" class="form-control" type="text" name="remainday">
                    <br/><br/>
                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
                    <input class="btn btn-success" type="submit" value="添加">
                </div>
            </div><!-- /.modal-content -->
        </form>
    </div><!-- /.modal-dialog -->
</div>
