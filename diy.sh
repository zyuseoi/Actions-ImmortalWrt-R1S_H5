#!/bin/bash

# 取消对提要源的注释
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加源
sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default

# 自定义主机名
sed -i 's#ImmortalWrt/OpenWrt#g' package/base-files/files/bin/config_generate
# 自定义后台地址
sed -i 's#192.168.1.1#192.168.2.101#g' package/base-files/files/bin/config_generate
# 自定义取消密码
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

