# XRAY For Magisk

## 工作原理

以Magisk模块的形式开机自动运行XRAY。

## 对系统文件的变动

在/etc/目录下添加了一个Android用不到的resolv.conf，主要是修复xray默认使用不存在的127.0.0.1作为dns服务器导致的域名无法解析的问题

我们使用以下dns服务器来解析VMESS等服务器的域名:

```bash
# 下面两个是谷歌的公共dns
nameserver 8.8.8.8
nameserver 8.8.4.4
# 下面这个是阿里云的公共dns
nameserver 223.5.5.5
```

## 安装教程

先在Release下载zip压缩包

然后很简单，就把它当作一般的Magisk模块刷入即可。

由于本模块默认不自带配置文件（config.json）因此，你需要手动将config.json配置文件复制/data/adb/modules/redball_magisk_xray 中.

如果遇到错误，请在issue中反馈，反馈时请附上日志文件(位于/cache/xray.log)