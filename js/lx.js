// IUIdeas Library v 1.0.1.210903
const lx = {
    'time': {
        'nowTime': function (_length) {
            if (_length == 10) {
                return parseInt(new Date().getTime() / 1000);
            } else {
                return new Date().getTime();
            }
        },
        'getTimes': function (_timeStr) {
            return new Date(_timeStr.replace(/-/g, '/'));
        }
    },
    'http': {
        'res': function (method, url, is_ajax, data, header) {
            if(!data){
                data = "";
            }
            let xhr = new XMLHttpRequest();
            let obj = {};
            if (is_ajax) {
                xhr.responseType = 'text';
            }
            xhr.onload = function () {
                if (xhr.readyState === xhr.DONE) {
                    if (xhr.status === 200) {
                        obj = xhr.responseText;
                    }
                }
            };
            xhr.open(method, url, is_ajax);
            if(header){
                for(let i in header){
                    xhr.setRequestHeader(header[i].name,header[i].value);
                }
            }
            xhr.send(data);
            if (!is_ajax) {
                return obj;
            }
        }
    },
    'config': {
        'getItem': function (cfg_name, url_path) {
            url_path = url_path || "/";
            return JSON.parse(lx.http.res('GET', url_path + 'config/' + cfg_name + '.json?t=' + lx.time.nowTime(), false));
        },
        'setLangItemByTagName': function (let_of_lang_json,set_lang_to_element_tag) {
            let a = document.getElementsByTagName(set_lang_to_element_tag);
            for(let n in a){
                let attr = a[n].getAttribute('lang_tag') || false;
                console.log(n,attr);
                if(attr){
                    a[n].innerHTML = let_of_lang_json[a[n].getAttribute('lang_tag')];
                }
            }
        }
    },
    'url': {
        'getQueryVariable': function (variable) {
            let query = window.location.search.substring(1);
            let vars = query.split("&");
            for (let i = 0; i < vars.length; i++) {
                let pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return pair[1];
                }
            }
            return ('');
        },
        'setQueryVariable': function (uri, key, value) {
            if (!value) {
                return uri;
            }
            var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
            var separator = uri.indexOf('?') !== -1 ? "&" : "?";
            if (uri.match(re)) {
                return uri.replace(re, '$1' + key + "=" + value + '$2');
            } else {
                return uri + separator + key + "=" + value;
            }
        },
        'pushQueryVariable': function (uri,title){
            window.history.pushState({},title,uri);
        }
    },
    'html': {
        'getReadvh': function () {
            let scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
            let windowHeight = document.documentElement.clientHeight || document.body.clientHeight;
            let scrollHeight = document.documentElement.scrollHeight || document.body.scrollHeight;

            let svh = Math.round((scrollTop / (scrollHeight - windowHeight)) * 10000) / 100;

            return (svh + "%");
        },
        'getScrollTop': function () {
            return document.documentElement.scrollTop || document.body.scrollTop;
        },
        'getWindowWidth': function () {
            return document.documentElement.clientWidth || document.body.clientWidth;
        },
        'getWindowHeight': function () {
            return document.documentElement.clientHeight || document.body.clientHeight;
        },
        'addJavascript': function (src) {

            let js = document.createElement('script');
            js.src = src;
            js.type = "text/javascript"
            document.getElementsByTagName('head')[0].appendChild(js);
            return true;
        },
        'addStylesheet': function (src) {

            let css = document.createElement('link');
            css.href = src;
            css.type = "text/css";
            css.charset = "utf-8";
            css.rel = "stylesheet"
            document.getElementsByTagName('head')[0].appendChild(css);
            return true;
        },
        'isFunction': function (_function){
            return typeof _function === "function";
        }
    },
    'systemInfo': {
        'language': (navigator.language) ? navigator.language : navigator.userLanguage
    }
};
console.log("IUIdeas Library Javascript Version\nAuthor：IUIdeas\nLicense：GPL v3 (https://www.gnu.org/licenses/gpl-3.0-standalone.html)\n\n<< Loading Success >>");
