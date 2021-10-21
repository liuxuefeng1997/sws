<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
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
<div class="container inner-box noprint">
    <!--内容区 Start-->
    <%
        JsonObject _news = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("article") + "?news_id=" + request.getParameter("route").replace("/article","").replace("/",""),""));
        if(_news.get("data").toString() != null && !Objects.equals(_news.get("data").toString(), "null") && !Objects.equals(_news.get("data").toString(), "")){
            String key_tag = "";
            if(Objects.equals(lang_type, "en_US")){
                key_tag = "en_";
            }
            String html = _news.getJsonObject("data").getString(key_tag + "content");
            String title = _news.getJsonObject("data").getString(key_tag + "name");
            String time = _news.getJsonObject("data").getString("create_time");
    %>
        <div class="container text-center index-aera-title">
            <%=title%>
        </div>
        <div class="container text-center index-aera-btitle">
            <%=time%>
        </div>
        <div class="container-fluid c-f-fix inner-box-f" id="article"><%=html%></div>
        <script>
            //解决直接赋值富文本未解析的问题
            document.getElementById("article").innerHTML = document.getElementById("article").innerText;
        </script>
    <% }else {
            String key_tag = "";
            if(Objects.equals(lang_type, "en_US")){
                key_tag = "en_";
            }
            String _id = request.getParameter("route").replace("/article","").replace("/","");
            JsonObject _ti = lang.getJsonObject("footer");
            switch (_id){
                case "policy":
    %>
        <!--隐私-->
        <div class="container text-center index-aera-title">
            <%=_ti.getString("privacy_policy")%>
        </div>
        <div class="container-fluid c-f-fix inner-box-f">
            <iframe class="w-100" style="border: none;" id="<%=_id%>" onload="iframeLoad()" src="../license/<%=key_tag%><%=_id%>.htm"></iframe>
        </div>
        <script>
            function iframeLoad(){
                document.getElementById("<%=_id%>").height = document.getElementById("<%=_id%>").contentWindow.document.body.scrollHeight;
            }
        </script>
    <% break; case "terms": %>
        <!--条款-->
        <div class="container text-center index-aera-title">
            <%=_ti.getString("terms_service")%>
        </div>
        <div class="container-fluid c-f-fix inner-box-f">
            <iframe class="w-100" style="border: none;" id="<%=_id%>" onload="iframeLoad()" src="../license/<%=key_tag%><%=_id%>.htm"></iframe>
        </div>
        <script>
            function iframeLoad(){
                document.getElementById("<%=_id%>").height = document.getElementById("<%=_id%>").contentWindow.document.body.scrollHeight;
            }
        </script>
    <% break; default: %>
        <!--默认-->
        内容未设置或ID不存在（ID：<%=_id%>；Route：<%=request.getParameter("route")%>；Language：<%=request.getParameter("lang")%>）
        <br>Data Json Text：<br>
        <%=_news.get("data").toString()%>
    <% break; }} %>
    <!--内容区 End-->
</div>
