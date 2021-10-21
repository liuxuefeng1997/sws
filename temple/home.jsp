<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!--Banner 图-->
<div class="container-fluid c-f-fix noprint">
    <div id="carouselExampleIndicators" class="carousel slide banner" data-bs-ride="carousel">
        <div class="carousel-indicators" id="carousel-indicators">
            <% for (int i = 0;i < banner.getJsonArray("data").size();i++){if(i == 0){%>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i + ""%>" aria-label="Slide <%=i + 1 + ""%>" class="active" aria-current="true"></button>
                <%}else {%>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i + ""%>" aria-label="Slide <%=i + 1 + ""%>"></button>
            <%}}%>
        </div>
        <div class="carousel-inner">
            <% for (int i = 0;i < banner.getJsonArray("data").size();i++){
                String add_class = "";
                if(i == 0){
                    add_class = " active";
                }
                JsonObject banner_json = JsonReader.getJsonObj(banner.getJsonArray("data").get(i).toString());
                String img_link = banner_json.getString("image");
                String key_tag = "";
                if(Objects.equals(lang_type, "en_US")){
                    key_tag = "en_";
                }
                String car_title = banner_json.getString(key_tag + "title");
                String car_btitle = banner_json.getString(key_tag + "subtitle");
                String car_text = banner_json.getString(key_tag + "info");
            %>
                    <div class="carousel-item<%=add_class%>">
                        <img src="<%=img_link%>" class="d-block w-100" alt="...">
                        <!--Banner 宣传标语定位层-->
                        <div class="carousel-caption-out">
                            <div class="carousel-caption-in">
                                <h4 class="text-end"><%=car_title%></h4>
                                <h5 class="text-end"><%=car_btitle%></h5>
                                <p class="text-start"><%=car_text%></p>
                            </div>
                        </div>
                    </div>
            <%}%>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<!--首页-特色-->
