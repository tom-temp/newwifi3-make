#!/usr/bin/env bash
# # # # # # # # # # #
#   自定义脚本
#     花妆男
# # # # # # # # # # #

######################################################################
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到 .config 文件
######################################################################
# $WORK_DIR/trunk 执行在这个目录下
set -u

sed -i "/CONFIG_FIRMWARE_INCLUDE_TTYD/d" .config
sed -i "/CONFIG_FIRMWARE_INCLUDE_NANO/d" .config

echo "CONFIG_FIRMWARE_INCLUDE_TTYD=n" >>.config
echo "CONFIG_FIRMWARE_INCLUDE_NANO=n" >>.config

# 科学
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >>.config # SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >>.config    # SS server
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >>.config      # simple-obfs混淆插件,SS 开了才可以打开
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >>.config  # 集成v2ray执行文件（3.8M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=n" >>.config # 集成trojan执行文件(1.1M左右)，如果不集成，会从网上下载下来执行，不影响正常使用

#  代理
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >>.config    # SOCKS proxy
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n" >>.config   # TUNSAFE
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >>.config    # srelay
echo "CONFIG_FIRMWARE_INCLUDE_IPT2SOCKS=n" >>.config # IPT2
echo "CONFIG_FIRMWARE_INCLUDE_KUMASOCKS=n" >>.config # KUMA

# 文件
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=n" >>.config    # 在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=n" >>.config # 集成 caddu执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用

# 广告
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >>.config      # adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=n" >>.config   # KP 广告过滤
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=n" >>.config # ADGUARD 广告拦截

# DNS 有关
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=n" >>.config # DNS-FORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=y" >>.config     # smartdns
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNSBIN=y" >>.config  # smartdns二进制文件

#网易云解锁
echo "CONFIG_FIRMWARE_INCLUDE_WYY=n" >>.config
#网易云解锁GO版本执行文件（4M多）注意固件超大小
echo "CONFIG_FIRMWARE_INCLUDE_WYYBIN=n" >>.config

# 穿透
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=n" >>.config    # 内网穿透FRPC
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=n" >>.config    # 内网穿透FRPS
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >>.config # 阿里DDNS
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=n" >>.config   # zerotier ~1.3M

# 认证
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=y" >>.config  # MENTOHUST 锐捷认证
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=y" >>.config # SCUT校园网客户端

echo "CONFIG_FIRMWARE_INCLUDE_QOS=y" >>.config         # QOS设置
