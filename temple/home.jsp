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
        <svg width="29" height="27" x="56" y="12" viewBox="0 0 1024 1024">
            <path d="M811.008 163.84h-107.6224v-32.768c0-19.8144-16.0256-35.84-35.84-35.84s-35.84 16.0256-35.84 35.84V163.84H385.7408v-32.768c0-19.8144-16.0256-35.84-35.84-35.84s-35.84 16.0256-35.84 35.84V163.84H212.992c-63.8976 0-115.9168 52.0192-115.9168 115.9168V798.72c0 63.8976 52.0192 115.9168 115.9168 115.9168h598.016c63.8976 0 115.9168-52.0192 115.9168-115.9168V279.7568c0-63.8976-51.968-115.9168-115.9168-115.9168z m44.2368 634.88c0 24.3712-19.8656 44.2368-44.2368 44.2368H212.992c-24.3712 0-44.2368-19.8656-44.2368-44.2368V279.7568c0-24.3712 19.8656-44.2368 44.2368-44.2368h101.12v23.6544c0 19.8144 16.0256 35.84 35.84 35.84s35.84-16.0256 35.84-35.84V235.52h245.9648v23.6544c0 19.8144 16.0256 35.84 35.84 35.84s35.84-16.0256 35.84-35.84V235.52h107.6224c24.3712 0 44.2368 19.8656 44.2368 44.2368V798.72z" fill="#333" p-id="4711"></path>
            <path d="M449.7408 734.1056H390.8096c-43.8784 0-79.5648-35.6864-79.5648-79.5648V471.3984c0-43.8784 35.6864-79.5648 79.5648-79.5648h58.9312c43.8784 0 79.5648 35.6864 79.5648 79.5648v183.1424c0 43.8784-35.6864 79.5648-79.5648 79.5648zM390.8096 463.5136c-4.352 0-7.8848 3.5328-7.8848 7.8848v183.1424c0 4.352 3.5328 7.8848 7.8848 7.8848h58.9312c4.352 0 7.8848-3.5328 7.8848-7.8848V471.3984c0-4.352-3.5328-7.8848-7.8848-7.8848H390.8096zM667.5456 734.1056c-19.8144 0-35.84-16.0256-35.84-35.84V426.5984c0-19.8144 16.0256-35.84 35.84-35.84s35.84 16.0256 35.84 35.84v271.6672c0 19.8144-16.0256 35.84-35.84 35.84z" fill="#313EEC" p-id="4712"></path>
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
        <svg width="29" height="27" x="193" y="13" viewBox="0 0 1024 1024">
            <path d="M517.3248 924.7232c-39.424 0-77.056-16.6912-103.5264-45.9776L91.8016 522.24c-47.2064-52.2752-47.9744-131.7888-1.792-184.9856l155.3408-178.7904a139.36128 139.36128 0 0 1 105.2672-47.9744h331.52c40.192 0 78.4384 17.3568 104.9088 47.5648l150.7328 172.032c45.7216 52.1728 45.8752 131.0208 0.4096 183.3984l-315.5968 363.264a139.47904 139.47904 0 0 1-103.936 47.9744h-1.3312zM350.6688 171.8784c-22.6304 0-44.0832 9.7792-58.88 26.8288L136.3968 377.5488c-25.856 29.7472-25.4464 74.24 0.9728 103.4752l321.9968 356.5056c14.9504 16.5376 36.352 26.0608 58.6752 25.7024 22.3232-0.2048 43.52-9.984 58.1632-26.88l315.5968-363.264c25.4464-29.2864 25.344-73.4208-0.2048-102.6048l-150.7328-172.032c-14.7968-16.896-36.1984-26.624-58.6752-26.624H350.6688z" fill="#333" p-id="11678"></path>
            <path d="M511.2832 737.5872h-0.5632c-15.8208-0.1536-30.5664-7.3728-40.3968-19.7632l-152.9344-192.3584a30.7456 30.7456 0 0 1 4.9152-43.1616 30.74048 30.74048 0 0 1 43.1616 4.9152l145.9712 183.6032 158.4128-190.464c10.8544-13.056 30.208-14.848 43.264-3.9936 13.056 10.8544 14.848 30.208 3.9936 43.264l-165.5808 199.0656a52.08064 52.08064 0 0 1-40.2432 18.8928z" fill="#313EEC" p-id="11679"></path>
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
        <svg width="29" height="27" x="333" y="12" viewBox="0 0 1024 1024">
            <path d="M698.69634 478.341435c-38.568668 0-73.389165-12.481406-103.524451-37.106882-9.782723-7.983602-11.207028-22.376574-3.223426-32.121815 7.983602-9.782723 22.376574-11.207028 32.121815-3.223426 21.739385 17.803807 46.852123 26.799414 74.626062 26.799414 62.969253 0 114.206735-51.237482 114.206735-114.206735S761.665593 204.275256 698.69634 204.275256c-55.210542 0-114.206735 23.988287-114.206735 91.342899 0 12.631332-10.232504 22.826354-22.826355 22.826355-12.631332 0-22.826354-10.232504-22.826354-22.826355 0-81.972474 64.243631-137.033089 159.859444-137.033089 88.156955 0 159.859444 71.739971 159.859443 159.859444s-71.702489 159.896925-159.859443 159.896925z" fill="#313EEC" p-id="26978"></path>
            <path d="M447.456515 638.23836c-7.009078 0-13.643338-3.223426-17.953733-8.733236L178.262958 309.748755c-5.397365-6.896633-6.40937-16.229575-2.586238-24.100732 3.823133-7.833675 11.806735-12.856223 20.539971-12.856222h502.479649c8.733236 0 16.716837 4.985066 20.53997 12.856222 3.823133 7.871157 2.811127 17.2041-2.586237 24.100732l-251.239824 319.756369c-4.310395 5.50981-10.944656 8.733236-17.953734 8.733236zM243.218741 318.481991l204.237774 259.935579 204.237775-259.935579H243.218741z" fill="#342A20" p-id="26980"></path>
            <path d="M447.456515 866.614348c-12.631332 0-22.826354-10.232504-22.826354-22.826354v-228.375988c0-12.631332 10.232504-22.826354 22.826354-22.826354s22.826354 10.232504 22.826355 22.826354v228.375988c0.037482 12.593851-10.195022 22.826354-22.826355 22.826354z" fill="#342A20" p-id="26981"></path>
            <path d="M653.006149 866.614348H241.906881c-12.631332 0-22.826354-10.232504-22.826354-22.826354s10.232504-22.826354 22.826354-22.826354h411.099268c12.631332 0 22.826354 10.232504 22.826355 22.826354s-10.195022 22.826354-22.826355 22.826354z" fill="#342A20" p-id="26982"></path>
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
        <svg width="104" height="100" x="401" y="64" viewBox="0 0 1024 1024">
            <path d="M811.008 163.84h-107.6224v-32.768c0-19.8144-16.0256-35.84-35.84-35.84s-35.84 16.0256-35.84 35.84V163.84H385.7408v-32.768c0-19.8144-16.0256-35.84-35.84-35.84s-35.84 16.0256-35.84 35.84V163.84H212.992c-63.8976 0-115.9168 52.0192-115.9168 115.9168V798.72c0 63.8976 52.0192 115.9168 115.9168 115.9168h598.016c63.8976 0 115.9168-52.0192 115.9168-115.9168V279.7568c0-63.8976-51.968-115.9168-115.9168-115.9168z m44.2368 634.88c0 24.3712-19.8656 44.2368-44.2368 44.2368H212.992c-24.3712 0-44.2368-19.8656-44.2368-44.2368V279.7568c0-24.3712 19.8656-44.2368 44.2368-44.2368h101.12v23.6544c0 19.8144 16.0256 35.84 35.84 35.84s35.84-16.0256 35.84-35.84V235.52h245.9648v23.6544c0 19.8144 16.0256 35.84 35.84 35.84s35.84-16.0256 35.84-35.84V235.52h107.6224c24.3712 0 44.2368 19.8656 44.2368 44.2368V798.72z" fill="#333" p-id="4711"></path>
            <path d="M449.7408 734.1056H390.8096c-43.8784 0-79.5648-35.6864-79.5648-79.5648V471.3984c0-43.8784 35.6864-79.5648 79.5648-79.5648h58.9312c43.8784 0 79.5648 35.6864 79.5648 79.5648v183.1424c0 43.8784-35.6864 79.5648-79.5648 79.5648zM390.8096 463.5136c-4.352 0-7.8848 3.5328-7.8848 7.8848v183.1424c0 4.352 3.5328 7.8848 7.8848 7.8848h58.9312c4.352 0 7.8848-3.5328 7.8848-7.8848V471.3984c0-4.352-3.5328-7.8848-7.8848-7.8848H390.8096zM667.5456 734.1056c-19.8144 0-35.84-16.0256-35.84-35.84V426.5984c0-19.8144 16.0256-35.84 35.84-35.84s35.84 16.0256 35.84 35.84v271.6672c0 19.8144-16.0256 35.84-35.84 35.84z" fill="#313EEC" p-id="4712"></path>
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
        <svg width="104" height="100" x="910" y="64" viewBox="0 0 1024 1024">
            <path d="M517.3248 924.7232c-39.424 0-77.056-16.6912-103.5264-45.9776L91.8016 522.24c-47.2064-52.2752-47.9744-131.7888-1.792-184.9856l155.3408-178.7904a139.36128 139.36128 0 0 1 105.2672-47.9744h331.52c40.192 0 78.4384 17.3568 104.9088 47.5648l150.7328 172.032c45.7216 52.1728 45.8752 131.0208 0.4096 183.3984l-315.5968 363.264a139.47904 139.47904 0 0 1-103.936 47.9744h-1.3312zM350.6688 171.8784c-22.6304 0-44.0832 9.7792-58.88 26.8288L136.3968 377.5488c-25.856 29.7472-25.4464 74.24 0.9728 103.4752l321.9968 356.5056c14.9504 16.5376 36.352 26.0608 58.6752 25.7024 22.3232-0.2048 43.52-9.984 58.1632-26.88l315.5968-363.264c25.4464-29.2864 25.344-73.4208-0.2048-102.6048l-150.7328-172.032c-14.7968-16.896-36.1984-26.624-58.6752-26.624H350.6688z" fill="#333" p-id="11678"></path>
            <path d="M511.2832 737.5872h-0.5632c-15.8208-0.1536-30.5664-7.3728-40.3968-19.7632l-152.9344-192.3584a30.7456 30.7456 0 0 1 4.9152-43.1616 30.74048 30.74048 0 0 1 43.1616 4.9152l145.9712 183.6032 158.4128-190.464c10.8544-13.056 30.208-14.848 43.264-3.9936 13.056 10.8544 14.848 30.208 3.9936 43.264l-165.5808 199.0656a52.08064 52.08064 0 0 1-40.2432 18.8928z" fill="#313EEC" p-id="11679"></path>
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
        <svg width="104" height="100" x="1415" y="64" viewBox="0 0 1024 1024">
            <path d="M698.69634 478.341435c-38.568668 0-73.389165-12.481406-103.524451-37.106882-9.782723-7.983602-11.207028-22.376574-3.223426-32.121815 7.983602-9.782723 22.376574-11.207028 32.121815-3.223426 21.739385 17.803807 46.852123 26.799414 74.626062 26.799414 62.969253 0 114.206735-51.237482 114.206735-114.206735S761.665593 204.275256 698.69634 204.275256c-55.210542 0-114.206735 23.988287-114.206735 91.342899 0 12.631332-10.232504 22.826354-22.826355 22.826355-12.631332 0-22.826354-10.232504-22.826354-22.826355 0-81.972474 64.243631-137.033089 159.859444-137.033089 88.156955 0 159.859444 71.739971 159.859443 159.859444s-71.702489 159.896925-159.859443 159.896925z" fill="#313EEC" p-id="26978"></path>
            <path d="M447.456515 638.23836c-7.009078 0-13.643338-3.223426-17.953733-8.733236L178.262958 309.748755c-5.397365-6.896633-6.40937-16.229575-2.586238-24.100732 3.823133-7.833675 11.806735-12.856223 20.539971-12.856222h502.479649c8.733236 0 16.716837 4.985066 20.53997 12.856222 3.823133 7.871157 2.811127 17.2041-2.586237 24.100732l-251.239824 319.756369c-4.310395 5.50981-10.944656 8.733236-17.953734 8.733236zM243.218741 318.481991l204.237774 259.935579 204.237775-259.935579H243.218741z" fill="#342A20" p-id="26980"></path>
            <path d="M447.456515 866.614348c-12.631332 0-22.826354-10.232504-22.826354-22.826354v-228.375988c0-12.631332 10.232504-22.826354 22.826354-22.826354s22.826354 10.232504 22.826355 22.826354v228.375988c0.037482 12.593851-10.195022 22.826354-22.826355 22.826354z" fill="#342A20" p-id="26981"></path>
            <path d="M653.006149 866.614348H241.906881c-12.631332 0-22.826354-10.232504-22.826354-22.826354s10.232504-22.826354 22.826354-22.826354h411.099268c12.631332 0 22.826354 10.232504 22.826355 22.826354s-10.195022 22.826354-22.826355 22.826354z" fill="#342A20" p-id="26982"></path>
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
