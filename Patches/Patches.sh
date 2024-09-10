#!/bin/bash

#LEDE源码默认为luci1分支版本，如需安装luci2分支版本的插件，需在编译前修改feeds.conf.default切换luci至openwrt-23.05分支。
if [[ $WRT_URL == *"lede"* ]]; then
	sed -i "/#src/d" ./wrt/feeds.conf.default
	sed -i "s|\(src-git luci\).*|\1 https://github.com/coolsnowwolf/luci.git;openwrt-23.05|g" ./wrt/feeds.conf.default

	echo "$WRT_URL patch has been installed!"
fi
