<%@ page import="java.util.List" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %>
<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 14:27
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
<!--内容区 Start-->
<div class="container inner-box noprint">
    <div class="container text-center index-aera-title">
        <%=lang.getJsonObject("brands").getString("title")%>
    </div>
    <div class="container text-center index-aera-btitle">
        <%=lang.getJsonObject("brands").getString("title_c")%>
    </div>
    <div class="inner-box-f">
        <!--切换按钮-->
        <%
            String _brand_active_1 = "",_brand_active_2 = "",_brand_active_3 = "";
            String _brand_cid = "1";
            if(Check.isNotNull(request.getParameter("c"))){
                if(Objects.equals(request.getParameter("c"), "1")){
                    _brand_active_1 = " active";
                    _brand_cid = "1";
                }else if(Objects.equals(request.getParameter("c"), "2")){
                    _brand_active_2 = " active";
                    _brand_cid = "2";
                }else if(Objects.equals(request.getParameter("c"), "3")){
                    _brand_active_3 = " active";
                    _brand_cid = "3";
                }
            }else {
                _brand_active_1 = " active";
                _brand_cid = "1";
            }
        %>
        <div class="list-group list-group-horizontal justify-content-center" id="list-tab" role="tablist">
            <a aria-controls="list-home" class="list-group-item list-group-item-action<%=lang_tab%><%=_brand_active_1%>" data-bs-toggle="list"
               href="#list-home" id="list-home-list" role="tab" onclick="changeCountryList(1);classifyBrands(1);"><%=lang.getJsonObject("brands").getString("wine")%></a>
            <a aria-disabled="true" class="list-group-item list-group-item-action disabled"
               href="javascript:void(0);">#</a>
            <a aria-controls="list-profile" class="list-group-item list-group-item-action<%=lang_tab%><%=_brand_active_2%>" data-bs-toggle="list"
               href="#list-profile" id="list-profile-list" role="tab" onclick="changeCountryList(2);classifyBrands(2);"><%=lang.getJsonObject("brands").getString("liquor")%></a>
            <a aria-disabled="true" class="list-group-item list-group-item-action disabled"
               href="javascript:void(0);">#</a>
            <a aria-controls="list-messages" class="list-group-item list-group-item-action<%=lang_tab%><%=_brand_active_3%>" data-bs-toggle="list"
               href="#list-messages" id="list-messages-list" role="tab" onclick="changeCountryList(3);classifyBrands(3);"><%=lang.getJsonObject("brands").getString("drinks")%></a>
        </div>
        <!--国家展示-->
        <div class="container-fluid icon-list-box brand-country-border-bottom">
            <div class="btn-toolbar justify-content-center" role="toolbar" aria-label="Toolbar with button groups">
                <div class="icon-list-box-country-out" id="country-out">
                    <div class="btn-group" role="group" aria-label="Basic" id="country">
                        <%
                            JsonObject brand_country = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("country_list") + "?classify_id=" + _brand_cid,""));//将品牌国家数据存入变量
                            JsonArray _bcj = brand_country.getJsonArray("data");
                            for(int i = 0;i < _bcj.size();i++){
                                String key_tag = "";
                                if(Objects.equals(lang_type, "en_US")){
                                    key_tag = "en_";
                                }
                                JsonObject _bc = JsonReader.getJsonObj(_bcj.get(i).toString());
                                //String imgUrl = _bc.getString("file_path");
                                String imgUrl = _bc.getString("url");
                                String countryId = _bc.getInt("country_id") + "";
                                String countryName = _bc.getString(key_tag + "name");
                        %>
                            <button type="button" class="btn" onclick="classifyBrands(<%=_brand_cid%>,<%=countryId%>)">
                                <div class="icon-list-box-country">
                                    <img src="<%=imgUrl%>" alt="<%=countryId%>" class="img-fluid">
                                    <h6 class="text-center"><%=countryName%></h6>
                                </div>
                            </button>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
        <!--切换内容-->
        <%
            String _brand_active_1_ = "",_brand_active_2_ = "",_brand_active_3_ = "";
            if(Check.isNotNull(request.getParameter("c"))){
                if(Objects.equals(request.getParameter("c"), "1")){
                    _brand_active_1_ = " show active";
                }else if(Objects.equals(request.getParameter("c"), "2")){
                    _brand_active_2_ = " show active";
                }else if(Objects.equals(request.getParameter("c"), "3")){
                    _brand_active_3_ = " show active";
                }
            }else {
                _brand_active_1_ = " show active";
            }
        %>
        <div class="tab-content container-fluid icon-list-box" id="nav-tabContent">
            <div aria-labelledby="list-home-list" class="tab-pane fade<%=_brand_active_1_%>" id="list-home" role="tabpanel">
                <!--葡萄酒选项卡内容-->
                <%
                    JsonObject _brand_list_1 = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("product_list") + "?classify_id=1",""));//将品牌分类数据存入变量
                %>
                <div class="row w-100 pc-menu">
                    <%
                        for(int i = 0;i < _brand_list_1.getJsonObject("data").getJsonArray("data").size();i++){
                            JsonObject _json = _brand_list_1.getJsonObject("data").getJsonArray("data").getJsonObject(i);
                            String key_tag = "";
                            if(Objects.equals(lang_type, "en_US")){
                                key_tag = "en_";
                            }
                    %>
                        <div class="col-2 text-center tab-card" style="line-height: 140px;margin-bottom: 20px;position: relative" data-bs-target="#modal-brand-alert" data-bs-toggle="modal" onclick="changeAlertData('<%=_json.getInt("product_id") + ""%>')">
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
            <div aria-labelledby="list-profile-list" class="tab-pane fade<%=_brand_active_2_%>" id="list-profile" role="tabpanel">
                <!--烈酒选项卡内容-->
                <%
                    JsonObject _brand_list_2 = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("product_list") + "?classify_id=2",""));//将品牌分类数据存入变量
                %>
                <div class="row w-100 pc-menu">
                    <%
                        for(int i = 0;i < _brand_list_2.getJsonObject("data").getJsonArray("data").size();i++){
                            JsonObject _json = _brand_list_2.getJsonObject("data").getJsonArray("data").getJsonObject(i);
                            String key_tag = "";
                            if(Objects.equals(lang_type, "en_US")){
                                key_tag = "en_";
                            }
                    %>
                        <div class="col-2 text-center tab-card" style="line-height: 140px;margin-bottom: 20px;position: relative" data-bs-target="#modal-brand-alert" data-bs-toggle="modal" onclick="changeAlertData('<%=_json.getInt("product_id") + ""%>')">
                            <img src="<%=_json.getString("file_path")%>" alt="" class="img-fluid" style="max-height: 140px">
                            <div class="brand-icon-title"><%=_json.getString(key_tag + "name")%></div>
                        </div>
                    <%
                        }
                    %>
                </div>
                <div class="row w-100 mobile-menu">
                    <%
                        for(int i = 0;i < _brand_list_2.getJsonObject("data").getJsonArray("data").size();i++){
                            JsonObject _json = _brand_list_2.getJsonObject("data").getJsonArray("data").getJsonObject(i);
                            String key_tag = "";
                            if(Objects.equals(lang_type, "en_US")){
                                key_tag = "en_";
                            }
                    %>
                        <div class="col-4 text-center" style="line-height: 86px;margin-bottom: 10px;" data-bs-target="#modal-brand-alert" data-bs-toggle="modal" onclick="changeAlertData('<%=_json.getInt("product_id") + ""%>')">
                            <img src="<%=_json.getString("file_path")%>" alt="" class="img-fluid" style="max-height: 86px">
                            <div class="brand-icon-title"><%=_json.getString(key_tag + "name")%></div>
                        </div>
                    <%
                        }
                    %>
                </div>
            </div>
            <div aria-labelledby="list-messages-list" class="tab-pane fade<%=_brand_active_3_%>" id="list-messages" role="tabpanel">
                <!--饮料选项卡内容-->
                <%
                    JsonObject _brand_list_3 = JsonReader.getJsonObj(HttpLoad.getJsonStr(ApiSetting.getString("host") + ApiSetting.getString("product_list") + "?classify_id=3",""));//将品牌分类数据存入变量
                %>
                <div class="row w-100 pc-menu">
                    <%
                        for(int i = 0;i < _brand_list_3.getJsonObject("data").getJsonArray("data").size();i++){
                            JsonObject _json = _brand_list_3.getJsonObject("data").getJsonArray("data").getJsonObject(i);
                            String key_tag = "";
                            if(Objects.equals(lang_type, "en_US")){
                                key_tag = "en_";
                            }
                    %>
                        <div class="col-2 text-center tab-card" style="line-height: 140px;margin-bottom: 20px;position: relative" data-bs-toggle="modal" data-bs-target="#modal-brand-alert" onclick="changeAlertData('<%=_json.getInt("product_id") + ""%>')">
                            <img src="<%=_json.getString("file_path")%>" alt="" class="img-fluid" style="max-height: 140px;">
                            <div class="brand-icon-title"><%=_json.getString(key_tag + "name")%></div>
                        </div>
                    <%
                        }
                    %>
                </div>
                <div class="row w-100 mobile-menu">
                    <%
                        for(int i = 0;i < _brand_list_3.getJsonObject("data").getJsonArray("data").size();i++){
                            JsonObject _json = _brand_list_3.getJsonObject("data").getJsonArray("data").getJsonObject(i);
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
<!--弹框-->
<!-- Launch modal -->
<!--<button type="button" data-bs-toggle="modal" data-bs-target="#modal-brand-alert">Launch modal</button>-->
<!-- Full screen modal -->
<%@ include file="alert.jsp"%>
<script>
    function changeCountryList(id){
        let res = lx.http.res("GET","<%=ApiSetting.getString("host") + ApiSetting.getString("country_list")%>?classify_id=" + id + "&t=" + lx.time.nowTime(10).toString(),false)
        let key_tag = "";
        if(lx.url.getQueryVariable("lang") === "en_US"){
            key_tag = "en_"
        }
        let _json = JSON.parse(res);
        let _templeHtml = '<button type="button" class="btn" onclick="{%classifyBrand%}"><div class="icon-list-box-country"><img src="{%imgUrl%}" alt="{%countryId%}" class="img-fluid"><h6 class="text-center">{%countryName%}</h6></div></button>'
        let data = _json.data;
        let inHtml = "";
        for(let i in data){
            //let imgUrl = data[i].file_path;
            let imgUrl = data[i].url;
            let countryId = data[i].country_id;
            let countryName = data[i][key_tag + "name"];
            let classifyBrand = 'classifyBrands(' + id + ',' + countryId + ')'
            inHtml += _templeHtml.replace("{%classifyBrand%}",classifyBrand).replace("{%imgUrl%}",imgUrl).replace("{%countryId%}",countryId).replace("{%countryName%}",countryName);
        }
        document.getElementById("country").innerHTML = inHtml;
        //解决切换语言后选项卡选中状态被重置的问题
        lx.url.pushQueryVariable(lx.url.setQueryVariable(window.location.href,"c",id),document.title);
        let lan = document.getElementsByClassName("language")
        for(let i in lan){
            let hr = lan[i].getElementsByTagName("a")[0].href;
            lan[i].getElementsByTagName("a")[0].href = lx.url.setQueryVariable(hr,"c",id);
        }
    }
    function classifyBrands(cid,gid){
        if(!gid){
            gid = "";
        }

        let key_tag = "";
        if(lx.url.getQueryVariable("lang") === "en_US"){
            key_tag = "en_"
        }
        
        let res = lx.http.res("GET","<%=ApiSetting.getString("host")%><%=ApiSetting.getString("product_list")%>?classify_id=" + cid + "&country_id=" + gid,false);
        let _json = JSON.parse(res);
        let _templeHtml_m = document.getElementById("temple-brands-element-mobile").innerHTML;
        let _templeHtml_p = document.getElementById("temple-brands-element-pc").innerHTML;
        let data = _json.data.data;
        let inHtml = "";
        for(let i in data){
            let imgUrl = data[i].file_path;
            let pId = data[i].product_id;
            let icTitle = data[i][key_tag + "name"]
            inHtml += _templeHtml_p.replace("{%imgUrl%}",imgUrl).replace("{%pid%}",pId).replace("{%icTitle%}",icTitle);
        }
        if(inHtml === ""){
            inHtml = '<div class="w-100 text-center overflow-hidden pb-3 border-0" style="cursor: auto;user-select: none;-webkit-user-drag: none"><%=lang.getJsonObject("tips").getString("brand_none")%></div>';
        }
        let _id;
        if(cid === 1){
            _id = "list-home";
        }else if(cid === 2){
            _id = "list-profile";
        }else if(cid === 3){
            _id = "list-messages";
        }else {
            return false;
        }
        document.getElementById(_id).getElementsByClassName("pc-menu")[0].innerHTML = inHtml
        inHtml = "";
        for(let i in data){
            let imgUrl = data[i].file_path;
            let pId = data[i].product_id;
            let icTitle = data[i][key_tag + "name"]
            inHtml += _templeHtml_m.replace("{%imgUrl%}",imgUrl).replace("{%pid%}",pId).replace("{%icTitle%}",icTitle);
        }
        if(inHtml === ""){
            inHtml = '<div class="w-100 text-center overflow-hidden"><%=lang.getJsonObject("tips").getString("brand_none")%></div>';
        }
        document.getElementById(_id).getElementsByClassName("mobile-menu")[0].innerHTML = inHtml
    }
</script>
<div style="display: none" id="temple-brands-element-mobile">
    <div class="col-4 text-center" style="line-height: 86px;margin-bottom: 10px;position: relative" data-bs-target="#modal-brand-alert" data-bs-toggle="modal" onclick="changeAlertData('{%pid%}')">
        <img src="{%imgUrl%}" alt="" class="img-fluid" style="max-height: 86px">
        <div class="brand-icon-title">{%icTitle%}</div>
    </div>
</div>
<div style="display: none" id="temple-brands-element-pc">
    <div class="col-2 text-center tab-card" style="line-height: 140px;margin-bottom: 20px;position: relative" data-bs-toggle="modal" data-bs-target="#modal-brand-alert" onclick="changeAlertData('{%pid%}')">
        <img src="{%imgUrl%}" alt="" class="img-fluid" style="max-height: 140px">
        <div class="brand-icon-title">{%icTitle%}</div>
    </div>
</div>
<script>
    //鼠标拖动事件
    document.getElementById("country-out").onmousedown=function(ev){
        //鼠标移动时事件
        document.onmousemove=function(e){
            //兼容处理
            let _event = e || event;
            document.getElementById("country-out").scrollLeft -= _event.movementX;
        }

        //鼠标脱离事件
        document.onmouseup=function(){
            //让脱离的时候全部东西为空   保证松手后不会继续跟着鼠标移动
            document.onmousemove=null;
            document.onmouseup=null;
            //阻止默认事件
            return false;
        }
    }
</script>
