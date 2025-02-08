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
cp -r openwrt-passwall/* ./ && rm -rf ./openwrt-passwall
#原作者 第1版luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall ./passwall && mv passwall/luci-app-passwall ./ && rm -rf passwall
#原作者 第2版luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2 ./passwall2 && mv passwall2/luci-app-passwall2 ./ && rm -rf passwall2
########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld && mv helloworld/luci-app-ssr-plus ./ && mv helloworld/shadowsocks-libev ./
rm -rf helloworld
############################################################################################################################################################

########################################SSRP#############################################
git clone https://github.com/zouchanggan/SSRP ./SSRP && mv SSRP/update/v2raya ./ && mv SSRP/themes//luci-theme-design ./ && rm -rf SSRP
############################################################################################################################################################

########################################small#############################################
git clone https://github.com/kenzok8/small ./small 
mv small/luci-app-homeproxy ./ 
mv small/luci-app-mihomo ./ 
mv small/luci-app-mosdns ./ 
mv small/luci-app-openclash ./ 
mv small/shadowsocks-rust ./
mv small/mosdns ./ 
mv small/v2ray-geodata ./
mv small/chinadns-ng ./
mv small/v2dat ./
mv small/lua-neturl ./
mv small/redsocks2 ./
mv small/shadow-tls ./
mv small/gn ./
mv small/mihomo ./
rm -rf small
############################################################################################################################################################

########################################luci-app-lucky#############################################
git clone https://github.com/gdy666/luci-app-lucky ./luci-app-lucky && rm -rf luci-app-lucky/previews
############################################################################################################################################################

########################################luci-app-oaf#############################################
git clone https://github.com/destan19/OpenAppFilter ./luci-app-oaf
############################################################################################################################################################

########################################luci-app-autotimeset#############################################
git clone https://github.com/sirpdboy/luci-app-autotimeset ./luci-app-autotimeset
############################################################################################################################################################

#################################################主题########################################################################################################
########################################luci-app-argon#############################################
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git ./luci-app-argon-config
########################################luci-theme-design#############################################
git clone https://github.com/0x676e67/luci-theme-design.git ./luci-theme-design
git clone https://github.com/0x676e67/luci-app-design-config.git ./luci-app-design-config
####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
