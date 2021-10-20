<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/9/28
  Time: 14:42
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
        <%=lang.getJsonObject("concat").getString("title")%>
    </div>
    <div class="container text-center index-aera-btitle">
        <%=lang.getJsonObject("concat").getString("title_c")%>
    </div>
    <div class="container inner-box-f concat">
        <div class="container-fluid c-f-fix row">
            <div class="col-8 concat-control">
                <!--左侧栏区域-->
                <div class="container-fluid concat-form mb-3">
                    <form class="pt-3 pb-3" id="contact_form" name="contact_form" accept-charset="UTF-8">
                        <% if(GeneralSettings.getBoolean("is_concat_form_class_show")){ %>
                        <div class="row mb-3 mt-3 ms-2">
                        <% } else { %>
                        <div class="row mb-3 mt-3 ms-2" style="display: none">
                        <% } %>
                            <div class="form-check col">
                                <input class="form-check-input" type="radio" name="type" id="flexRadioDefault1" value="1" checked>
                                <label class="form-check-label" for="flexRadioDefault1">
                                    <%=lang.getJsonObject("concat").getString("checkbox_1")%>
                                </label>
                            </div>
                            <div class="form-check col">
                                <input class="form-check-input" type="radio" name="type" id="flexRadioDefault2" value="2">
                                <label class="form-check-label" for="flexRadioDefault2">
                                    <%=lang.getJsonObject("concat").getString("checkbox_2")%>
                                </label>
                            </div>
                            <div class="form-check col">
                                <input class="form-check-input" type="radio" name="type" id="flexRadioDefault3" value="3">
                                <label class="form-check-label" for="flexRadioDefault3">
                                    <%=lang.getJsonObject("concat").getString("checkbox_3")%>
                                </label>
                            </div>
                            <div class="form-check col">
                                <input class="form-check-input" type="radio" name="type" id="flexRadioDefault4" value="4">
                                <label class="form-check-label" for="flexRadioDefault4">
                                    <%=lang.getJsonObject("concat").getString("checkbox_4")%>
                                </label>
                            </div>
                            <div class="form-check col">
                                <input class="form-check-input" type="radio" name="type" id="flexRadioDefault5" value="5">
                                <label class="form-check-label" for="flexRadioDefault5">
                                    <%=lang.getJsonObject("concat").getString("checkbox_5")%>
                                </label>
                            </div>
                        </div>
                        <div class="input-group mb-3 mt-3">
                            <span class="input-group-text"><%=lang.getJsonObject("concat").getString("name")%></span>
                            <input type="text" class="form-control form-control-input" placeholder="" aria-label="Username" name="name" id="name">
                        </div>
                        <hr class="dropdown-divider">
                        <div class="input-group mb-3 mt-3">
                            <span class="input-group-text"><%=lang.getJsonObject("concat").getString("tel")%></span>
                            <input type="text" class="form-control form-control-input" placeholder="" aria-label="Tel" name="phone" id="phone">
                        </div>
                        <hr class="dropdown-divider">
                        <div class="input-group mb-3 mt-3">
                            <span class="input-group-text"><%=lang.getJsonObject("concat").getString("mail")%></span>
                            <input type="text" class="form-control form-control-input" placeholder="" aria-label="Mail" name="email" id="mail">
                        </div>
                        <hr class="dropdown-divider">
                        <div class="input-group mb-3 mt-3">
                            <span class="input-group-text"><%=lang.getJsonObject("concat").getString("country")%></span>
                            <input type="text" class="form-control form-control-input" placeholder="" aria-label="Country" id="region_1" name="country">
                            <span class="input-group-text"><%=lang.getJsonObject("concat").getString("region")%></span>
                            <input type="text" class="form-control form-control-input" placeholder="" aria-label="City" id="region_2" name="region">
                        </div>
                        <hr class="dropdown-divider">
                        <div class="input-group concat-form-info">
                            <span class="input-group-text mt-3"><%=lang.getJsonObject("concat").getString("info")%></span>
                            <textarea class="form-control mt-3" aria-label="With textarea" name="content" id="content"></textarea>
                        </div>
                        <div class="input-group mt-3 concat-form-button">
                            <button class="btn btn-outline-secondary w-100" type="button" onclick="_send()"><%=lang.getJsonObject("concat").getString("submit")%></button>
                        </div>
                    </form>
                    <script>
                        function isNotNull(str){
                            return str.replace(' ', '').replace('\r\n','').replace('\n','').length > 0;
                        }
                        function getValue(id){
                            return document.getElementById(id).value;
                        }
                        function getChecked(){
                            return document.contact_form.type.value
                        }
                        function _send(){
                            //姓名
                            if(getValue('name')){
                                if(!isNotNull(getValue('name'))){
                                    alert("<%=lang.getJsonObject("tips").getString("input_name")%>");
                                    return;
                                }
                            }else {
                                alert("<%=lang.getJsonObject("tips").getString("input_name")%>");
                                return;
                            }
                            //联系方式
                            if(getValue('phone')){
                                if(!isNotNull(getValue('phone'))){
                                    alert("<%=lang.getJsonObject("tips").getString("input_phone")%>");
                                    return;
                                }
                            }else {
                                alert("<%=lang.getJsonObject("tips").getString("input_phone")%>");
                                return;
                            }
                            //邮箱
                            if(getValue('mail')){
                                if(!isNotNull(getValue('mail'))){
                                    alert("<%=lang.getJsonObject("tips").getString("input_mail")%>");
                                    return;
                                }
                            }else {
                                alert("<%=lang.getJsonObject("tips").getString("input_mail")%>");
                                return;
                            }
                            //国家
                            if(getValue('region_1')){
                                if(!isNotNull(getValue('region_1'))){
                                    alert("<%=lang.getJsonObject("tips").getString("input_country")%>");
                                    return;
                                }
                            }else {
                                alert("<%=lang.getJsonObject("tips").getString("input_country")%>");
                                return;
                            }
                            //地区
                            if(getValue('region_2')){
                                if(!isNotNull(getValue('region_2'))){
                                    alert("<%=lang.getJsonObject("tips").getString("input_region")%>");
                                    return;
                                }
                            }else {
                                alert("<%=lang.getJsonObject("tips").getString("input_region")%>");
                                return;
                            }
                            //信息
                            if(getValue('content')){
                                if(!isNotNull(getValue('content'))){
                                    alert("<%=lang.getJsonObject("tips").getString("input_content")%>");
                                    return;
                                }
                            }else {
                                alert("<%=lang.getJsonObject("tips").getString("input_content")%>");
                                return;
                            }
                            //信息检查通过后
                            let data = {
                                "type": getChecked(),
                                "name": getValue("name"),
                                "email": getValue("mail"),
                                "phone": getValue("phone"),
                                "region": getValue("region_1") + "," + getValue("region_2"),
                                "content": getValue("content")
                            }
                            let header = [
                                {
                                    "name": "content-type",
                                    "value": "application/json"
                                }
                            ]
                            let res = lx.http.res("POST","<%=contact_post_link%>",false,JSON.stringify(data),header);
                            let json_obj = JSON.parse(res);
                            if(json_obj.code === 1){
                                alert("<%=lang.getJsonObject("tips").getString("success")%>");
                                document.getElementById("contact_form").reset();
                            }else {
                                alert("<%=lang.getJsonObject("tips").getString("failed")%>");
                            }
                        }
                    </script>
                </div>
            </div>
            <div class="col-4 concat-control">
                <!--右侧栏区域-->
                <% if(GeneralSettings.getBoolean("is_tel_show")){ %>
                <div class="container-fluid concat-form mb-3">
                    <div class="container concat-card">
                        <div class="concat-card-title"><%=lang.getJsonObject("concat").getString("kf_tel")%></div>
                        <div class="concat-card-inner">
                            <svg xmlns="http://www.w3.org/2000/svg" width="23.937" height="24" viewBox="0 0 23.937 24">
                                <defs>
                                    <style>
                                        .cls-1 {
                                            fill: #313eec;
                                        }

                                        .cls-2 {
                                            clip-path: url(#clip-path);
                                        }
                                    </style>
                                    <clipPath id="clip-path">
                                        <rect id="矩形_82" data-name="矩形 82" class="cls-1" width="23.937" height="24" transform="translate(0 0)"/>
                                    </clipPath>
                                </defs>
                                <g id="组_26" data-name="组 26" transform="translate(200 -182)">
                                    <g id="组_25" data-name="组 25" class="cls-2" transform="translate(-200 182)">
                                        <path id="路径_11" data-name="路径 11" class="cls-1" d="M-182.869,192.907a.787.787,0,0,0,.836.836.8.8,0,0,0,.836-.836,5.073,5.073,0,0,0-5.052-5.052.787.787,0,0,0-.836.836.787.787,0,0,0,.836.836,3.409,3.409,0,0,1,3.38,3.38Zm3.361,0a.787.787,0,0,0,.836.836.8.8,0,0,0,.836-.836,8.442,8.442,0,0,0-8.416-8.416.787.787,0,0,0-.836.836.787.787,0,0,0,.836.836,6.769,6.769,0,0,1,6.744,6.744Zm-11.373-2.946a2.471,2.471,0,0,0,.171-3.364l-2.606-3.3a2.512,2.512,0,0,0-3.533-.42c-.077.077-.171.077-.171.171l-2.277,2.277c-2.185,2.185.93,8.089,6.57,13.732s11.453,8.678,13.636,6.57l2.277-2.277a2.443,2.443,0,0,0,0-3.533l-.171-.171-3.282-2.606a2.472,2.472,0,0,0-3.364.171l-1.425,1.425a21.525,21.525,0,0,1-4.045-3.115,21.531,21.531,0,0,1-3.115-4.045Zm-1.178-2.277a.81.81,0,0,1-.077,1.1L-194,190.722a.9.9,0,0,0-.171,1.007,21.994,21.994,0,0,0,3.7,4.974,21.581,21.581,0,0,0,4.974,3.7.894.894,0,0,0,1.007-.171l1.937-1.937a.787.787,0,0,1,1.1-.078l3.286,2.7a.076.076,0,0,1,.077.077.81.81,0,0,1,.03,1.148l-.03.031-2.277,2.277c-1.1,1.1-6.308-1.69-11.282-6.57-4.96-4.9-7.657-10.2-6.556-11.3l2.354-2.354a.827.827,0,0,1,1.178.171Zm0,0" transform="translate(199.998 -182.33)"/>
                                    </g>
                                </g>
                            </svg>
                            <%=GeneralSettings.getString("kf_telephone")%>
                        </div>
                    </div>
                </div>
                <% } %>
                <% if(GeneralSettings.getBoolean("is_mail_show")){ %>
                <div class="container-fluid concat-form mb-3">
                    <div class="container concat-card">
                        <div class="concat-card-title"><%=lang.getJsonObject("concat").getString("kf_mail")%></div>
                        <div class="concat-card-inner">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="20" viewBox="0 0 24 20">
                                <defs>
                                    <style>
                                        .cls-1 {
                                            fill: #313eec;
                                        }
                                    </style>
                                </defs>
                                <g id="组_27" data-name="组 27" transform="translate(33 -327)">
                                    <path id="路径_12" data-name="路径 12" class="cls-1" d="M-10.219,328.376a1,1,0,0,0-1.407-.158L-12.6,329l-8.4,6.718L-29.4,329l-.976-.781a1,1,0,0,0-1.407.155,1,1,0,0,0,.155,1.407l.626.5,9.362,7.489.012.009a.835.835,0,0,0,.106.073l.012.007a.127.127,0,0,0,.031.016.05.05,0,0,0,.014.009c.017.009.035.016.052.026a.557.557,0,0,0,.066.026.039.039,0,0,0,.021.007.989.989,0,0,0,.144.038.122.122,0,0,0,.026,0,.564.564,0,0,0,.066.009h0c.026,0,.052,0,.078,0h.014c.028,0,.054,0,.082,0h0c.028,0,.054-.007.082-.012s.054-.012.082-.019a.79.79,0,0,0,.08-.024.876.876,0,0,0,.165-.078l.057-.035c.024-.014.045-.031.068-.047l0,0,0,0,9.367-7.5.626-.5a1,1,0,0,0,.155-1.4ZM-11,327H-31a2,2,0,0,0-2,2v16a2,2,0,0,0,2,2h20a2,2,0,0,0,2-2V329a2,2,0,0,0-2-2Zm-1.6,2-8.4,6.718L-29.4,329Zm1.6,16H-31V330.282l9.362,7.489.012.009a.835.835,0,0,0,.106.073l.012.007a.127.127,0,0,0,.031.016.05.05,0,0,0,.014.009c.017.009.035.016.052.026a.557.557,0,0,0,.066.026.039.039,0,0,0,.021.007.989.989,0,0,0,.144.038.122.122,0,0,0,.026,0,.564.564,0,0,0,.066.009h0c.026,0,.052,0,.078,0h.014c.028,0,.054,0,.082,0h0c.028,0,.054-.007.082-.012s.054-.012.082-.019a.79.79,0,0,0,.08-.024.876.876,0,0,0,.165-.078l.057-.035c.024-.014.045-.031.068-.047l0,0,0,0,9.367-7.5Zm-1.6-16-8.4,6.718L-29.4,329H-31v1.282l9.362,7.489.012.009a.835.835,0,0,0,.106.073l.012.007a.127.127,0,0,0,.031.016.05.05,0,0,0,.014.009c.017.009.035.016.052.026a.557.557,0,0,0,.066.026.039.039,0,0,0,.021.007.989.989,0,0,0,.144.038.122.122,0,0,0,.026,0,.564.564,0,0,0,.066.009h0c.026,0,.052,0,.078,0h.014c.028,0,.054,0,.082,0h0c.028,0,.054-.007.082-.012s.054-.012.082-.019a.79.79,0,0,0,.08-.024.876.876,0,0,0,.165-.078l.057-.035c.024-.014.045-.031.068-.047l0,0,0,0,9.367-7.5V329Zm0,0"/>
                                </g>
                            </svg>
                            <%=GeneralSettings.getString("kf_mail")%>
                        </div>
                    </div>
                </div>
                <% } %>
                <% if(GeneralSettings.getBoolean("is_concat_icon_area_show")){ %>
                <div class="container-fluid concat-form mb-3">
                    <div class="row concat-card-share">
                        <div class="col">
                            <div class="concat-card-share-box" onclick="window.open('<%=GeneralSettings.getString("redbook_link")%>','_blank')">
                                <img src="../img/concat/share-redbook.png" class="img-fluid">
                                <div class="concat-card-share-text"><%=lang.getJsonObject("concat").getString("redbook")%></div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="concat-card-share-box" onclick="window.open('<%=GeneralSettings.getString("weibo_link")%>','_blank')">
                                <img src="../img/concat/share-weibo.png" class="img-fluid">
                                <div class="concat-card-share-text"><%=lang.getJsonObject("concat").getString("weibo")%></div>
                            </div>
                        </div>
                    </div>
                    <div class="row concat-card-share">
                        <div class="col">
                            <div class="concat-card-share-box" data-bs-toggle="modal" data-bs-target="#Modal-wechat">
                                <img src="../img/concat/share-wechat.png" class="img-fluid">
                                <div class="concat-card-share-text"><%=lang.getJsonObject("concat").getString("wechat")%></div>
                            </div>
                        </div>
                        <div class="col"></div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
</div>
<!--内容区 End-->
<!-- Modal -->
<div class="modal fade" id="Modal-wechat" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><%=lang.getJsonObject("concat").getString("wechat")%></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center mt-4 mb-4">
                <img src="<%=GeneralSettings.getString("wechat_qrcode")%>" class="img-fluid">
            </div>
        </div>
    </div>
</div>
