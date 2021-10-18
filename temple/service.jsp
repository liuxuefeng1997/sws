<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!--Banner 图-->
<div class="container-fluid c-f-fix noprint">
    <div id="carouselExampleIndicators" class="carousel slide banner" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../img/page-bg.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
    </div>
</div>
<!--内容区 Start-->
<div class="container inner-box noprint">
    <div class="container text-center index-aera-title">
        <%=lang.getJsonObject("service").getString("title")%>
    </div>
    <div class="container text-center index-aera-btitle">
        <%=lang.getJsonObject("service").getString("title_c")%>
    </div>
    <div class="container inner-box-f">
        <!--PC端-->
        <!--介绍-->
        <svg class="service-card p-card mb-4" viewBox="0 0 1240 428" width="100%">
            <foreignObject height="428" width="1240" x="0" y="0">
                <!-- XHTML content goes here -->
                <body xmlns="http://www.w3.org/1999/xhtml">
                <img src="../img/service/bg-1.png" alt="" width="100%" height="100%" class="service-card-image">
                </body>
            </foreignObject>
            <foreignObject height="428" width="466" x="774" y="0">
                <!-- XHTML content goes here -->
                <body xmlns="http://www.w3.org/1999/xhtml">
                <div class="service-title"><%=lang.getJsonObject("service").getString("card_fir_title")%></div>
                <div class="service-text">
                    <%=lang.getJsonObject("service").getString("card_fir_text")%>
                </div>
                </body>
            </foreignObject>
        </svg>
        <!--销售团队-->
        <svg class="service-card p-card mb-4" viewBox="0 0 1240 428" width="100%">
            <foreignObject height="428" width="1240" x="0" y="0">
                <!-- XHTML content goes here -->
                <body xmlns="http://www.w3.org/1999/xhtml">
                <img src="../img/service/bg-2.png" alt="" width="100%" height="100%" class="service-card-image">
                </body>
            </foreignObject>
            <foreignObject height="428" width="466" x="0" y="0">
                <!-- XHTML content goes here -->
                <body xmlns="http://www.w3.org/1999/xhtml">
                <div class="service-title"><%=lang.getJsonObject("service").getString("card_sed_title")%></div>
                <div class="service-text">
                    <%=lang.getJsonObject("service").getString("card_sed_text")%>
                </div>
                </body>
            </foreignObject>
        </svg>
        <!--市场营销-->
        <svg class="service-card p-card mb-1" viewBox="0 0 1240 428" width="100%">
            <foreignObject height="428" width="1240" x="0" y="0">
                <!-- XHTML content goes here -->
                <body xmlns="http://www.w3.org/1999/xhtml">
                <img src="../img/service/bg-3.png" alt="" width="100%" height="100%" class="service-card-image">
                </body>
            </foreignObject>
            <foreignObject height="428" width="466" x="774" y="0">
                <!-- XHTML content goes here -->
                <body xmlns="http://www.w3.org/1999/xhtml">
                <div class="service-title"><%=lang.getJsonObject("service").getString("card_trd_title")%></div>
                <div class="service-text">
                    <%=lang.getJsonObject("service").getString("card_trd_text")%>
                </div>
                </body>
            </foreignObject>
        </svg>
        <!--移动端-->
        <div class="container-fluid m-card">
            <!--介绍-->
            <div class="about-box-title-mobile"><%=lang.getJsonObject("service").getString("card_fir_title")%></div>
            <div class="about-box-text-mobile">
                <%=lang.getJsonObject("service").getString("card_fir_text")%>
            </div>
            <div class="about-box-image-mobile">
                <img src="../img/service/bg-m-1.png" alt="" width="100%">
            </div>
            <!--销售团队-->
            <div class="about-box-title-mobile"><%=lang.getJsonObject("service").getString("card_sed_title")%></div>
            <div class="about-box-text-mobile">
                <%=lang.getJsonObject("service").getString("card_sed_text")%>
            </div>
            <div class="about-box-image-mobile">
                <img src="../img/service/bg-m-2.png" alt="" width="100%">
            </div>
            <!--市场营销-->
            <div class="about-box-title-mobile"><%=lang.getJsonObject("service").getString("card_trd_title")%></div>
            <div class="about-box-text-mobile">
                <%=lang.getJsonObject("service").getString("card_trd_text")%>
            </div>
            <div class="about-box-image-mobile">
                <img src="../img/service/bg-m-3.png" alt="" width="100%">
            </div>
        </div>
    </div>
</div>
<!--内容区 End-->
