#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# bg1 directory
cd $GITHUB_WORKSPACE/openwrt/feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/img
# remove  bg1.jpg file
rm bg1.jpg
# copy background file
cd $GITHUB_WORKSPACE/openwrt/feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/background
cp $GITHUB_WORKSPACE/resources/background/* .
[ -e README.md ] && rm README.md
