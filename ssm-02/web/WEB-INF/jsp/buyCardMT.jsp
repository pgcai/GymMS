<%--
  Created by IntelliJ IDEA.
  User: Super-CC
  Date: 2020/5/9
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .pay{
       background-image: url("/image/pay.jpg");
        background-size: 100% auto;
        width: 550px;
        height: 330px;
}
</style>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">安全支付中···</h4>
            </div>
            <div class="modal-body" style="text-align: center">
                <div class="pay"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">我已付款√</button>
            </div>
        </div>
    </div>
</div>