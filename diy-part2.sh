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
pwd
ls $GITHUB_WORKSPACE
echo $GITHUB_WORKSPACE
# bg1 directory
cd $GITHUB_WORKSPACE/openwrt/feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/img
# Copy lastest bg1.* file
find $GITHUB_WORKSPACE/resources/img -name "bg1.*" -maxdepth 1 -type f -printf "%T@ %p\0" | sort -zn | tail -zn 1 | cut -zf2- | xargs -0 -r -I {} cp -- {} .
# Background
cd $GITHUB_WORKSPACE/openwrt/feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/background
rm README.md
cp $GITHUB_WORKSPACE/resources/background/* .