<!--首页-特色-内容-->
<div class="container-fluid c-f-fix index-card-aera noprint" id="index-te">
    <!--双端尺寸的SVG实现，CSS判断设备显示相应元素-->
    <!--移动尺寸-->
    <svg viewBox="0 0 414 100" width="100%" class="m-card" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <!--背景-->
        <rect x="0" y="0" height="39" width="414" fill="#333" fill-opacity="1" id="index-tex-m"></rect>
        <!--卡片1-->
        <rect x="15" y="0" height="78" width="110" fill="#FFF" fill-opacity="1" stroke="#000" stroke-opacity="0.16" stroke-width="1.5" id="index-card-m"></rect>
        <svg xmlns="http://www.w3.org/2000/svg" width="29" height="27" x="56" y="12" viewBox="0 0 102.57 100">
            <g transform="translate(-401 -1187)">
                <path fill="#333" d="M159.591,89.3h-8.223V84.366a3.633,3.633,0,0,0-7.266,0V89.3H111.254V84.366a3.633,3.633,0,0,0-7.266,0V89.3H95.766A19.377,19.377,0,0,0,76.39,108.628v52.787a19.377,19.377,0,0,0,19.376,19.327h63.819a19.377,19.377,0,0,0,19.376-19.327V108.628A19.364,19.364,0,0,0,159.591,89.3Zm12.11,72.114a12.107,12.107,0,0,1-12.11,12.079H95.766a12.107,12.107,0,0,1-12.11-12.079V108.628a12.107,12.107,0,0,1,12.11-12.079h8.223v5.4a3.633,3.633,0,0,0,7.266,0v-5.4H144.1v5.4a3.633,3.633,0,0,0,7.266,0v-5.4h8.223a12.107,12.107,0,0,1,12.11,12.079v52.787Z" transform="translate(324.61 1106.257)"/>
                <path fill="#b4c56f" d="M327.807,426.454h16.254a3.668,3.668,0,0,0,3.665-3.665V407.47a3.668,3.668,0,0,0-3.665-3.665H332.407V396.4h12.827a3.665,3.665,0,0,0,0-7.33H328.742a3.668,3.668,0,0,0-3.665,3.665v14.739a3.668,3.668,0,0,0,3.665,3.665H340.4v7.989H327.8a3.665,3.665,0,1,0,.006,7.33Zm-24.213,1.784a3.668,3.668,0,0,0,3.665-3.665v-34.3a3.665,3.665,0,1,0-7.33,0v34.3a3.668,3.668,0,0,0,3.665,3.665Z" transform="translate(127.871 840.178)"/>
            </g>
        </svg>
        <%
            String _home_l_hlm = "32",_home_l_hlm2 = "72",_home_hxm = "56";
            if(Objects.equals(lang_type, "en_US")){
                _home_l_hlm = "36";
                _home_l_hlm2 = "48";
                _home_hxm = "72";
            }
        %>
        <text x="<%=_home_l_hlm%>" y="58" fill="#333" font-size="16" font-weight="bold" id="year_m">15<%=lang.getJsonObject("home").getString("years")%></text>
        <text x="<%=_home_l_hlm2%>" y="<%=_home_hxm%>" fill="#999" font-size="12" font-weight="400"><%=lang.getJsonObject("home").getString("in_china")%></text>
        <!--卡片2-->
        <rect x="152" y="0" height="78" width="110" fill="#FFF" fill-opacity="1" stroke="#000" stroke-opacity="0.16" stroke-width="1.5"></rect>
        <svg xmlns="http://www.w3.org/2000/svg" width="29" height="27" x="193" y="13" viewBox="0 0 100 92.43">
            <g transform="translate(0 16.279)">
                <path fill="#333" d="M98.013,175.015a13.558,13.558,0,0,1-9.8-4.159L53.43,135.028a19.541,19.541,0,0,1-2.113-24.505L64.61,90.965a19.042,19.042,0,0,1,15.746-8.379H115.1a19.076,19.076,0,0,1,15.609,8.174l13.743,19.68a19.493,19.493,0,0,1-1.976,24.705l-34.66,35.706a13.563,13.563,0,0,1-9.808,4.165ZM80.357,89.249a12.487,12.487,0,0,0-10.318,5.492L56.745,114.3a12.809,12.809,0,0,0,1.383,16.059l34.78,35.828a7.1,7.1,0,0,0,10.209,0l34.66-35.706a12.777,12.777,0,0,0,1.3-16.193l-13.743-19.68A12.5,12.5,0,0,0,115.1,89.249H80.357ZM54.029,112.41Z" transform="translate(-47.963 -98.864)"/>
                <path fill="#b4c56f" d="M364.3,386.312a9.025,9.025,0,0,1-6.6-2.456l-21.139-22.983c-1.392-1.514-.664-3.489,1.626-4.409s5.275-.439,6.667,1.076l19.423,21.12,18.938-21.094c1.367-1.525,4.344-2.028,6.65-1.124s3.066,2.874,1.7,4.4l-20.621,22.972a8.97,8.97,0,0,1-6.6,2.5Z" transform="translate(-314.047 -331.999)"/>
            </g>
        </svg>
        <%
            String _home_m_hlm = "174",_home_m_hlm2 = "217";
            if(Objects.equals(lang_type, "en_US")){
                _home_m_hlm = "190";
                _home_m_hlm2 = "190";
            }
        %>
        <text x="<%=_home_m_hlm%>" y="58" fill="#333" font-size="16" font-weight="bold" id="brand_m">150+</text>
        <text x="<%=_home_m_hlm2%>" y="<%=_home_hxm%>" fill="#999" font-size="12" font-weight="400"><%=lang.getJsonObject("home").getString("brands")%></text>
        <!--卡片3-->
        <rect x="289" y="0" height="78" width="110" fill="#FFF" fill-opacity="1" stroke="#000" stroke-opacity="0.16" stroke-width="1.5"></rect>
        <svg xmlns="http://www.w3.org/2000/svg" width="29" height="27" x="333" y="12" viewBox="0 0 91.09 101.835">
            <g transform="translate(0 2.501)">
                <path fill="#b4c56f" d="M527.906,96.967a19.537,19.537,0,0,1-9.978-2.734,2.862,2.862,0,1,1,2.925-4.92,13.833,13.833,0,1,0-6.729-13.066,2.864,2.864,0,0,1-5.707-.477,19.557,19.557,0,1,1,19.489,21.2Z" transform="translate(-456.372 -60.356)"/>
                <path fill="#333" d="M176.158,241.674a6.091,6.091,0,0,0-4.843-9.789H107.368a6.091,6.091,0,0,0-4.843,9.789l33.138,43.455v26.984H114.926a3.678,3.678,0,1,0,0,7.356h48.6a3.678,3.678,0,1,0,0-7.356h-20.5V285.129Zm-7.393-2.44-29.43,38.588-29.423-38.588Z" transform="translate(-101.268 -220.134)"/>
            </g>
        </svg>
        <%
            String _home_r_hlm = "306",_home_r_hlm2 = "359";
            if(Objects.equals(lang_type, "en_US")){
                _home_r_hlm = "321";
                _home_r_hlm2 = "321";
            }
        %>
        <text x="<%=_home_r_hlm%>" y="58" fill="#333" font-size="16" font-weight="bold" id="product_m">1000+</text>
        <text x="<%=_home_r_hlm2%>" y="<%=_home_hxm%>" fill="#999" font-size="12" font-weight="400"><%=lang.getJsonObject("home").getString("products")%></text>
    </svg>
    <!--PC尺寸-->
    <svg viewBox="0 0 1920 353" width="100%" class="p-card" version="1.1" xmlns="http://www.w3.org/2000/svg" id="pc-t-ctr">
        <!--背景-->
        <rect x="0" y="0" height="141" width="1920" fill="#333" fill-opacity="1" id="index-tex-p"></rect>
        <!--卡片1-->
        <rect x="270" y="0" height="308" width="365" fill="#FFF" fill-opacity="1" stroke="#000" stroke-opacity="0.16" stroke-width="3" id="index-card-p"></rect>
        <svg xmlns="http://www.w3.org/2000/svg" width="104" height="100" x="401" y="64" viewBox="0 0 102.57 100">
            <g id="组_32" data-name="组 32" transform="translate(-401 -1187)">
                <path fill="#333" d="M159.591,89.3h-8.223V84.366a3.633,3.633,0,0,0-7.266,0V89.3H111.254V84.366a3.633,3.633,0,0,0-7.266,0V89.3H95.766A19.377,19.377,0,0,0,76.39,108.628v52.787a19.377,19.377,0,0,0,19.376,19.327h63.819a19.377,19.377,0,0,0,19.376-19.327V108.628A19.364,19.364,0,0,0,159.591,89.3Zm12.11,72.114a12.107,12.107,0,0,1-12.11,12.079H95.766a12.107,12.107,0,0,1-12.11-12.079V108.628a12.107,12.107,0,0,1,12.11-12.079h8.223v5.4a3.633,3.633,0,0,0,7.266,0v-5.4H144.1v5.4a3.633,3.633,0,0,0,7.266,0v-5.4h8.223a12.107,12.107,0,0,1,12.11,12.079v52.787Z" transform="translate(324.61 1106.257)"/>
                <path fill="#b4c56f" d="M327.807,426.454h16.254a3.668,3.668,0,0,0,3.665-3.665V407.47a3.668,3.668,0,0,0-3.665-3.665H332.407V396.4h12.827a3.665,3.665,0,0,0,0-7.33H328.742a3.668,3.668,0,0,0-3.665,3.665v14.739a3.668,3.668,0,0,0,3.665,3.665H340.4v7.989H327.8a3.665,3.665,0,1,0,.006,7.33Zm-24.213,1.784a3.668,3.668,0,0,0,3.665-3.665v-34.3a3.665,3.665,0,1,0-7.33,0v34.3a3.668,3.668,0,0,0,3.665,3.665Z" transform="translate(127.871 840.178)"/>
            </g>
        </svg>
        <%
            String _home_l_hlx = "367",_home_l_hlx2 = "467";
            if(Objects.equals(lang_type, "en_US")){
                _home_l_hlx = "323";
                _home_l_hlx2 = "482";
            }
        %>
        <foreignObject x="<%=_home_l_hlx%>" y="179" width="200" height="36">
            <!-- XHTML content goes here -->
            <body xmlns="http://www.w3.org/1999/xhtml">
            <style>
                .year_p {
                    font-size: 36px;
                    color: #333;
                    font-weight: bold;
                    line-height: 36px;
                    user-select: none;
                    -webkit-user-drag: none;
                }
            </style>
            <div class="year_p">
                <span id="year_num">15</span><%=lang.getJsonObject("home").getString("years")%>
            </div>
            </body>
        </foreignObject>
        <text x="<%=_home_l_hlx2%>" y="208" fill="#999" font-size="24" font-weight="400"><%=lang.getJsonObject("home").getString("in_china")%></text>
        <!--卡片2-->
        <rect x="777" y="0" height="308" width="365" fill="#FFF" fill-opacity="1" stroke="#000" stroke-opacity="0.16" stroke-width="3"></rect>
        <svg xmlns="http://www.w3.org/2000/svg" width="104" height="100" x="910" y="64" viewBox="0 0 100 92.43">
            <g transform="translate(0 16.279)">
                <path fill="#333" d="M98.013,175.015a13.558,13.558,0,0,1-9.8-4.159L53.43,135.028a19.541,19.541,0,0,1-2.113-24.505L64.61,90.965a19.042,19.042,0,0,1,15.746-8.379H115.1a19.076,19.076,0,0,1,15.609,8.174l13.743,19.68a19.493,19.493,0,0,1-1.976,24.705l-34.66,35.706a13.563,13.563,0,0,1-9.808,4.165ZM80.357,89.249a12.487,12.487,0,0,0-10.318,5.492L56.745,114.3a12.809,12.809,0,0,0,1.383,16.059l34.78,35.828a7.1,7.1,0,0,0,10.209,0l34.66-35.706a12.777,12.777,0,0,0,1.3-16.193l-13.743-19.68A12.5,12.5,0,0,0,115.1,89.249H80.357ZM54.029,112.41Z" transform="translate(-47.963 -98.864)"/>
                <path fill="#b4c56f" d="M364.3,386.312a9.025,9.025,0,0,1-6.6-2.456l-21.139-22.983c-1.392-1.514-.664-3.489,1.626-4.409s5.275-.439,6.667,1.076l19.423,21.12,18.938-21.094c1.367-1.525,4.344-2.028,6.65-1.124s3.066,2.874,1.7,4.4l-20.621,22.972a8.97,8.97,0,0,1-6.6,2.5Z" transform="translate(-314.047 -331.999)"/>
            </g>
        </svg>
        <%
            String _home_m_hlx = "879",_home_m_hlx2 = "993";
            if(Objects.equals(lang_type, "en_US")){
                _home_m_hlx = "869";
                _home_m_hlx2 = "973";
            }
        %>
        <foreignObject x="<%=_home_m_hlx%>" y="179" width="200" height="36">
            <!-- XHTML content goes here -->
            <body xmlns="http://www.w3.org/1999/xhtml">
            <style>
                .brand_p {
                    font-size: 36px;
                    color: #333;
                    font-weight: bold;
                    line-height: 36px;
                    user-select: none;
                    -webkit-user-drag: none;
                }
            </style>
            <div class="brand_p">
                <span id="brand_num">150</span>+
            </div>
            </body>
        </foreignObject>
        <text x="<%=_home_m_hlx2%>" y="208" fill="#999" font-size="24" font-weight="400"><%=lang.getJsonObject("home").getString("brands")%></text>
        <!--卡片3-->
        <rect x="1284" y="0" height="308" width="365" fill="#FFF" fill-opacity="1" stroke="#000" stroke-opacity="0.16" stroke-width="3"></rect>
        <svg xmlns="http://www.w3.org/2000/svg" width="104" height="100" x="1415" y="64" viewBox="0 0 91.09 101.835">
            <g transform="translate(0 2.501)">
                <path fill="#b4c56f" d="M527.906,96.967a19.537,19.537,0,0,1-9.978-2.734,2.862,2.862,0,1,1,2.925-4.92,13.833,13.833,0,1,0-6.729-13.066,2.864,2.864,0,0,1-5.707-.477,19.557,19.557,0,1,1,19.489,21.2Z" transform="translate(-456.372 -60.356)"/>
                <path fill="#333" d="M176.158,241.674a6.091,6.091,0,0,0-4.843-9.789H107.368a6.091,6.091,0,0,0-4.843,9.789l33.138,43.455v26.984H114.926a3.678,3.678,0,1,0,0,7.356h48.6a3.678,3.678,0,1,0,0-7.356h-20.5V285.129Zm-7.393-2.44-29.43,38.588-29.423-38.588Z" transform="translate(-101.268 -220.134)"/>
            </g>
        </svg>
        <%
            String _home_r_hlx = "1375",_home_r_hlx2 = "1511";
            if(Objects.equals(lang_type, "en_US")){
                _home_r_hlx = "1355";
                _home_r_hlx2 = "1481";
            }
        %>
        <foreignObject x="<%=_home_r_hlx%>" y="179" width="200" height="36">
            <!-- XHTML content goes here -->
            <body xmlns="http://www.w3.org/1999/xhtml">
            <style>
                .products_p {
                    font-size: 36px;
                    color: #333;
                    font-weight: bold;
                    line-height: 36px;
                    user-select: none;
                    -webkit-user-drag: none;
                }
            </style>
            <div class="products_p">
                <span id="products_num">1000</span>+
            </div>
            </body>
        </foreignObject>
        <text x="<%=_home_r_hlx2%>" y="208" fill="#999" font-size="24" font-weight="400"><%=lang.getJsonObject("home").getString("products")%></text>
    </svg>
