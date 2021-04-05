#!/bin/bash

# 取消对提要源的注释
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加源
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 添加软件包
cd openwrt
git clone https://github.com/liuran001/openwrt-packages

# 自定义后台地址
sed -i 's#192.168.1.1#192.168.2.101#g' package/base-files/files/bin/config_generate
# 自定义取消密码
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 自定义配置文件
rm -f ./.config*
touch ./.config

