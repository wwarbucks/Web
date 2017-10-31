Web  (java  EE)  

 B/S  程序完全部署在服务器！

 B/S 和   C/S 区别
 
B: Browser  浏览器
C：Client   客户端
S：Server   服务器

 01. C/S 必须下载各种客户端   
     B/S 只需要有浏览器
 
 02. C/S 性能的高低，取决于客户端的配置 
     B/S 性能的高低，取决于服务器的配置   
 
 03. C/S 如果有版本更新必须进行，否则无法使用新功能
     B/S 服务器会自动更新，我们浏览器不需要   
 
 04. C/S  对操作系统有限制
     B/S  与操作系统关系降到了最低
     
URI 和  URL

 例子：
     两个朋友在打电话，A问B 你在哪？    URI 
     B回答说北京路！
     A就去自己城市中的北京路能找到B吗？ A和B不在一个城市！
   
  如果B说是XX市xx区的   北京路！  这样A能不能找到B！！ 可以！  URL
       
 URI  统一资源标识符
 
 URL  统一资源定位符    
  
  
 静态页面和静态页面的区别
   
  01.静态页面 不会与我们服务器进行交互
  02.动态页面  会根据用户不同的请求，响应一个不同页面 
 
 常用的web服务器   
 
 Tomcat     服务器    
 JBoss      服务器   
 WebLogic   服务器 
 
 
     
 Tomcat服务器 文件介绍         
     
01.bin  存放服务器启动或者停止的各种脚本文件 windows(.bat)  linux(.sh)
02.conf 存放服务器的各种配置文件
        001.context.xml 
        002.server.xml  设置端口号
        003.web.xml     session失效，欢迎界面  mime         
03.lib  存放服务器启动时需要的jar包
04.logs 存放服务器运行时产生的日志文件
05.temp 存放服务器运行时需要的临时文件    
06.webapps  我们的web项目部署的地方
07.work  当用户访问我们的项目是在此文件夹中会生成对应的文件     
     
     
     
在我们的web项目中 比我们的java项目多了两个文件
1.java EE :web项目需要的jar
2.webRoot
    01.META-INF :web项目需要的元信息
    02.WEB-INF  :安全路径，用户无法访问
        001.lib :外部jar存放位置，不需要我们手动的build path
        002.web.xml  :项目配置文件 和 服务器中conf/web.xml
                   服务器启动的时候，会先去加载 服务器中conf/web.xml
                  在conf/context.xml文件中有下列语句！
                  监听我们当前项目的web.xml
         <WatchedResource>WEB-INF/web.xml</WatchedResource>
                 如果两个文件中都配置了相同的信息，默认取值是我们项目中的web.xml！
    03.index.jsp 页面 ===》动态页面
    
    
 http://localhost  :  8080    /01WebBase/index.jsp    
  协议      主机ip地址         端口号         项目名称       资源路径
    
     
     
     
     
     
     
     
     