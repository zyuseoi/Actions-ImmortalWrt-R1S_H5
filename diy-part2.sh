#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-ImmortalWrt-R1S_H5
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 自定义后台地址
sed -i 's#192.168.1.1#192.168.2.101#g' package/base-files/files/bin/config_generate
# 自定义取消密码
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

