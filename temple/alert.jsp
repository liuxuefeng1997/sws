<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/14
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!--弹框-->
<div class="modal fade" id="modal-brand-alert" tabindex="-1" aria-labelledby="modal-brand-alert" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-7 ml-in text-center bg-dark" id="aImgBg">
                        <div id="carouselExampleControls" class="carousel slide h-100 overflow-hidden" data-bs-ride="carousel">
                            <div class="carousel-inner" id="ppt">
                                <div class="carousel-item active">
                                    <img src="../img/page-bg.jpg" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-5 mr-in">
                        <button type="button" class="btn-close float-end mt-2 me-2" data-bs-dismiss="modal" aria-label="Close"></button>
                        <div class="w-100 text-center mt-5 img-box">
                            <img src="../img/banner1.jpg" alt="" id="aLogo">
                        </div>
                        <div class="container-fluid modal-body-title text-center" id="aTitle">
                            Title
                        </div>
                        <div class="container-fluid">
                            <div class="container-fluid c-f-fix modal-inner">
                                <div class="container-fluid c-f-fix modal-body-text" id="aInfo">
                                    Info
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function changeAlertData(id){
        let res = lx.http.res("GET","<%=ApiSetting.getString("host") + ApiSetting.getString("product")%>?product_id=" + id + "&t=" + lx.time.nowTime(10).toString(),false)
        let key_tag = "";
        if(lx.url.getQueryVariable("lang") === "en_US"){
            key_tag = "en_"
        }
        let _json = JSON.parse(res);
        let title = document.getElementById("aTitle");
        let info = document.getElementById("aInfo");
        title.innerHTML = _json.data[key_tag + "name"];
        info.innerHTML = _json.data[key_tag + "content"];
        info.innerHTML = info.innerText;
        document.getElementById("aLogo").setAttribute("src",_json.data.file_path);
        let ppt_element = document.getElementById("ppt");
        let temple_ppt = '<div class="{{{ClassNames}}}"><img src="{{{ImgUrl}}}" class="d-block w-100 m-fix" alt="..."></div>';
        let inHtml = "";
        let ppt_array = _json.data.image_list;
        for (let i in ppt_array){
            let ppt_class = "carousel-item";
            if(parseInt(i) === 0){
                ppt_class = "carousel-item active";
            }
            let ImgUrl = ppt_array[i];
            inHtml += temple_ppt.replace("{{{ClassNames}}}",ppt_class).replace("{{{ImgUrl}}}",ImgUrl);
        }
        ppt_element.innerHTML = inHtml;
    }
</script>
