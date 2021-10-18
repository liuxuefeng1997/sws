<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/9
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="container-fluid c-f-fix noprint">
    <div id="carouselExampleIndicators" class="carousel slide banner" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../img/page-bg.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
    </div>
</div>
<div class="container inner-box noprint">
    <div class="container text-center index-aera-title">
        <%=lang.getJsonObject("header").getString("search")%>（<%=lang.getJsonObject("header").getString("keyword")%>：<%=request.getParameter("search")%>）
    </div>
    <div class="inner-box-f">
        <!--切换按钮-->
        <div class="list-group list-group-horizontal justify-content-center" id="list-tab" role="tablist" style="display: none">
            <a aria-controls="list-home" class="list-group-item list-group-item-action active" data-bs-toggle="list"
               href="#list-home" id="list-home-list" role="tab" onclick="changeCountryList(1);classifyBrands(1);"><%=lang.getJsonObject("brands").getString("wine")%></a>
        </div>
        <!--切换内容-->
        <div class="tab-content container-fluid icon-list-box" id="nav-tabContent" style="margin-top: 0;">
            <div aria-labelledby="list-home-list" class="tab-pane fade show active" id="list-home" role="tabpanel">
                <!--葡萄酒选项卡内容-->
                <%
                    JsonObject _brand_list_1 = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("product_list") + "?keywords=" + request.getParameter("search"),""));//将品牌分类数据存入变量
                    //out.print(_brand_list_1.getJsonObject("data").getJsonArray("data").getJsonObject(0).getString("file_path"));
                %>
                <% if(_brand_list_1.getJsonObject("data").getJsonArray("data").size() == 0){ %>
                    <div class="w-100 text-center overflow-hidden pb-3 border-0" style="cursor: auto;user-select: none;-webkit-user-drag: none"><%=lang.getJsonObject("tips").getString("search_none")%></div>
                <% } %>
                <div class="row w-100 pc-menu">
                    <%
                        for(int i = 0;i < _brand_list_1.getJsonObject("data").getJsonArray("data").size();i++){
                            JsonObject _json = _brand_list_1.getJsonObject("data").getJsonArray("data").getJsonObject(i);
                            String key_tag = "";
                            if(Objects.equals(lang_type, "en_US")){
                                key_tag = "en_";
                            }
                    %>
                    <div class="col-2 text-center tab-card" style="line-height: 140px;margin-bottom: 20px;position:relative;" data-bs-target="#modal-brand-alert" data-bs-toggle="modal" onclick="changeAlertData('<%=_json.getInt("product_id") + ""%>')">
                        <img src="<%=_json.getString("file_path")%>" alt="" class="img-fluid" style="max-height: 140px">
                        <div class="brand-icon-title"><%=_json.getString(key_tag + "name")%></div>
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="row w-100 mobile-menu">
                    <%
                        for(int i = 0;i < _brand_list_1.getJsonObject("data").getJsonArray("data").size();i++){
                            JsonObject _json = _brand_list_1.getJsonObject("data").getJsonArray("data").getJsonObject(i);
                            String key_tag = "";
                            if(Objects.equals(lang_type, "en_US")){
                                key_tag = "en_";
                            }
                    %>
                    <div class="col-4 text-center" style="line-height: 86px;margin-bottom: 10px;position: relative" data-bs-target="#modal-brand-alert" data-bs-toggle="modal" onclick="changeAlertData('<%=_json.getInt("product_id") + ""%>')">
                        <img src="<%=_json.getString("file_path")%>" alt="" class="img-fluid" style="max-height: 86px">
                        <div class="brand-icon-title"><%=_json.getString(key_tag + "name")%></div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="alert.jsp"%>
