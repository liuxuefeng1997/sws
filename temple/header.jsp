<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script charset="UTF-8" src="../js/lx.js?v=<%=Timer.getNowTimeStr(10)%>" type="text/javascript"></script>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../css/simpleGridTemplate.css?v=<%=Timer.getNowTimeStr(10)%>">
    <!-- JQuery 3.6.0 -->
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script charset="UTF-8" src="../js/numberRock.js" type="text/javascript"></script>
    <!--自定义脚本及样式-->
    <link charset="UTF-8" href="../css/main.css?v=<%=Timer.getNowTimeStr(10)%>" rel="stylesheet" type="text/css">
    <script charset="UTF-8" src="../js/main.js?v=<%=Timer.getNowTimeStr(10)%>" type="text/javascript"></script>
    <title><%=lang.getJsonObject("header").getString("title")%></title>
</head>
<body>
<!--设备分辨率检查-->
<div class="container err-tip">
    <p class="err-tip-1"><%=lang.getJsonObject("tips").getString("screen_line_1")%></p>
    <p class="err-tip-1"><%=lang.getJsonObject("tips").getString("screen_line_2")%></p>
    <p class="err-tip-2"><%=lang.getJsonObject("tips").getString("noprint_line_1")%></p>
</div>
<!--页首菜单-->
<div class="container-fluid fixed-top c-f-fix bg-white noprint">
    <div class="container-fluid bg-dark row serh">
        <div class="col-9 lspx"></div>
        <div class="col-2 ser p-ser">
            <form class="form-inline my-2" target="_self" action="./" method="get">
                <input type="hidden" name="route" value="/search/">
                <input type="hidden" name="lang" value="<%=lang_type%>">
                <input aria-label="Search" class="form-control mr-sm-1" placeholder="<%=lang.getJsonObject("header").getString("search")%>" type="search" name="search">
            </form>
        </div>
        <div class="col-1 language p-lang">
            <%
                String search_key = "";
                if(Check.isNotNull(request.getParameter("route"))){
                    if(request.getParameter("route").startsWith("/search/")){
                        search_key = "&search=" + request.getParameter("search");
                    }
                    if(request.getParameter("route").startsWith("/brands/")){
                        if(Check.isNotNull(request.getParameter("c"))){
                            search_key = "&c=" + request.getParameter("c");
                        }
                    }
                }
            %>
            <a href="./?route=<%=request.getParameter("route")%>&lang=<%=change_lang%><%=search_key%>"><%=lang_label%></a>
        </div>
    </div>
    <div class="collapse m-ser" id="NavSer">
        <div class="p-1 serh bg-dark">
            <form class="form-inline my-2" target="_self" action="./" method="get">
                <input type="hidden" name="route" value="/search/">
                <input type="hidden" name="lang" value="<%=lang_type%>">
                <input aria-label="Search" class="form-control mr-sm-1" placeholder="<%=lang.getJsonObject("header").getString("search")%>" type="search" name="search">
            </form>
        </div>
    </div>
    <div class="container-fluid header">
        <div class="logo" onclick="window.open('./?route=/&lang=<%=lang_type%>','_self')">
            <img alt="LOGO" src="../img/logo.png"/>
        </div>
    </div>
    <div class="container-fluid bg-white">
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <button aria-controls="Navbar" class="navbar-toggler" data-bs-target="#Navbar" data-bs-toggle="offcanvas"
                    type="button">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="logo" onclick="window.open('./?route=/&lang=<%=lang_type%>','_self')">
                <img alt="LOGO" src="../img/logo.png"/>
            </div>
            <button aria-controls="NavSer" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"
                    data-bs-target="#NavSer" data-bs-toggle="collapse" type="button">
                <i class="bi bi-search"></i>
            </button>
            <div class="col-2 language m-lang">
                <a href="./?route=<%=request.getParameter("route")%>&lang=<%=change_lang%><%=search_key%>"><%=lang_label%></a>
            </div>
            <div aria-labelledby="NavbarLabel" class="offcanvas offcanvas-start" id="Navbar">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="NavbarLabel"><%=lang.getJsonObject("header").getString("menu")%></h5>
                    <button aria-label="Close" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                            type="button"></button>
                </div>
                <!--菜单开始-->
                <div class="offcanvas-body">
                    <ul class="navbar-nav nav-pills nav-fill flex-grow-1 pe-3">
                        <!--关于我们-->
                        <li class="nav-item">
                            <a class="nav-link" href="./?route=/about/&lang=<%=lang_type%>"><%=lang.getJsonObject("header").getString("about_us")%></a>
                            <% if(request.getParameter("route").startsWith("/about/")){ %><div class="nav-active-line pc-menu"></div><% } %>
                        </li>
                        <!--PC端 我们的品牌下拉菜单-->
                        <li class="nav-item pc-menu">
