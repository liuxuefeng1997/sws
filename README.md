# CWS Website
<p style="font-size: 18px">简单的JSP模板实现</p>
<p style="font-size: 18px">前端框架采用 Bootstrap 5 ，基于 OpenJDK 17 开发</p>

## 配置文件说明
### 路径：【/config/setting.json】
<pre type="json">
{
    "general": {
        "news_sum_one_page": "6",                       ///新闻获取数量，影响首页和新闻页面
        "is_tel_show": true,                            ///客服电话模块显示开关
        "kf_telephone": "000-0000000",                  ///客服电话设置
        "is_mail_show": true,                           ///客服邮箱模块显示开关
        "kf_mail": "exmaple@exmaple.com",               ///客服邮箱设置
        "jd_store_link": "https://www.exmaple.com",     ///京东商城链接
        "tmall_store_link": "https://www.exmaple.com",  ///天猫商城链接
        "is_concat_icon_area_show": true,               ///联系我们自媒体帐号区域显示开关
        "redbook_link": "https://www.exmaple.com",      ///小红书链接
        "weibo_link": "https://www.exmaple.com",        ///微博链接
        "wechat_qrcode": "../img/qrcode.png",           ///微信二维码路径（相对路径/CDN绝对路径）
        "is_concat_form_class_show": false,             ///联系我们表单类型开关
        "beian": "沪ICP备XXXXXXXX号"                     ///备案号
    },
    "api": {
        "host": "https://api.exmaple.com/index.php",    ///接口域名
        "banner_path": "/api/index/banner",             ///以下为接口路径，通常无需修改
        "news_path": "/api/news/lists",
        "brand_class": "/api/Classify/lists",
        "country_list": "/api/Country/lists",
        "product_list": "/api/Product/lists",
        "contact_path": "/api/contactUs/add",
        "article": "/api/news/detail",
        "product": "/api/product/detail"
    }
}
</pre>
