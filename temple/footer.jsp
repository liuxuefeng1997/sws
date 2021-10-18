<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!--占位div-->
<div class="container-fluid fixed-fix-bottom noprint"></div>
<!--页脚-->
<div class="footer bg-dark noprint">
    <div class="container-fluid row">
        <div class="col pc-menu"><!--占位标签--></div>
        <div class="col">
            <nav class="nav flex-column text-center footer-nav-li">
                <a class="nav-link" href="./?route=/about/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("trends")%></a>
                <a class="nav-link" href="#" style="display:none;">Link</a>
                <a class="nav-link" href="#" style="display:none;">Link</a>
            </nav>
        </div>
        <div class="col">
            <nav class="nav flex-column text-center footer-nav-li">
                <a class="nav-link" href="./?route=/brands/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("our_brands")%></a>
                <a class="nav-link" href="./?route=/brands/&lang=<%=lang_type%>&c=1"><%=lang.getJsonObject("header").getString("wine")%></a>
                <a class="nav-link" href="./?route=/brands/&lang=<%=lang_type%>&c=2"><%=lang.getJsonObject("header").getString("liquor")%></a>
                <a class="nav-link" href="./?route=/brands/&lang=<%=lang_type%>&c=3"><%=lang.getJsonObject("header").getString("drinks")%></a>
            </nav>
        </div>
        <div class="col">
            <nav class="nav flex-column text-center footer-nav-li">
                <a class="nav-link" href="./?route=/service/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("our_service")%></a>
                <a class="nav-link" href="#" style="display:none;">Link</a>
                <a class="nav-link" href="#" style="display:none;">Link</a>
            </nav>
        </div>
        <div class="col">
            <nav class="nav flex-column text-center footer-nav-li">
                <a class="nav-link" href="./?route=/news/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("social_responsibility")%></a>
                <a class="nav-link" href="#" style="display:none;">Link</a>
                <a class="nav-link" href="#" style="display:none;">Link</a>
            </nav>
        </div>
        <div class="col pc-menu"><!--占位标签--></div>
    </div>
    <div class="container-fluid">
        <div class="container-fluid footer-inner mt-3 pb-4">
            <div class="img-qr-box m-auto mt-3 mb-5">
                <img src="../img/qrcode.png" alt="" width="100%" height="100%" />
            </div>
            <div class="container copyright text-center text-white mt-1 mb-1">
                <%=lang.getJsonObject("footer").getString("copyright")%>
                &nbsp;
                <%=GeneralSettings.getString("beian")%>
            </div>
            <div class="footer-link">
                <a href="./?route=/news/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("information")%></a>
                <span>|</span>
                <a href="./?route=/article/policy/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("privacy_policy")%></a>
                <span>|</span>
                <a href="./?route=/article/terms/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("terms_service")%></a>
                <span>|</span>
                <a href="./?route=/concat/&lang=<%=lang_type%>"><%=lang.getJsonObject("footer").getString("contact")%></a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
