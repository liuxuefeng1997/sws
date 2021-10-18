// Main Control Javascript
window.onload = is_onload_event;
window.onscroll = is_onscroll_event;
window.onresize = is_onresize_event;
let _____main_banner_id_list;
function is_onload_event () {
    _____main_banner_id_list = document.getElementsByClassName("carousel-caption-in");
    is_onscroll_event();
}
function is_onresize_event () {
    is_onscroll_event();
    if(typeof iframeLoad === "function"){
        iframeLoad();
    }
}
function is_onscroll_event () {
    if (lx.html.getWindowWidth() >= 991) {
        if (lx.html.getScrollTop() >= 204) {
            document.getElementsByClassName('header')[0].setAttribute('style','display:none;');
            document.getElementsByClassName('navbar')[0].getElementsByClassName('logo')[0].setAttribute('style', 'display:block;width:150px;height:42px;text-align:center;');
            document.getElementsByClassName("p-menu-brand")[0].setAttribute("style","width: calc(100vw);margin-left: -162px;margin-top:1.125rem;");
            document.getElementsByClassName("p-menu-brand")[1].setAttribute("style","width: calc(100vw);margin-left: -162px;margin-top:1.125rem;");
        }else {
            document.getElementsByClassName('header')[0].removeAttribute('style');
            document.getElementsByClassName("p-menu-brand")[0].removeAttribute("style");
            document.getElementsByClassName("p-menu-brand")[1].removeAttribute("style");
            document.getElementsByClassName('navbar')[0].getElementsByClassName('logo')[0].removeAttribute('style');
        }
    }else {
        document.getElementsByClassName('header')[0].removeAttribute('style');
        document.getElementsByClassName("p-menu-brand")[0].removeAttribute("style");
        document.getElementsByClassName('navbar')[0].getElementsByClassName('logo')[0].removeAttribute('style');
        document.getElementsByClassName("p-menu-brand")[1].removeAttribute("style");
    }
    hideDropdown("nDp");
    hideDropdown("nDpo");
}
function hideDropdown(_id){
    document.getElementById(_id).className = document.getElementById(_id).className.replace(" show","");
    document.getElementById(_id).setAttribute("aria-expanded","false");
    document.getElementById(_id + "d").className = document.getElementById(_id + "d").className.replace(" show","");
    document.getElementById(_id + "d").removeAttribute("data-bs-popper");
}