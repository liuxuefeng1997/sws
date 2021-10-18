<%@ page import="javax.json.JsonObject" %>
<%@ page import="java.util.Objects" %>
<%@ page import="javax.json.Json" %>
<%@ page import="java.io.StringReader" %>

<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/12
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    static class JsonReader {
        public static JsonObject getJsonObj(String jsonstr){
            if(jsonstr != null && !Objects.equals(jsonstr,"")){
                return Json.createReader(new StringReader(jsonstr)).readObject();
            }
            return null;
        }
    }
%>
