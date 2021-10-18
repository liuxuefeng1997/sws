<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/12
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    static class Check {
        public static boolean isNotNull(String e){
            return e != null && !e.equals("") && !e.equals("null");
        }
        public static boolean isNull(String e){
            return e == null || e.equals("") || e.equals("null");
        }
    }
%>
