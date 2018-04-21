## 介绍

MeowHttpd是基于JQHttpServer开发的轻量级HTTP/HTTPS服务器，目前支持GET和POST两个协议。
为其添加了一个Post解析和来源IP解析而已：》
为简便代码，只维护没有SSL没有LocalSocket的版本
适用于局域网小服务器

Ver1.2.1.0

#### 用到的Qt库有：

* core
* network
* concurrent	
* testlib（测试用，运行不需要）
* OpenSSL（如果需要HTTPS）

理论上可以部署到任何Qt支持的平台上。

推荐使用Linux系统或者Unix系统，因为在5.7后，Qt更换了Unix相关系统的底层模型，从select更换为了poll，这样改进后，并发就脱离了1024个的限制。

使用本库，推荐 Qt5.7.0 或者更高版本，以及支持 C++11 的编译器（例如VS2013或者更高），对操作系统无要求。

本库源码均已开源在了GitHub上。

### 使用方法：

通过 MeowHttpd::TcpServerManage a( 2 ); 来创建一个服务器变量（a为变量名称）

通过该变量的setHttpAcceptedCallback方法设置接收到包后如何处理

调用listen方法来启动服务器

### JQHTTPServer

JQHTTPServer:https://github.com/188080501/JQHttpServer