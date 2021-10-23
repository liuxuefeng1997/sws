<%@ page import="java.io.File" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.util.Objects" %>

<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/12
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    static class cfgreader {
        public static String getFullPath(){
            return Objects.requireNonNull(Thread.currentThread().getContextClassLoader().getResource("")).getPath().split("/WEB-INF/")[0].replace("file:","");
        }
        public static String getConfigStr(String json_full_path) {
            StringBuilder jsonstr = new StringBuilder();
            try {
                File file = new File(json_full_path);
                if (file.isFile() && file.exists()) {
                    InputStreamReader read = new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8);
                    BufferedReader bufferedReader = new BufferedReader(read);
                    String lineTXT;
                    while ((lineTXT = bufferedReader.readLine()) != null) {
                        jsonstr.append(lineTXT);
                    }
                    read.close();
                    return jsonstr.toString();
                }
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }
        public static String getLangStr(String json_full_path, String default_full_path) {
            StringBuilder jsonstr = new StringBuilder();
            try {
                File file = new File(json_full_path);
                if (file.isFile() && file.exists()) {
                    InputStreamReader read = new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8);
                    BufferedReader bufferedReader = new BufferedReader(read);
                    String lineTXT;
                    while ((lineTXT = bufferedReader.readLine()) != null) {
                        jsonstr.append(lineTXT);
                    }
                    read.close();
                    return jsonstr.toString();
                } else {
                    if (default_full_path != null && !Objects.equals(default_full_path, "")) {
                        InputStreamReader read = new InputStreamReader(new FileInputStream(new File(default_full_path)), StandardCharsets.UTF_8);
                        BufferedReader bufferedReader = new BufferedReader(read);
                        String lineTXT;
                        while ((lineTXT = bufferedReader.readLine()) != null) {
                            jsonstr.append(lineTXT);
                        }
                        read.close();
                        return jsonstr.toString();
                    }
                    return "";
                }
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }
    }
%>
