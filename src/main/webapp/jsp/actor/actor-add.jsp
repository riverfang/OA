<%--
  Created by IntelliJ IDEA.
  User: fangjiang
  Date: 2018/3/27
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../common/include/init.jsp"%>
<script type="text/javascript" src="<%=jsRoot%>ajaxUtil.js"></script>
<html>
<head>
    <title>角色添加</title>
</head>
<body>
<div>
    <span style="margin-left: 100px;">角色添加</span>
    <div class="input-group">
        <span>角色名称：</span> <input class="form-control" placeholder="请输入要添加的角色名称" id="actorName"/><br/>
        <div style="margin-top: 150px;margin-left: 50px;">
            <button class="btn btn-sm btn-primary"  onclick="doSubmit()">确认</button>
            <button class="btn btn-sm btn-primary" onclick="window.close()">取消</button>
        </div>
    </div>
</div>
</body>
<script>
    function doSubmit() {
        var obj = new Object();
        obj.actorName = $("#actorName").val();
        if($.trim(obj.actorName)==''||obj.actorName==null){
            $.messager.show({
                title: '提示',
                msg: '角色名称不能为空'
            });
            return;
        }
        doData("<%=basePath%>actor/insertActor",obj,function (data) {
            if(data=="success"){
                $.messager.show({
                    title: '提示',
                    msg: '已成功添加一条数据'
                });
                window.opener.find();
                window.close();
            }else{
                $.messager.alert('提示','添加失败,错误代码'+data,'error');
            }
        })
    }
</script>
</html>