<%--                            <a class="nav-link" href="./?route=/brands/&lang=<%=lang_type%>"><%=lang.getJsonObject("header").getString("our_brands")%></a>--%>
                            <a class="nav-link" href="#" id="nDp" role="button" data-bs-toggle="dropdown" aria-expanded="false"><%=lang.getJsonObject("header").getString("our_brands")%></a>
                            <% if(request.getParameter("route").startsWith("/brands/")){ %><div class="nav-active-line pc-menu"></div><% } %>
                            <div class="dropdown-menu container-fluid c-f-fix p-menu-brand" aria-labelledby="nDp" id="nDpd">
                                <div class="container h-100">
                                    <div class="p-menu-brand-inner">
                                        <!--left-->
                                        <div class="p-menu-brand-inner-left" onclick="window.open('./?route=/brands/&lang=<%=lang_type%>&c=1','_self')">
                                            <div class="p-menu-brand-inner-image float-start">
                                                <img src="../img/index-nav-1.png" alt="" width="88" height="88">
                                            </div>
                                            <div class="p-menu-brand-inner-inx float-start">
                                                <div class="p-menu-brand-inner-title"><%=lang.getJsonObject("header").getString("wine")%></div>
                                                <div class="p-menu-brand-inner-info">
                                                    <a href="./?route=/brands/&lang=<%=lang_type%>&c=1"><%=lang.getJsonObject("header").getString("details")%></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--middle-->
                                        <div class="p-menu-brand-inner-middle" onclick="window.open('./?route=/brands/&lang=<%=lang_type%>&c=2','_self')">
                                            <div class="p-menu-brand-inner-image float-start">
                                                <img src="../img/index-nav-2.png" alt="" width="88" height="88">
                                            </div>
                                            <div class="p-menu-brand-inner-inx float-start">
                                                <div class="p-menu-brand-inner-title"><%=lang.getJsonObject("header").getString("liquor")%></div>
                                                <div class="p-menu-brand-inner-info">
                                                    <a href="./?route=/brands/&lang=<%=lang_type%>&c=2"><%=lang.getJsonObject("header").getString("details")%></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--right-->
                                        <div class="p-menu-brand-inner-right" onclick="window.open('./?route=/brands/&lang=<%=lang_type%>&c=3','_self')">
                                            <div class="p-menu-brand-inner-image float-start">
                                                <img src="../img/index-nav-3.png" alt="" width="88" height="88">
                                            </div>
                                            <div class="p-menu-brand-inner-inx float-start">
                                                <div class="p-menu-brand-inner-title"><%=lang.getJsonObject("header").getString("drinks")%></div>
                                                <div class="p-menu-brand-inner-info">
                                                    <a href="./?route=/brands/&lang=<%=lang_type%>&c=3"><%=lang.getJsonObject("header").getString("details")%></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--移动端 我们的品牌下拉菜单-->
                        <li class="nav-item dropdown mobile-menu">
                            <a class="nav-link" href="#" id="nDm" role="button" data-bs-toggle="dropdown" aria-expanded="false" lang_tag="our_brands">
                                <%=lang.getJsonObject("header").getString("our_brands")%>
                            </a>
                            <ul class="dropdown-menu menu-brand" aria-labelledby="nDm">
                                <li><a class="dropdown-item" href="./?route=/brands/&lang=<%=lang_type%>&c=1"><%=lang.getJsonObject("header").getString("wine")%></a></li>
                                <li><a class="dropdown-item" href="./?route=/brands/&lang=<%=lang_type%>&c=2"><%=lang.getJsonObject("header").getString("liquor")%></a></li>
                                <li><a class="dropdown-item" href="./?route=/brands/&lang=<%=lang_type%>&c=3"><%=lang.getJsonObject("header").getString("drinks")%></a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./?route=/service/&lang=<%=lang_type%>"><%=lang.getJsonObject("header").getString("our_service")%></a>
                            <% if(request.getParameter("route").startsWith("/service/")){ %><div class="nav-active-line pc-menu"></div><% } %>
                        </li>
                        <!--PC端 在线商城下拉菜单-->
                        <li class="nav-item pc-menu">
                            <a class="nav-link" href="#" id="nDpo" role="button" data-bs-toggle="dropdown" aria-expanded="false"><%=lang.getJsonObject("header").getString("online_shop")%></a>
                            <% if(request.getParameter("route").startsWith("/store/")){ %><div class="nav-active-line pc-menu"></div><% } %>
                            <div class="dropdown-menu container-fluid c-f-fix p-menu-brand" aria-labelledby="nDpo" id="nDpod">
                                <div class="container h-100">
                                    <div class="p-menu-brand-inner">
                                        <!--left-->
                                        <div class="p-menu-brand-inner-left p-menu-service-left" onclick="window.open('<%=GeneralSettings.getString("jd_store_link")%>','_blank')">
                                            <div class="p-menu-brand-inner-image float-start" id="jd_qr">
                                                <img src="../img/index-nav-5.png" alt="" width="88" height="88">
                                            </div>
                                            <div class="p-menu-brand-inner-inx float-start">
                                                <div class="p-menu-brand-inner-title"><%=lang.getJsonObject("header").getString("jd_shop")%></div>
                                                <div class="p-menu-brand-inner-info">
                                                    <a href="<%=GeneralSettings.getString("jd_store_link")%>" target="_blank"><%=lang.getJsonObject("header").getString("shop_details")%></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--right-->
                                        <div class="p-menu-brand-inner-right p-menu-service-right" onclick="window.open('<%=GeneralSettings.getString("tmall_store_link")%>','_blank')">
                                            <div class="p-menu-brand-inner-image float-start" id="tm_qr">
                                                <img src="../img/index-nav-6.png" alt="" width="88" height="88">
                                            </div>
                                            <div class="p-menu-brand-inner-inx float-start">
                                                <div class="p-menu-brand-inner-title"><%=lang.getJsonObject("header").getString("tm_shop")%></div>
                                                <div class="p-menu-brand-inner-info">
                                                    <a href="<%=GeneralSettings.getString("tmall_store_link")%>" target="_blank"><%=lang.getJsonObject("header").getString("shop_details")%></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--移动端 在线商城下拉菜单-->
                        <li class="nav-item dropdown mobile-menu">
                            <a class="nav-link" href="#" id="nDmo" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <%=lang.getJsonObject("header").getString("online_shop")%>
                            </a>
                            <ul class="dropdown-menu menu-brand" aria-labelledby="nDmo">
                                <li><a class="dropdown-item" href="<%=GeneralSettings.getString("jd_store_link")%>"><%=lang.getJsonObject("header").getString("jd_shop")%></a></li>
                                <li><a class="dropdown-item" href="<%=GeneralSettings.getString("tmall_store_link")%>"><%=lang.getJsonObject("header").getString("tm_shop")%></a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./?route=/news/&lang=<%=lang_type%>"><%=lang.getJsonObject("header").getString("news_center")%></a>
                            <% if(request.getParameter("route").startsWith("/news/")){ %><div class="nav-active-line pc-menu"></div><% } %>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./?route=/concat/&lang=<%=lang_type%>"><%=lang.getJsonObject("header").getString("concat_us")%></a>
                            <% if(request.getParameter("route").startsWith("/concat/")){ %><div class="nav-active-line pc-menu"></div><% } %>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<!--占位div-->
<div class="container-fluid fixed-fix-top noprint"></div>
<!--内容区 Start-->
