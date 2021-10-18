<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/15
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    static class Timer {
        public static long getNowTime(int Length){
            //Length 时间戳长度，可以是10或13，必须指定一个长度值
            //返回长整数型时间戳
            if(Length == 10){
                return System.currentTimeMillis() / 1000;
            }
            return System.currentTimeMillis();
        }
        public static String getNowTimeStr(int Length){
            //Length 时间戳长度，可以是10或13，必须指定一个长度值
            //返回文本型时间戳
            return String.valueOf(getNowTime(Length));
        }
    }
%>
