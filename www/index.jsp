<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%--加载插件--%>
<%@ include file="../plugin/Loader.jsp" %>
<%--开始加载模板--%>
<% if (Check.isNotNull(request.getParameter("route"))) { %>
    <%@ include file="../temple/header.jsp" %>
    <%--根据路由加载对应页面--%>
    <%if (request.getParameter("route") == null || Objects.equals(request.getParameter("route"), "/") || Objects.equals(request.getParameter("route"), "")) {%>
        <%@include file="../temple/home.jsp" %>
    <%} else if (Objects.equals(request.getParameter("route"), "/about/")) {%>
        <%@include file="../temple/about.jsp" %>
    <%} else if (Objects.equals(request.getParameter("route"), "/brands/")) {%>
        <%@include file="../temple/brands.jsp" %>
    <%} else if (Objects.equals(request.getParameter("route"), "/service/")) {%>
        <%@include file="../temple/service.jsp" %>
    <%} else if (Objects.equals(request.getParameter("route"), "/news/")) {%>
        <%@include file="../temple/news.jsp" %>
    <%} else if (Objects.equals(request.getParameter("route"), "/concat/")) {%>
        <%@include file="../temple/concat.jsp" %>
    <%} else if (Objects.equals(request.getParameter("route"), "/search/")) {%>
        <%@include file="../temple/search.jsp" %>
    <%} else if (request.getParameter("route").startsWith("/article/")) {%>
        <%@include file="../temple/article.jsp" %>
    <%} else {%>
        <%@include file="../temple/home.jsp" %>
    <%}%>
    <%@ include file="../temple/footer.jsp" %>
<% } else { %>
    <%@ include file="../temple/error.jsp" %>
<% } %>