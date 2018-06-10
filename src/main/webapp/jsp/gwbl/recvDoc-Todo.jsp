<%--
  Created by IntelliJ IDEA.
  User: fangjiang
  Date: 2018/4/6
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>待办任务列表</title>
    <%@include file="../../common/include/init.jsp"%>
    <script type="text/javascript" src="<%=jsRoot%>ajaxUtil.js"></script>
</head>
<body>
<table class="easyui-datagird" title="待办列表" style="height: auto" id="todoDoc"
       data-options="rownumbers:true,pagination:true,collapsible:true,striped:true,fit:true,toolbar:'#toolbar'">
    <thead>
    <tr>
        <th data-options="field:'id',checkbox:true"></th>
        <th data-options="field:'processName',width:150">流程名称</th>
        <th data-options="field:'userName',width:150,formatter:formatUser">发起人</th>
        <th data-options="field:'workflowName',width:150">当前环节</th>
        <th data-options="field:'takeActorName',width:150,formatter:formatTakeActor">当前办理人</th>
        <th data-options="field:'currentTime',width:175,formatter:formatDate">创建时间</th>
        <th data-options="field:'formName',width:130,formatter:formatForm">挂接表单</th>
        <th data-options="field:'pid',hidden:true"></th>
        <th data-options="field:'taskId',hidden:true"></th>
        <th data-options="field:'takeActor',hidden:true"></th>
        <th data-options="field: 'formId',hidden:true"></th>
        <th data-options="field:'userId',hidden:true"></th>
        <th data-options="field: 'ids',width:100">办理</th>
    </tr>
    </thead>
</table>
<div id="toolbar" style="" class="input-group col-md-10">
    <input class="form-control" placeholder="请输入你要查找的流程名称" id="recvDocName" style="width:250px;height: 30px"/>
    <span>
     <button class="btn btn-info btn-sm" type="button" id="serarchRecvDoc">搜索</button>
     <button class="btn btn-primary btn-sm" style="margin-left: 10px;" id="gotoNext" onclick="gotoNext()">办理</button>
 </span>
</div>
</body>
<script>
    $(function () {
        setContextPath('<%=basePath%>');
        window.onload = function () {
            $('#todoDoc').datagrid('getPager').pagination({
                beforePageText: '第',
                afterPageText: '页   共{pages}页',
                displayMsg: '第{from}到{to}条，共{total}条'
            });
        }
    });
</script>
<script type="text/javascript" src="<%=jsRoot%>recvDoc-todo.js"></script>
</html>
