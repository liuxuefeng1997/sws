<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 14:40
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
        <%=lang.getJsonObject("news").getString("title")%>
    </div>
    <div class="container text-center index-aera-btitle">
        <%=lang.getJsonObject("news").getString("title_c")%>
    </div>
    <!--新闻与活动-新闻卡片区域-->
    <div class="container-fluid news-era">
        <!--新闻与活动-新闻卡片区域定位元素-->
        <div class="gallery" id="news-list">
            <%
                JsonArray _nj = news_index.getJsonObject("data").getJsonArray("data");
                for (int i = 0;i < _nj.size();i++){
                    String key_tag = "";
                    if(Objects.equals(lang_type, "en_US")){
                        key_tag = "en_";
                    }
                    JsonObject news = JsonReader.getJsonObj(_nj.get(i).toString());
            %>
                    <!--新闻与活动-新闻卡片<%=i + 1 + ""%>-->
                    <div class="thumbnail">
                        <a href="./?route=/article/<%=news.getInt("news_id") + ""%>/&lang=<%=request.getParameter("lang")%>">
                            <img src="<%=news.getString("file_path")%>" alt="" width="2000" class="cards"/>
                        </a>
                        <h4><%=news.getString(key_tag + "name")%></h4>
                        <p class="text_column"><%=news.getString(key_tag + "sn")%></p>
                        <div class="news-era-link">
                            <div class="news-time">
                                <%=news.getString("create_time").split(" ")[0]%>
                            </div>
                            <div class="news-link">
                                <a href="./?route=/article/<%=news.getInt("news_id") + ""%>/&lang=<%=request.getParameter("lang")%>"><%=lang.getJsonObject("news").getString("details")%></a>
                            </div>
                        </div>
                    </div>
            <%}%>
        </div>
    </div>
    <!--新闻与活动-加载更多-->
    <% if(news_index.getJsonObject("data").getInt("last_page") > 1){ %>
    <div class="container-fluid c-f-fix load-more-aera" id="news-load-more">
        <div class="load-more-button news-page" onclick="load_more();">
            <%=lang.getJsonObject("news").getString("load_more")%>
        </div>
    </div>
    <% } %>
    <script>
        let cr_page = 1;
        function load_more(){
            <%
                if(news_index.getJsonObject("data").getInt("last_page") > 1){
                    String key_tag = "";
                    if(Objects.equals(lang_type, "en_US")){
                        key_tag = "en_";
                    }
            %>
            //因为初次已经加载了第一页，故当最大页数大于1时才执行加载
            let load_more_i18n = "<%=lang.getJsonObject("news").getString("details")%>";
            let res = "";
            if(!(cr_page === -1)){
                res = lx.http.res("GET","<%=ApiSetting.getString("host")%><%=ApiSetting.getString("news_path")%>?limit=<%=GeneralSettings.getString("news_sum_one_page")%>&page=" + (cr_page + 1).toString(),false);
                let json = JSON.parse(res);
                let array = json.data.data;
                let lang = "<%=request.getParameter("lang")%>"
                for(let i in array){
                    let nid = array[i].news_id;
                    let npic = array[i].file_path;
                    let sn = array[i]["<%=key_tag%>sn"];
                    let name = array[i]["<%=key_tag%>name"];
                    let time = array[i].create_time.split(" ")[0];
                    //创建对象
                    let div = document.createElement("div");
                    div.className = "thumbnail";
                    div.innerHTML = '<a href="./?route=/article/' + nid + '/&lang=' + lang + '"><img src="' + npic + '" alt="" width="2000" class="cards"/></a>'
                        + '<h4>' + name + '</h4><p class="text_column">' + sn + '</p>'
                        + '<div class="news-era-link"><div class="news-time">' + time + '</div><div class="news-link">'
                        + '<a href="./?route=/article/' + nid + '/&lang=' + lang + '">' + load_more_i18n + '</a></div></div>';
                    document.getElementById("news-list").appendChild(div);
                }
                _debug = "当前：" + json.data.current_page + "；最大：" + json.data.last_page;
                console.log(_debug);
                cr_page = json.data.current_page;
                if(json.data.current_page === json.data.last_page){
                    cr_page = -1;
                    document.getElementById("news-load-more").remove();
                }
            }
            <% } %>
            console.log(0);
        }
    </script>
</div>
<!--内容区 End-->
