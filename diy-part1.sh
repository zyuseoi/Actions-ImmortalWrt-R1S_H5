#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku 
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-ImmortalWrt-R1S_H5
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 取消对提要源的注释
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加源
sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default

