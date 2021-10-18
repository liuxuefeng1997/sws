<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Objects" %>

<%--
  Created by IntelliJ IDEA.
  User: lxf
  Date: 2021/10/12
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    static class HttpLoad {
        private static String doPostOrGet(String pathUrl, String data){
            OutputStreamWriter ow = null;
            BufferedReader br = null;
            StringBuilder result = new StringBuilder();
            String res = null;
            try {
                URL url = new URL(pathUrl);
                //打开和url之间的连接
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                //请求方式
                conn.setRequestMethod("POST");
                //conn.setRequestMethod("GET");
                
                //设置通用的请求属性
                conn.setRequestProperty("accept", "*/*");
                conn.setRequestProperty("connection", "Keep-Alive");
                conn.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)");
                conn.setRequestProperty("Content-Type", "application/json;charset=utf-8");
                
                //DoOutput设置是否向httpUrlConnection输出，DoInput设置是否从httpUrlConnection读入，此外发送post请求必须设置这两个
                conn.setDoOutput(true);
                conn.setDoInput(true);
                
                /**
                 * 下面的三句代码，就是调用第三方http接口
                 */
                //获取URLConnection对象对应的输出流
                ow = new OutputStreamWriter(conn.getOutputStream(), StandardCharsets.UTF_8);
                //发送请求参数即数据
                ow.write(data);
                //flush输出流的缓冲
                ow.flush();
                
                /**
                 * 下面的代码相当于，获取调用第三方http接口后返回的结果
                 */
                //获取URLConnection对象对应的输入流
                InputStream is = conn.getInputStream();
                //构造一个字符流缓存
                br = new BufferedReader(new InputStreamReader(is));
                String str = "";
                while ((str = br.readLine()) != null){
                    result.append(str);
                }
                res = result.toString();
                //System.out.println(result);
                //关闭流
                is.close();
                //断开连接，disconnect是在底层tcp socket链接空闲时才切断，如果正在被其他线程使用就不切断。
                conn.disconnect();
            } catch (Exception e) {
                e.printStackTrace();
            }finally {
                try {
                    if (ow != null){
                        ow.close();
                    }
                    if (br != null){
                        br.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return res;
        }
        public static String getJsonStr(String url,String post_data) {
            String res = doPostOrGet(url,post_data);
            if(!Objects.equals(res, "") && res != null){
                return res;
            }
            return "";
        }
    }
%>
