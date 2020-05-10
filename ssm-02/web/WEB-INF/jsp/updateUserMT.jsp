<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/9
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%--更新用户模态窗 暂时不管用--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--更新用户信息模态窗--%>
<div class="modal fade" id="myModalupdateUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <form action="${pageContext.request.contextPath}/admin/updateUser" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">编辑用户信息</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="id" value="${user.getId()}"/>
                    会员账号：<input type="text" name="username" value="${user.getUsername()}"/><br><br><br>
                    会员密码：<input type="text" name="password" value="${user.getPassword()}"/><br><br><br>
                    会员姓名：<input type="text" name="name" value="${user.getName()}"><br><br><br>
                    会员性别：<input name="sex" type="radio" checked="checked" value="男"/>男
                    <input name="sex" type="radio" value="女"/>女<br><br><br>
                    会员电话：<input type="text" name="telephone" value="${user.getTelephone()}"><br><br><br>
                    会员年龄：<input type="text" name="age" value="${user.getAge()}"><br><br><br>
                    增减天数：<input type="text" name="addday" value="0"><br><br><br>
                    <input type="hidden" name="begintime" value="${user.getBegintime()}"/>
                    <input type="hidden" name="endtime" value="${user.getEndtime()}"/>
                    <input type="hidden" name="remainday" value="${user.getRemainday()}"/>
                    <br/><br/>
                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
                    <input class="btn btn-success" type="submit" value="更新">
                </div>
            </div><!-- /.modal-content -->
        </form>
    </div><!-- /.modal-dialog -->
</div>
