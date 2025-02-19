概述
=========================

铜锁/Tongsuo（原BabaSSL）是一个提供现代密码学算法和安全通信协议的开源基础密码库，为存储、网络、密钥管理、隐私计算等诸多业务场景提供底层的密码学基础能力，实现数据在传输、使用、存储等过程中的私密性、完整性和可认证性，为数据生命周期中的隐私和安全提供保护能力。

特性
=========================

铜锁提供如下主要的功能特性：

  * 技术合规能力
    * 铜锁正在取得国家密码管理局商用密码检测中心授予的”软件密码模块安全一级“资质
  * 密码学算法
    * 中国商用密码算法：SM2、SM3、SM4、[祖冲之](https://www.yuque.com/tsdoc/ts/copzp3)等
    * 国际主流算法：ECDSA、RSA、AES、SHA等
    * 同态加密算法：[EC-ElGamal](https://www.yuque.com/tsdoc/misc/ec-elgamal)、[Paillier](https://www.yuque.com/tsdoc/misc/rdibad)等
    * 后量子密码学*：LAC、NTRU、Saber、Dilithium等
  * 安全通信协议
    * 支持GB/T 38636-2020 TLCP标准，即[双证书国密](https://www.yuque.com/tsdoc/ts/hedgqf)通信协议
    * 支持[RFC 8998](https://datatracker.ietf.org/doc/html/rfc8998)，即TLS 1.3 +[国密单证书](https://www.yuque.com/tsdoc/ts/grur3x)
    * 支持[QUIC](https://datatracker.ietf.org/doc/html/rfc9000) API
    * 支持[Delegated Credentials](https://www.yuque.com/tsdoc/ts/leubbg)功能，基于[draft-ietf-tls-subcerts-10](https://www.ietf.org/archive/id/draft-ietf-tls-subcerts-10.txt)
    * 支持[TLS证书压缩](https://www.yuque.com/tsdoc/ts/df5pyi)
    * 支持紧凑TLS协议*

注：*号表示正在支持中

文档
=========================

铜锁的相关文档组织在 [铜锁文档网站](https://tongsuo.rtfd.io) 上。

交流群
=========================

铜锁使用钉钉群进行用户答疑和交流，欢迎扫码入群（也可直接搜索群号：44810299）：
<img src=
"https://github.com/Tongsuo-Project/Tongsuo/blob/master/tongsuo-dingtalk.jpg"
width=50% height=50% />

报告安全缺陷
=========================

铜锁目前使用蚂蚁集团的威胁搜集系统，请访问如下地址进行安全缺陷的报告：

 * [https://security.alipay.com/](https://security.alipay.com/)

注意：对于非安全相关的Bug，请使用GitHub的Issues进行提交。