</div>
<script id="get_rid_of_sb_as_soon_as_he_has_done_his_job">
    let ts = {
        'numP': function (){
            $(function(){
                $("#year_num").numberRock({
                    lastNumber:15,		//终止数字
                    duration:800,
                    easing:'swing',  	//慢快慢
                });
            });
            $(function(){
                $("#brand_num").numberRock({
                    lastNumber:150,		//终止数字
                    duration:800,
                    easing:'swing',  	//慢快慢
                });
            });
            $(function(){
                $("#products_num").numberRock({
                    lastNumber:1000,		//终止数字
                    duration:800,
                    easing:'swing',  	//慢快慢
                });
            });
            ts.remove();
        },
        'remove': function (){
            window.onwheel = null;
            document.getElementById("get_rid_of_sb_as_soon_as_he_has_done_his_job").remove();
        }
    }
    ts.numP();
    is_onresize_event();
</script>

<!--首页-新闻与活动-->
<div class="container-fluid c-f-fix noprint">
    <div class="container text-center index-aera-title">
        <%=lang.getJsonObject("home").getString("news")%>
    </div>
    <div class="container text-center index-aera-btitle">
        <%=lang.getJsonObject("home").getString("news_c")%>
    </div>
    <!--首页-新闻与活动-新闻卡片区域-->
    <div class="container">
        <!--首页-新闻与活动-新闻卡片区域定位元素-->
        <div class="gallery">
            <%
                JsonArray _nj = news_index.getJsonObject("data").getJsonArray("data");
                for (int i = 0;i < _nj.size();i++){
                    String key_tag = "";
                    if(Objects.equals(lang_type, "en_US")){
                        key_tag = "en_";
                    }
                    JsonObject news = JsonReader.getJsonObj(_nj.get(i).toString());
            %>
                    <!--首页-新闻与活动-新闻卡片<%=i + 1 + ""%>-->
                    <div class="thumbnail"> <a href="./?route=/article/<%=news.getInt("news_id") + ""%>/"><img src="<%=news.getString("file_path")%>" alt="" width="2000" class="cards"/></a>
                        <h4 style="padding-left: 0;"><%=news.getString(key_tag + "name")%></h4>
                        <p class="text_column" style="padding-left: 0;"><%=news.getString(key_tag + "sn")%></p>
                    </div>
            <%}%>
        </div>
    </div>
    <!--首页-新闻与活动-加载更多-->
    <div class="container load-more-aera">
        <div class="load-more-button" onclick="window.open('./?route=/news/&lang=<%=lang_type%>','_self')">
            <%=lang.getJsonObject("home").getString("read_more")%>
        </div>
    </div>
