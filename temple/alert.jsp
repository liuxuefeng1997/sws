<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/14
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--弹框-->
<div class="modal fade" id="modal-brand-alert" tabindex="-1" aria-labelledby="modal-brand-alert" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-7 ml-in text-center bg-dark" id="aImgBg">
                        <!--<img src="../img/banner1.jpg" alt="" id="aImg" class="img-fluid h-100">-->
                    </div>
                    <div class="col-5 mr-in">
                        <button type="button" class="btn-close float-end mt-2 me-2" data-bs-dismiss="modal" aria-label="Close"></button>
                        <div class="w-100 text-center mt-5 img-box">
                            <img src="../img/banner1.jpg" alt="" id="aLogo">
                        </div>
                        <div class="container-fluid modal-body-title" id="aTitle">
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
        if(info.getElementsByTagName("img")){
            let img_src = info.getElementsByTagName("img")[0].src;
            //document.getElementById("aImg").setAttribute("src",img_src);
            document.getElementById("aImgBg").setAttribute("style","background:url('" + img_src + "') no-repeat;background-size:100% 100%;");
            info.getElementsByTagName("img")[0].setAttribute("style","display:none;");
        }else {
            //document.getElementById("aImg").setAttribute("src","../img/banner1.jpg");
            document.getElementById("aImgBg").setAttribute("style","background:url('../img/banner1.jpg') no-repeat;background-size:100% 100%;");
        }
    }
</script>
