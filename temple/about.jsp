<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--Banner 图-->
<div class="container-fluid c-f-fix noprint">
    <div class="carousel slide banner" data-bs-ride="carousel" id="carouselExampleIndicators">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img alt="..." class="d-block w-100" src="../img/page-bg.jpg">
            </div>
        </div>
    </div>
</div>
<!--内容区 Start-->
<div class="container inner-box noprint">
    <div class="container text-center index-aera-title">
        <%=lang.getJsonObject("about").getString("title")%>
    </div>
    <div class="container text-center index-aera-btitle">
        <%=lang.getJsonObject("about").getString("title_c")%>
    </div>
    <div class="container-fluid c-f-fix inner-box-f">
        <!--PC端关于我们-->
        <svg class="p-card" viewBox="0 0 1380 1411.07" width="100%" xmlns="http://www.w3.org/2000/svg">
            <svg viewBox="0 0 1380 415.71" width="1380" height="415.71" x="0" y="0">
                <%
                    String _about_fx = "490";
                    if(Objects.equals(lang_type, "en_US")){
                        _about_fx = "355";
                    }
                %>
                <text color="#333" font-size="24" font-weight="bold" x="<%=_about_fx%>" y="24"><%=lang.getJsonObject("about").getString("card_fir_title")%></text>
                <foreignObject x="71" y="65" width="562" height="351">
                    <!-- XHTML content goes here -->
                    <body xmlns="http://www.w3.org/1999/xhtml">
                    <div class="about-box-text">
                        <%=lang.getJsonObject("about").getString("card_fir_text")%>
                    </div>
                    </body>
                </foreignObject>

                <svg viewBox="0 0 48 415.71" width="48" height="415.71" x="665" y="0">
                    <circle cx="24" cy="24" fill="#313EEC" r="24"></circle>
                    <line stroke="#707070" stroke-width="2" x1="24" x2="24" y1="77" y2="415.71"></line>
                </svg>

                <foreignObject x="742" y="0" width="568" height="319.53">
                    <!-- XHTML content goes here -->
                    <body xmlns="http://www.w3.org/1999/xhtml">
                    <div style="width: 100%;overflow: hidden;">
                        <img src="../img/about/1.png" alt="" width="100%">
                    </div>
                    </body>
                </foreignObject>
            </svg>
            <svg viewBox="0 0 1380 415.71" width="1380" height="415.71" x="0" y="445.71">
                <foreignObject x="65" y="0" width="568" height="319.53">
                    <!-- XHTML content goes here -->
                    <body xmlns="http://www.w3.org/1999/xhtml">
                    <div style="width: 100%;overflow: hidden;">
                        <img src="../img/about/2.png" alt="" width="100%">
                    </div>
                    </body>
                </foreignObject>

                <svg viewBox="0 0 48 415.71" width="48" height="415.71" x="665" y="0">
                    <circle cx="24" cy="24" fill="#313EEC" r="24"></circle>
                    <line stroke="#707070" stroke-width="2" x1="24" x2="24" y1="77" y2="415.71"></line>
                </svg>

                <text color="#333" font-size="24" font-weight="bold" x="742" y="24"><%=lang.getJsonObject("about").getString("card_sed_title")%></text>
                <foreignObject x="742" y="65" width="562" height="351">
                    <!-- XHTML content goes here -->
                    <body xmlns="http://www.w3.org/1999/xhtml">
                    <div class="about-box-text">
                        <%=lang.getJsonObject("about").getString("card_sed_text")%>
                    </div>
                    </body>
                </foreignObject>
            </svg>
            <svg viewBox="0 0 1380 519.65" width="1380" height="519.65" x="0" y="891.42">
                <%
                    String _about_tx = "431";
                    if(Objects.equals(lang_type, "en_US")){
                        _about_tx = "360";
                    }
                %>
                <text color="#333" font-size="24" font-weight="bold" x="<%=_about_tx%>" y="24"><%=lang.getJsonObject("about").getString("card_trd_title")%></text>
                <foreignObject x="71" y="65" width="562" height="351">
                    <!-- XHTML content goes here -->
                    <body xmlns="http://www.w3.org/1999/xhtml">
                    <div class="about-box-text">
                        <%=lang.getJsonObject("about").getString("card_trd_text")%>
                    </div>
                    </body>
                </foreignObject>

                <svg viewBox="0 0 48 519.65" width="48" height="519.65" x="665" y="0">
                    <circle cx="24" cy="24" fill="#313EEC" r="24"></circle>
                    <line stroke="#707070" stroke-width="2" x1="24" x2="24" y1="77" y2="471.65"></line>
                </svg>

                <foreignObject x="742" y="0" width="568" height="319.53">
                    <!-- XHTML content goes here -->
                    <body xmlns="http://www.w3.org/1999/xhtml">
                    <div style="width: 100%;overflow: hidden;">
                        <img src="../img/about/3.png" alt="" width="100%">
                    </div>
                    </body>
                </foreignObject>
            </svg>
        </svg>
        <!--移动端关于我们-->
        <div class="container-fluid m-card">
            <div class="about-box-card">
                <div class="about-box-title-mobile"><%=lang.getJsonObject("about").getString("card_fir_title")%></div>
                <div class="about-box-text-mobile">
                    <%=lang.getJsonObject("about").getString("card_fir_text")%>
                </div>
                <div class="about-box-image-mobile">
                    <img src="../img/about/1.png" alt="" width="100%">
                </div>
            </div>
            <div class="about-box-card">
                <div class="about-box-title-mobile"><%=lang.getJsonObject("about").getString("card_sed_title")%></div>
                <div class="about-box-text-mobile">
                    <%=lang.getJsonObject("about").getString("card_sed_text")%>
                </div>
                <div class="about-box-image-mobile">
                    <img src="../img/about/2.png" alt="" width="100%">
                </div>
            </div>
            <div class="about-box-card">
                <div class="about-box-title-mobile"><%=lang.getJsonObject("about").getString("card_trd_title")%></div>
                <div class="about-box-text-mobile">
                    <%=lang.getJsonObject("about").getString("card_trd_text")%>
                </div>
                <div class="about-box-image-mobile">
                    <img src="../img/about/3.png" alt="" width="100%">
                </div>
            </div>
        </div>
    </div>
</div>
<!--内容区 End-->