</div>

<!--首页-我们的品牌-->
<div class="container-fluid c-f-fix noprint">
    <div class="container text-center index-aera-title">
        <%=lang.getJsonObject("home").getString("portfolio")%>
    </div>
    <div class="container text-center index-aera-btitle">
        <%=lang.getJsonObject("home").getString("portfolio_c")%>
    </div>
    <div class="container index-po">
        <div class="row">
            <div class="col po-card">
                <div class="po-card-bg" style="background: url('../img/index-p-1.png'); background-size: 100% auto;"></div>
                <div class="po-card-ctr" onclick="window.open('./?route=/brands/&lang=<%=lang_type%>&c=1','_self')">
                    <div class="po-card-ctr-title"><%=lang.getJsonObject("home").getString("wine")%></div>
                </div>
            </div>
            <div class="col po-card">
                <div class="po-card-bg" style="background: url('../img/index-p-2.png'); background-size: 100% auto;"></div>
                <div class="po-card-ctr" onclick="window.open('./?route=/brands/&lang=<%=lang_type%>&c=2','_self')">
                    <div class="po-card-ctr-title"><%=lang.getJsonObject("home").getString("liquor")%></div>
                </div>
            </div>
            <div class="col po-card">
                <div class="po-card-bg" style="background: url('../img/index-p-3.png'); background-size: 100% auto;"></div>
                <div class="po-card-ctr" onclick="window.open('./?route=/brands/&lang=<%=lang_type%>&c=3','_self')">
                    <div class="po-card-ctr-title"><%=lang.getJsonObject("home").getString("drinks")%></div>
                </div>
            </div>
        </div>
    </div>
</div>
