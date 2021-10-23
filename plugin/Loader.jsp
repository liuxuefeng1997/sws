<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>

<%--导入包（全局）--%>
<%@ page import="javax.json.JsonArray" %>
<%@ page import="java.util.Objects" %>
<%--END-START--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--加载插件--%>
<%@ include file="lib/ConfigReader.jsp"%>
<%@ include file="lib/HttpLoader.jsp"%>
<%@ include file="lib/JsonReader.jsp"%>
<%@ include file="lib/StringCheck.jsp"%>
<%@ include file="lib/Timer.jsp"%>
<%--
    配置文件加载
--%>
<%
    String webroot = cfgreader.getFullPath();
    
    String config_path = webroot + "/config";
    JsonObject _config = JsonReader.getJsonObj(cfgreader.getConfigStr(config_path + "/setting.json"));
    JsonObject GeneralSettings = _config.getJsonObject("general");
%>
<%--
    多语言加载
--%>
<%
    String _lang;
    if (request.getParameter("lang") != null && !Objects.equals(request.getParameter("lang"), "")) {
        _lang = request.getParameter("lang");
    } else {
        _lang = "zh_CN";
    }
    String local_path = config_path + "/local/";
    String lang_path = local_path + _lang;

    //out.print(jsonstr);
    JsonObject _lang_cfg = JsonReader.getJsonObj(cfgreader.getLangStr(lang_path + ".json", local_path + "default.json"));
    String lang_type = _lang_cfg.getString("_self");
    JsonObject lang = _lang_cfg.getJsonObject("data");
    String change_lang,lang_tab,lang_label = "中/EN";
    if (Objects.equals(lang_type, "zh_CN")) {
        change_lang = "en_US";
        lang_tab = "";
    } else {
        change_lang = "zh_CN";
        lang_tab = " list-tab-en";
    }
    //out.print(change_lang);
%>
<%--
    初始化接口数据
--%>
<%
    JsonObject ApiSetting = _config.getJsonObject("api");//读取配置文件api分支
    JsonObject banner = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("banner_path"),""));//将banner数据存入变量
    JsonObject news_index = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("news_path") + "?limit=" + GeneralSettings.getString("news_sum_one_page"),""));//将新闻数据存入变量
    String contact_post_link = ApiSetting.getString("host") + ApiSetting.getString("contact_path");
%>
