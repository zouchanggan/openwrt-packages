#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
########################################luci-app-passwall#############################################
git clone https://github.com/xiaorouji/openwrt-passwall-packages ./openwrt-passwall
rm -rf ./openwrt-passwall/shadowsocks-rust
rm -rf ./openwrt-passwall/v2ray-geodata
rm -rf ./openwrt-passwall/chinadns-ng
rm -rf ./openwrt-passwall/gn
#原作者 第1版luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall ./passwall && mv passwall/luci-app-passwall ./ && rm -rf passwall
#原作者 第2版luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2 ./passwall2 && mv passwall2/luci-app-passwall2 ./ && rm -rf passwall2
########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld ./helloworld && mv helloworld/luci-app-ssr-plus ./ && rm -rf helloworld
############################################################################################################################################################

########################################luci-app-lucky#############################################
git clone https://github.com/gdy666/luci-app-lucky ./luci-app-lucky && rm -rf luci-app-lucky/previews
############################################################################################################################################################

#################################################主题########################################################################################################
########################################luci-app-argon#############################################
#原作者
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config
####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
