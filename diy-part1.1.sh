#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git lean https://github.com/coolsnowwolf/lede/tree/master/package' feeds.conf.default
cd package
git clone -b packages-19.07 https://github.com/liuran001/openwrt-packages
git clone https://github.com/destan19/OpenAppFilter.git
git clone https://github.com/zzsj0928/luci-app-serverchand
git clone https://github.com/siropboy/luci-theme-btmod 
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean
