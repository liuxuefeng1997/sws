<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/12
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%!
        public static boolean isNotNull(String e){
            return e != null && !e.equals("") && !e.equals("null");
        }
        public static boolean isNull(String e){
            return e == null || e.equals("") || e.equals("null");
        }
    %>
    <%
        String _error_id = "500",_error_info = "服务器错误/Server error",_error_type = "Server";
        if(request.getServletPath().startsWith("/www/")){
            if(isNull(request.getParameter("route"))){
                _error_type = "Route";
                _error_id = "1002";
                _error_info = "路由未指定/Route not specified";
            }
        }else if(request.getServletPath().startsWith("/temple/")){
            if(isNotNull(request.getParameter("eid"))){
                switch (request.getParameter("eid")){
                    case "1003":
                        _error_type = "Path";
                        _error_id = "1003";
                        _error_info = "路径禁止访问/Path access forbidden";
                        break;
                }
            }else {
                _error_type = "Parameter";
                _error_id = "1001";
                _error_info = "参数错误：本页面用于展示错误信息，请勿直接访问/Parameter error: This page is used to display error information, do not directly access";
            }
        }
    %>
    <title><%=_error_type%> Error ( <%=_error_id%> )</title>
    <style>
        .error-title{
            margin-top: 10px;
            text-align: left;
            margin-left: 10px;
        }
        .error-info-out{
            width: calc(100% - 20px);
            height: calc(100% - 150px);
            margin-left: 10px;
            overflow: hidden;
            overflow-y: auto;
        }
        .error-info{
            width: 100%;
            overflow: hidden;
            display: inline-block;
        }
        .error-button-bar{
            width: calc(100% - 20px);
            margin-left: 10px;
            margin-top: 10px;
            height: 50px;
        }
        .error-button-bar button{
            height: calc(100% - 10px);
            width: auto;
            margin: 5px;
            border: none;
            background: #303030;
        }
        .error-button-bar button:hover{
            background: #404040;
            cursor: pointer;
        }
        .error-button-bar button label{
            margin: 0 10px;
            color: #EEEEEE;
            cursor: pointer;
            -webkit-user-drag: none;
            user-select: none;
        }
    </style>
</head>
<body>
    <h4 class="error-title"><%=_error_type%> Error: <%=_error_id%></h4>
    <div class="error-info-out">
        <div class="error-info"><%=_error_info%></div>
    </div>
    <div class="error-button-bar">
        <button onclick="window.open('../','_self')">
            <label>返回首页 / Back Home</label>
        </button>
    </div>
</body>
</html>
